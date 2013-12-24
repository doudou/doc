---
title: Data Monitors
sort_info: 1200
---

<div class="note" markdown="1">
The result of this tutorial can be found in bundles/tutorials if you
followed the instructions at the bottom of [this page](../tutorials/index.html).
While the tip of the master branch contains the accumulated result of all the
tutorials, you can get the specific result of this one by checking out the
data_monitors tag with
~~~
git checkout data_monitors
~~~
</div>

To build the state machine [in the previous
tutorial](1100_action_state_machines.html), we manually created _data monitoring
compositions_, whose job was to listen to certain data streams in the executed
network in order to find out when the state machine should transition.

If you look at the implementation of these two monitors, they are basically the
same:

 - read a stream
 - emit an event when a condition is met

This tutorial will show you how to define such monitors in a much more compact
and reusable way, and how these 'new' monitors differ from the manually created
ones. We will then see in the next tutorial how lists of such monitors can be
defined in order to design fault detection and response tables

Defining Data Monitors
----------------------

Data monitors can be used in multiple places. We will see here how to integrate
them in an action state machine, in order to understand what they do. The
[reference documentation](../system/data_monitoring_tables.html) lists all the
ways you can define tables and activate / deactivate them.

In action state machines, data monitors can be attached to states. One simply
calls #monitor on the state. Let's define a new state machine using this
feature:

~~~ ruby
describe('random motion within a delimited area').
  optional_arg('fence_size',
    'size in meters of the fence around the origin',
    3).
  optional_arg('threshold',
    'size in meters we need to be from the origin to consider that we have reached it',
    1)
action_state_machine 'fenced_random_move_with_monitors' do
  # The 'move randomly' state
  random = state random_def
  # Monitor that verifies that we don't go outside the fence. Emit the
  # cross_fenced event on the state machine's task when it happens
  #
  # The hash at the end passes options from the state machine
  # to the monitor. They are available as local variables
  # inside
  random.monitor(
      'fence', # monitor name
      random.rock_child.pose_samples_port, # data sources
      :fence_size => fence_size). # arguments
    trigger_on do |pose|
      pos = pose.position
      pos.x.abs > fence_size || pos.y.abs > fence_size
    end.
    # emit this event when the predicate is true
    emit crossed_fence_event

  # The move-to-origin state
  origin = state to_origin_def.use(rock1_dev)
  # Monitor that waits for us to be close enough to the center
  origin.monitor(
      'reached_center',
      origin.rock_child.pose_samples_port,
      :threshold => threshold).
    trigger_on do |pose|
      pos = pose.position
      pos.x.abs < threshold && pos.y.abs < threshold
    end.
    # emit this event when the predicate is true
    emit origin.success_event

  # We start by moving randomly
  start random
  # We transition each time the rock passes the fence
  transition random, crossed_fence_event, origin
  # And transition back when we reach the origin
  transition origin, origin.success_event, random
end
~~~

The only bit missing is the definition of the crossed_fence event. For the
origin monitor, we reuse the success event of the origin state, but for the
fence we have to define a new one.

We therefore have to create a new Roby task model that is going to be
representing the action state machine, and add this event to it. When one does
not create such a model explictly, Roby creates a new one that is named after
the state machine's name, i.e. in this case FencedRandomMoveWithMonitors.

Let's now define one explicitly and then tell Roby
that it should be used as the root model for the state machine.

in models/tasks/fenced_random_move.rb

~~~ ruby
module Tutorials
  class FencedRandomMove < Roby::Task
    terminates # Always add this unless you know what you are doing
    event :crossed_fence
  end
end
~~~

and in the action file:

~~~ ruby
describe('random motion within a delimited area').
  returns(Tutorials::FencedRandomMove).
  optional_arg('fence_size',
    'size in meters of the fence around the origin',
    3).
  optional_arg('threshold',
    'size in meters we need to be from the origin to consider that we have reached it',
    1)
~~~

The resulting behaviour can be started and tested with

~~~
syskit run -rtut-transformer fenced_random_move_with_monitors!
~~~

Summary
-------

The data monitors as used in the state machines are compact ways to make the
state machines transition based on information in the data. They allow to easily
transform data triggers into Roby events.

The [next tutorial](1300_fault_response_tables.html) will show you how they can
also be used in conjunction with fault response tables to define fault detection
/ fault response systems
