---
title: Refining models - a leader/follower system
sort_info: 600
---

The result of this tutorial can be found in bundles/tutorials_scripts if you
followed the instructions at the bottom of [this page](../tutorials/index.html)
{: .note}

Abstract
--------
In this tutorial, you will learn one of the most important feature for
model-based systems: how generic models can be refined. In object-oriented
programming, this is more or less equivalent to subclassing.

This tutorial will guide through the process of:

 * changing the RockControl composition so that it can be adapted to the
   requirements of more complex motion control generators
 * how to transform a composition into a service, i.e. how to add ports to a
   composition

The leader-follower system
--------------------------
This tutorial will deploy a network in which:

 * one rock, controlled by the random motion generator, is a leader
 * another rock is following the first rock

The motion generator component for the follower is tut_follower::Task, included
in [Rock's rock.tutorial package set](../tutorials/index.html#installing). It
requires an additional sensor component, tut_sensor::Task, that 'senses' the
bearing and distance to the target.

The goal will be to reuse the same base model 'Tutorials::RockControl' for both
deployments. The idea behind reusing in this case is:

 * you might have a diagnostics routine that is able to monitor the movement of
   a rock regardless of what controls it. Attaching that diagnostics routine to
   the RockControl composition will be sufficient, as it will apply to all
   refinements of this model.
 * it simplifies the usage of the compositions, as one only has to remember the
   name of a composition (Tutorials::RockControl) and give an intent ('run the composition
   with X or Y') instead of having to remember N composition names.

Reusing Models
--------------
The first thing that we will learn in this page is how to reuse common models.
This is critical: one does not want to recreate every single data service or
composition each time a new robot needs to be integrated. Moreover, it gives
functional definition of _generic_ complex behaviours, i.e. "how to run this
particular SLAM on a four-wheeled skid-steered robot" can very well become a
(reusable / refinable) definition.

One bundle on which every other bundle depends by default is the Rock bundle.
For simplicity reasons, we removed this dependency [in the starting
tutorial](100_moving_to_bundles.html). Let's undo this now, and check that we
indeed are using the rock bundle using bundle-info:

~~~
# mv config/bundle-yml.bak config/bundle.yml
# bundle-info
Bundles[INFO]: Active bundles: tutorial, rock
~~~

This is going to break the joystick ! The reason is contained in the
explanations [on devices](../system/devices.html).
{: .warning}

For our purposes here, we will want to have a data service that generates a pose
(in particular, the poses of both our leader and follower). Let's have a look at
what is available. Open the syskit model browser

~~~
# syskit browse
~~~

And look into the 'Base' entry. You will find there a Base::PoseSrv service that
fits:

[![Sykit browse](600_syskit_browse_pose_service_thumb.png)](600_syskit_browse_pose_service.png)

At the top of the service's description, note the

~~~ ruby
require 'rock/models/blueprints/pose'
~~~

This is the line that needs to be used to make this particular data service
available (when required).

Specializations
---------------
In Syskit, refinements of a composition model can be
created with _specializations_. Specializations can be seen as conditional
application of changes on compositions.

For instance, the following specialization specifies that when using
Tutorials::RockControl, in cases where the command generator is a TutFollower::Task,
one child and two connections must be added to the composition. Copy
scripts/03_defines.rb to scripts/04_leader_follower.rb, declare the TutFollower::Task to 
provide the CommandGeneratorSrv service and add the code for the 
specialization after the declaration of the Tutorials::RockControl composition.

~~~ ruby
# Load common data services from the Rock bundle
require 'rock/models/blueprints/pose'
using_task_library 'tut_follower'
using_task_library 'tut_sensor'
TutFollower::Task.provides Tutorials::CommandGeneratorSrv, :as => 'cmd'
...

# This is the syntax to add specializations to existing composition models (i.e.
# after the class ... end definition)
Tutorials::RockControl.specialize Tutorials::RockControl.cmd_child => TutFollower::Task do
  # It will need some other task/composition to provide the target pose
  add Base::PoseSrv, :as => "target_pose"
  # And the sensor processing to compute the bearing/distance to target
  add TutSensor::Task, :as => 'sensor'

  # We must specify the port on the sensor child, since
  # there are two matches
  #
  # The rock child is already defined in the 'base' Tutorials::RockControl
  # composition
  target_pose_child.connect_to sensor_child.target_frame_port
  rock_child.connect_to sensor_child.local_frame_port
  sensor_child.connect_to cmd_child
end
~~~

We have to make the TutFollower and the TutSensor tasks' oroGen projects available, and thus added the following lines to the includes at the top of the file:

~~~ ruby
using_task_library 'tut_follower'
using_task_library 'tut_sensor'
~~~

Once the specialization hase been added, it allows you to use the same composition for the random controller 
'TutBrownian::Task' and the follower controller 'TutFollower::Task', without
having to care about the details (or at least, not yet)

~~~ ruby
# Selects the "standard" composition
define 'random', Tutorials::RockControl.use(TutBrownian::Task)
# Selects the "specialized" composition
define 'follower', Tutorials::RockControl.use(TutFollower::Task)
~~~

However, for the second one to be valid, we need a provider for the
Base::PoseSrv service: our 'leader' composition- which is a Tutorials::RockControl
composition itself. For that to be possible, we need the 'leader' composition
to provide the Base::PoseSrv service.

We therefore need:

 - the composition to have an output port of type base/samples/RigidBodyState
 - a declaration of the fact that the composition does provide the data service

Adding ports to compositions
----------------------------
Compositions cannot have their own ports. They can only _export_
ports from their children. In our case, the rock's pose is provided by the
RockTutorialControl task's pose_samples port. We will now change the original composition
model so that it exports this port and we declare the composition as
providing a Base::PoseSrv

~~~ ruby
module Tutorials
  class RockControl < Syskit::Composition
    ...
    export rock_child.pose_samples_port
    provides Base::PoseSrv, :as => 'pose'
  end
end
~~~

It is now possible to define our leader-follower system:

~~~ ruby
define 'leader',
  Tutorials::RockControl.use(TutBrownian::Task)
define 'follower',
  Tutorials::RockControl.use(TutFollower::Task, leader_def)
~~~

Try out the current definition:

~~~
# syskit instanciate scripts/04_leader_follower.rb follower_def!
= cannot deploy the following tasks
TutSensor::Task:0x4a92050{conf => [default]}[]
  child sensor of Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)]:0x5bfa298{conf => [default]}[]
