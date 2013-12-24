---
title: Action State Machines
sort_info: 1100
---

<div class="note" markdown="1">
The result of this tutorial can be found in bundles/tutorials if you
followed the instructions at the bottom of [this page](../tutorials/index.html).
While the tip of the master branch contains the accumulated result of all the
tutorials, you can get the specific result of this one by checking out the
action_state_machine tag with
~~~
git checkout action_state_machine
~~~
</div>

So far, we have seen how to define and compose network of components. The rest
of the tutorials will guide through the process of _coordinating_ them, i.e. how
to make the system switch between them when some conditions are reached, thus
creating temporal combinations of behaviours.

This tutorial will guide you through:

 * how to combine the network configurations created in profiles into more
   complex behaviours by using state machines
 * how these state machines can then be combined with each other

The action state machines presented in this tutorial are not specific to syskit,
but are available to any Roby action. You may want to also read the [Roby
documentation]({% api tools/roby %}) for more information about them. However, Syskit
does extend these state machines to give some syskit-specific functionality.

Defining State Machines
-----------------------
In the previous tutorials, we have mainly built two behaviours for our rocks:

 * one random movement behaviour
 * one target-following behaviour

Let's now assume that we want a rock to move randomly, but stay confined in a
certain area around the origin. This can be achieved with what we currently
have:

 * if within the area, move randomly
 * if on the border, go back to origin

The 'go back to origin' behaviour being obviously 'follow the origin frame'.
Let's define it first generically:

~~~ ruby
define 'to_origin', Tutorials::RockFollower.
  use(TutFollower::Task, TutSensor::TransformerTask).
  use_frames('target' => 'world', 'world' => 'world')
~~~

Such a switch between behaviours can classically be represented by a state
machine. This is one mean to express such combination of behaviours in Syskit as
well. We will see how to write such a state machine now.

Action state machines are defined on action interfaces. We have already seen
those as the place for the use_profile statements. Let's now add our state
machine to it (in our case models/actions/tut-transformer/main.rb).

~~~ ruby
class Main < Actions::Interface
  use_profile Tutorials::RockWithTransformer

  describe 'move randomly as long as in a 10 meter square \
    around origin, move back to origin when passing the border'
  action_state_machine 'fenced_random_move' do
    # We need to call #state to transform an action / definition
    # into a proper state
    random = state random_def
    origin = state to_origin_def.use(rock1_dev)
  
    # We start by moving randomly
    start random
    # We transition each time the rock passes the fence
    transition ???, origin
    # And transition back when we reach the origin
    transition ???, random
  end
end
~~~

Notice above that there are two "???" placeholders in the two transition
statements. We have to specify transitions, but how ?

Since we are under Roby, the transitions are obviously going to be caused by
Roby events. However, there is still the issue of defining them.

One constraint is that we should not modify the behaviours to be modified to
account for this very particular combination of them (we want them to be
reusable, therefore free of this very specific use case), we'll define two
monitoring networks. One will check whether the rock passes the fence and the
other whether it is within its target pose.

Let's create the fence monitor first in models/blueprints/fence_monitor.rb

~~~ ruby
require 'rock/models/blueprints/pose'
module Tutorials
  # Given a position provider, checks whether this position crosses a specified
  # boundary around the origin
  class FenceMonitor < Syskit::Composition
    # The size of the allowed square
    argument :fence_size, :default => 10
    # Emitted when the tracked pose passes the required fence towards the
    # outside
    event :passed_fence_outwards

    # The position provider that we will be monitoring
    add Base::PositionSrv, :as => 'position'

    # Tests if the given position is within the fence
    #
    # @param [Types::Base::Position] the position
    # @return [Boolean]
    def in_fence?(p)
      p.x.abs < fence_size && p.y.abs < fence_size
    end

    # This script context allows us to have a proper access to ports in
    # children. A raw Roby poll block would be possible, but would require that
    # we know the type of the final position component.
    script do
      # Get a reader object that allows us to read the position
      position_r = position_child.position_samples_port.reader
      # The block given to #poll is executed once per Roby execution cycle
      # (usually once per 100ms)
      poll do
        # If we have a position
        if p = position_r.read_new
          # p is a RigidBodyState, we only need the position part of it
          p = p.position
          # Initialize @last_p if it is not initialized yet
          @last_p ||= p
          # If we cross the border, emit the event
          if in_fence?(@last_p) && !in_fence?(p)
            passed_fence_outwards_event.emit
          end
          @last_p = p
        end
      end
    end
  end
