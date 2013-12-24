---
title: Fault Response Tables
sort_info: 1300
---

<div class="note" markdown="1">
The result of this tutorial can be found in bundles/tutorials if you
followed the instructions at the bottom of [this page](../tutorials/index.html).
While the tip of the master branch contains the accumulated result of all the
tutorials, you can get the specific result of this one by checking out the
fault_response_tables tag with
~~~
git checkout fault_response_tables
~~~
</div>

In the previous two tutorials, we first saw how to combine Syskit subsystem
definitions into [state machines](1100_action_state_machines.html) to build more
complex, temporally coordinated, behaviours. Then, we saw how one [can monitor
data streams](1200_data_monitors.html) to trigger the state machine transitions.

In both these tutorials, the event that was causing the behaviour switch was
nominal: it was expected that, at a certain point in time, the movement
behaviour would go over the fence and that we should be able to bring it back.

However, for quite a lot of events, it can become pretty cumbersome to think
this way. Indeed, what if we wanted to make sure that __any__ behaviour is
fenced ? We could of course define a 'fenced' operator that would take any
action and transform it into a 'fenced' action, but what if we also want to
watch for battery, for localization quality, for water ingress when underwater,
... It simply does not scale

For such usage, Syskit offers a different mechanism: the __fault response
table__. Fault response tables define reactions to faults, with the possibility
-- at the end of the reaction -- to restart whatever action was being performed.

This tutorial will guide you through the process of defining such faults using
data monitors, defining the corresponding reaction, and use them in state
machines and/or action interfaces.

Data Monitoring Tables
----------------------
The first step, when you want to use data monitors in combination with fault
response tables, is to create a data monitoring table. This data monitoring
table is a separate list of named monitors that the fault response table will be
able to use as fault sources. There are other types of fault generators that the
fault response can use, but we won't detail them in this tutorial (look instead
[in the documentation](../system/fault_response_tables.html) ).

Let's create the fencing data monitoring table. Edit
models/actions/fence_monitor.rb and
add

~~~ ruby
module Tutorials
  # Define a list of data monitors
  class FenceMonitors < Syskit::Coordination::DataMonitoringTable
    # This table can be applied only on tasks of this type
    root Base::PositionSrv
    # It requires one argument
    argument :fence_size, :default => 5

    # This is almost a copy/paste of the previous monitor. The
    # differences are that arguments do not need to be provided
    # anymore (they are listed at the table level) and we
    # raise_exception instead of emit. The port is also
    # referred to directly as we attach to the PositionSrv directly
    monitor('fence_crossed', position_samples_port).
      trigger_on do |pose|
        pose.position.x.abs > fence_size ||
            pose.position.y.abs > fence_size
      end.
      raise_exception # We want this monitor to generate a fault
  end
end
~~~

Fault Response Tables
---------------------
So, we now have a data monitoring table that is able to check that a given
position is within the fence. We now need to define what to do when it happens.

This is done with a fault response table. Fault response tables are action
interfaces, so that you can define the response actions.

Let's start a new one in models/actions/fence.rb

~~~ ruby
require 'models/actions/fence_monitor'
module Tutorials
  # Define a fault response table to move back to origin when the
  # system crosses the virtual fence
  class Fence < Roby::Coordination::FaultResponseTable
    # Define the threshold for reached-origin
    argument :origin_reached_threshold, :default => 10
    # Define the fence size. Since it has a default value
    # in the FenceMonitors table, we don't have to pass it
    argument :fence_size, :default => 5
    # Import the definitions from the profile
    use_profile Tutorials::RocksWithTransformer
    # Declare our data monitors. The table's fence_size
    # argument is set from the fence_size argument of this
    # table
    use_data_monitoring_table FenceMonitors,
      :fence_size => fence_size

    # While not strictly necessary, it is a good policy to create
    # separate actions for the response steps. The fault response
    # handlers themselves should really be small
    describe('move back towards origin').
      required_arg('threshold', 'threshold in meters')
    action_script 'move_to_origin' do
      # Define our go-to-origin task in the same way than in
      # the action state machine. Simply replace #state with #task
      origin = task to_origin_def.use(rock1_dev)
      origin.monitor(
          'done',
          origin.rock_child.pose_samples_port,
          :threshold => threshold).
        trigger_on do |pose|
          pose.position.x.abs < threshold &&
            pose.position.y.abs < threshold
        end.
        emit origin.success_event

      # Start it and wait for it to end
      execute origin
      # We're done
      emit success_event
    end

    # Fault handler for faults generated by
    # the fence_crossed monitor.
    on_fault fence_crossed_monitor do
      # Go back to the origin (finally !)
      execute task(move_to_origin(:threshold => origin_reached_threshold))
      # And restart whatever we were doing
      try_again
    end
  end
end
~~~

Activating Tables
-----------------
Now that our tables are defined, we need to activate them, i.e. tell Syskit that
they need to be used in some context. This can be done globally (always active),
but can also be done in the context of some actions. We'll go for this solution
here

Let's create a new fenced random movement action using fault tables

~~~ ruby
describe('random motion within a delimited area').
  optional_arg('fence_size', 'size in meters of the fence around the origin', 3).
  optional_arg('threshold', 'size in meters we need to be from the origin to consider that we have reached it', 1)
action_state_machine 'fenced_random_move_with_faults' do
  use_fault_response_table Tutorials::Fence,
    :origin_reached_threshold => threshold,
    :fence_size => fence_size

  # And move randomly ... "forever"
  random = state random_def
  start random
end
~~~

and not forget to add the

~~~ ruby
require 'models/actions/fence'
~~~

at the top of the file

Summary
-------
That's the last tutorial ... for now.

After all these, you should be able to start integrating pretty complex systems.
Let's make a summary of all you have seen here:

 - how to model composition of components, and then how to use dependency
   injection to adapt these generic compositions for a particular situation
   and/or system
 - how to organize the various models in the file structure
 - the place of devices
 - how to use Syskit to configure components that use Rock's transformer, as
   well as make sure that the networks are consistent from a geometric frame
   point of view
 - and, finally, how to sequence behaviours in a temporal manner