TutFollower::Task:0x5c05030{conf => [default]}[]
  child cmd of Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)]:0x5bfa298{conf => [default]}[]
RockTutorial::RockTutorialControl:0x5d36d28{conf => [default]}[]
  child rock of Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)]:0x5bfa298{conf => [default]}[]
TutSensor::Task:0x4a92050{conf => [default]}[]: no deployments available
TutFollower::Task:0x5c05030{conf => [default]}[]: no deployments available
RockTutorial::RockTutorialControl:0x5d36d28{conf => [default]}[]: some deployments exist, but they are already used in this network
  task rock_tutorial from deployment Deployments::RockTutorial on localhost
    already used by RockTutorial::RockTutorialControl:0x5df4f08{orocos_name => rock_tutorial, conf => [default]}[]: child rock of Tutorials::RockControl:0x5c8f0a0{conf => [default]}[]
~~~

Ah ... yes, we need some extra deployments. The tut_deployment project contains all we
need so let's simply replace all the use_deployment lines:

~~~ ruby
Syskit.conf.use_deployment 'joystick'
Syskit.conf.use_deployment 'rock_tutorial'
Syskit.conf.use_deployment 'brownian'
~~~

by

~~~ ruby
Syskit.conf.use_deployments_from 'tut_deployment'
~~~

and re-run syskit instanciate.

~~~
cannot deploy the following tasks
RockTutorial::RockTutorialControl:0x50dcb90{conf => [default]}[]
  child rock of Tutorials::RockControl:0x3c00028{conf => [default]}[]
RockTutorial::RockTutorialControl:0x515dad8{conf => [default]}[]
  child rock of Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)]:0x50128e0{conf => [default]}[]
RockTutorial::RockTutorialControl:0x50dcb90{conf => [default]}[]: multiple possible deployments, choose one with #use_deployments
  task rock_tutorial from deployment rock_tutorial defined in tut_deployment on localhost
  task target from deployment target defined in tut_deployment on localhost
  task follower from deployment follower defined in tut_deployment on localhost
RockTutorial::RockTutorialControl:0x515dad8{conf => [default]}[]: multiple possible deployments, choose one with #use_deployments
  task rock_tutorial from deployment rock_tutorial defined in tut_deployment on localhost
  task target from deployment target defined in tut_deployment on localhost
  task follower from deployment follower defined in tut_deployment on localhost
~~~

This time, the issue is different: there are more than one deployment available
for a particular task, and we therefore need to tell syskit which one should be
used. This is done by providing a regular expression that matches the
deployment names that are _preferred_ for a particular subsystem. Let's do this:

~~~ ruby
define 'joystick',    Tutorials::RockControl.
    use(Controldev::JoystickTask)
define 'random',      Tutorials::RockControl.
    use(TutBrownian::Task)
define 'random_slow', Tutorials::RockControl.
    use(TutBrownian::Task.with_conf('default', 'slow'))
define 'random_slow2', Tutorials::RockControl.
    use(TutBrownian::Task).with_conf('slow')
define 'leader', Tutorials::RockControl.
    use(TutBrownian::Task).
    use_deployments(/target/)
define 'follower', Tutorials::RockControl.
    use(TutFollower::Task, leader_def).
    use_deployments(/follower/)
~~~



Finally you can run and display the rocks using rock-display:

~~~
# syskit run scripts/04_leader_follower.rb follower_def!
~~~

Summary
-------
In this tutorial, you:

 * learned how to use specializations to refine the compositon models
 * learned how to "create" ports on a composition

What's left is to describe how all the bits and pieces are organized within a
bundle folder structure. This is the subject of the [next and
last](700_file_structure.html) tutorial.