end
~~~

Then, the target reached monitor in models/blueprints/position_within_threshold_monitor.rb

~~~ ruby
require 'rock/models/blueprints/pose'
module Tutorials
  # Composition that checks whether a position is within a certain threshold
  # from a target
  class PositionWithinThresholdMonitor < Syskit::Composition
    # The target pose, as Types::Base::Position
    argument :target
    # The target threshold
    argument :threshold, :default => 1
    # Emitted when the tracked pose is within threshold of the target
    event :reached

    # The position provider we are monitoring
    add Base::PositionSrv, :as => 'position'

    # Tests if the given position is within threshold of the target
    #
    # @param [Types::Base::Position] the position
    # @return [Boolean]
    def in_threshold?(p)
      (p - target).norm < threshold
    end

    # A script context. This allows us to have a proper access to ports in
    # children. A raw Roby poll block would be possible, but would require that
    # we know the type of the final position component.
    script do
      # Get a data reader on the position provider
      position_r = position_child.position_samples_port.reader
      # The block given to #poll is executed once per Roby execution cycle
      # (usually once per 100ms)
      poll do
        # Emit if we have a position and it is within threshold
        if (p = position_r.read_new) && in_threshold?(p.position)
          reached_event.emit
        end
      end
    end
  end
end
~~~

Let's now integrate the monitors in our state machine:

~~~ ruby
describe('move randomly as long as in a 10 meter square around origin, move back
to origin when passing the border')
action_state_machine 'fenced_random_move' do
  # We need to call #state to transform an action / definition into a proper
  # state
  random = state random_def
  # 'task' is used for tasks that are not used as states
  fence_monitor = task Tutorials::FenceMonitor.use(rock1_dev)
  # We need this monitor only in the random state
  random.depends_on fence_monitor

  origin = state to_origin_def.use(rock1_dev)
  # 'task' is used for tasks that are not used as states
  target_monitor = task Tutorials::PositionWithinThresholdMonitor.
    use(rock1_dev).with_arguments('target' => Types::Base::Position.new(0, 0, 0))
  # We need this monitor only in the origin state
  origin.depends_on target_monitor

  # We start by moving randomly
  start random
  # We transition each time the rock passes the fence
  transition random, fence_monitor.passed_fence_outwards_event, origin
  # And transition back when we reach the origin
  transition origin, target_monitor.reached_event, random
end
~~~

Runtime Behaviour
-----------------

You can now start the state machine with

~~~
syskit run -rtut-transformer fenced_random_move!
~~~

and visualize the resulting behaviour using roby-display (for the syskit part)
and rock-display (for the components)

Combining State Machines
------------------------
When one creates a state machine, it becomes an action. It can therefore be used
in another state machine (and so on, and so forth), as for instance:

~~~ ruby
describe "combining state machines"
action_state_machine 'main' do
  movement = state fenced_random_move
  # Use a hypothetical go_and_recharge action which can be any Roby action
  # (syskit network, state machine, ...)
  recharge = state go_and_recharge
  # And monitor the battery using a syskit definition
  battery_monitor = state battery_monitor_def

  start movement
  movement.depends_on battery_monitor
  transition movement, battery_monitor.battery_low_event, recharge
  transition recharge, recharge.success_event, movement
end
~~~

Summary
-------

This tutorial has shown you how:

 - combine the networks defined in the syskit profiles as states in a state
   machine, thus allowing to combine them in a temporal way
 - define separate monitoring networks, and use them to trigger the transition
 - how state machines can then become part of bigger state machines

These action state machines are great to define the nominal operations of a
robot, i.e. its mission (or parts of it). However, they would become very
cumbersome to handle errors, or thing that can happen from any state. One cannot
add transitions from any state to the error handlers.

The next tutorial will deal with a refinement of the monitors we have manually
defined here, introducing data monitors that allow to generate errors when
patterns are found in the data. Then, we will see how to handle these errors in
a graceful way.

