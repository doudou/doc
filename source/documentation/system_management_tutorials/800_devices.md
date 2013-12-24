---
title: Devices
sort_info: 800
---

<div class="note" markdown="1">
The result of this tutorial can be found in bundles/tutorials if you
followed the instructions at the bottom of [this page](../tutorials/index.html).
While the tip of the master branch contains the accumulated result of all the
tutorials, you can get the specific result of this one by checking out the
devices tag with
~~~
git checkout devices
~~~
</div>

So far, all components we have are equal, in the sense that they are seen by
syskit as _transforming data_. From the point of view of syskit, if three
components are needed in your network, everything is OK as long as you provide
enough deployments.

However, there is one case where this assumption simply does not work:
components that are related to hardware. Syskit cannot make a camera grow
because your network requires it.[^1] Morevoer, these devices are also your
system's data sources: the data that is simply processed by other components
originally comes from there.

For all these reasons, a syskit-enabled system will in most cases have a robot
description block, in which devices are described. This tutorial will show you
how.

Joystick Device
---------------
The reason why the first tutorials asked you to remove the dependency on
the rock bundle by deleting config/bundle.yml is that the joystick, obviously,
is a device -- and we would therefore have had to talk about devices way too
soon.

We will now delete models/orogen/controldev.rb, so that the one from Rock is
picked up[^2]. Then, run syskit browse, and have a look into the provided data
services of Controldev::JoystickTask.

![provided services of JoystickTask](800_browse_joystick.png)

It provides Dev::Controldev::Joystick, which is a device type,
and is declared in bundles/rock/models/orogen/controldev.rb with:

~~~ ruby
module Dev
  module Controldev
    device_type 'Joystick' do
      provides Base::Motion2DControllerSrv
    end
  end
end
~~~

What you can also see in the same file is that instead of using 'provides' in
the task context definition, one uses device_type:

~~~ ruby
class Controldev::JoystickTask
  driver_for Dev::Controldev::Joystick, :as => 'joystick'
~~~

So far, this is the main difference between devices and data services:

 - devices are defined using device_type instead of data_service_type
 - one uses driver_for to declare that a task is a device driver instead of
   provides to declare that it provides a data service

For now, this are the only differences. For all other intent and purposes, a
device type __is__ a data service type.

[^1]: to be perfectly clear, one could use syskit to determine that (1) a new
      camera is required (2) reconfigure the hardware to install a new camera
      and (3) modify the syskit models on the fly to reflect this change.
      However, that's not syskit's job: its job is to determine that right here,
      right now, a required network cannot be deployed because one camera is
      missing.

[^2]: when loading extension files in models/orogen, the first matching one in
      the dependency chain is picked. You can manually load the already existing
      one (if you want to do so) by adding the corresponding require line.

Robot Definition
----------------
However, we also need to declare that we __do__ have a joystick device. If we
don't, we will get an error from syskit:

~~~
syskit instanciate -rtut joystick_def!
cannot find a device to tie to 1 task(s)
for Controldev::JoystickTask:0x3df5a18{conf => [default]}[]
  child cmd of Tutorials::RockControl:0x3dd3710{conf => [default]}[]
  no candidates for Controldev::JoystickTask:joystick
  (Syskit::DeviceAllocationFailed)
~~~

Devices are declared within a robot block in profiles. Edit
models/profiles/rocks.rb and add the following to the Rocks profile:

~~~ ruby
robot do
  device Dev::Controldev::Joystick, :as => 'joystick'
end
~~~

as well as the obligatory loading code at the top of the file:

~~~ ruby
using_task_library 'controldev'
~~~

and finally select the device explicitly in the joystick definition:

~~~ ruby
define 'joystick',    Tutorials::RockControl.
  use(joystick_dev).
  use_deployments(/target/)
~~~

Et voila ! The joystick is declared. Test this out by running

~~~
syskit instanciate -rtut joystick_def!
~~~

In the resulting network, have a look at the 'joystick_dev' argument for the
JoystickTask task.

![JoystickTask joystick_dev argument](800_joystick_device_argument.png)

<div class="note" markdown="1">
Devices are usable in profiles everywhere a data service type, task contexts,
compositions and/or definitions are. They are accessible by using the name_dev
notation (here: joystick_dev). For instance, one can select a particular device
in a use() statement: ControlLoop.use(joystick_dev). Running a device driver
from syskit is done with e.g.

~~~
syskit run -rtut joystick_dev!
~~~

</div>

Declaring the 'rocks' as devices
--------------------------------
As for the joystick, our tutorial rocks are also unique: they are "physical". We
should therefore also declare them as devices, to uniquely identify them in the
network.

One tidbit: if you have tried, at some point, to run the brownian motion for
both rocks, you would have had a pretty hard time. The reason, as you may have
noticed right now, is that as long as you do not introduce a device in the
brownian motion networks, __they are identical__. Syskit will therefore happily
run a _single_ brownian motion network, thus moving only one rock. What
will allow to differentiate them is that we point to a particular __unique__
device for each networks to control.

The first step is to declare the device. [The
convention](../system/devices.html) is to declare those in
models/blueprints/devices.rb, into the Dev module, so let's create the file and
add

~~~ ruby
# Load the device file from the Rock bundle
require 'rock/models/blueprints/devices'
# Required for PoseSrv. Remember, this is
# given to you in syskit browse
require 'rock/models/blueprints/pose'
# Define the Rock device type. The 'platform' namespace is
# used to define whole platforms (e.g. the name of a commercial
# robot)
Dev::Platforms.device_type 'Rock' do
  # All Rock device drivers provide the Rock pose
  provides Base::PoseSrv
end
~~~

Then, we need to declare our tutorial 'simulation' component as a driver for
this device. Since the RockTutorialControl task is in the rock_tutorial oroGen
project, we edit models/orogen/rock_tutorial.rb and add

~~~ ruby
require 'models/blueprints/devices'
class RockTutorial::RockTutorialControl
  driver_for Dev::Platforms::Rock, :as => 'driver'
end
~~~

And, finally, we declare our two rocks and modify the network declarations. In
models/profiles/rocks.rb, the whole profile definition would look like

~~~ ruby
profile 'Rocks' do
  robot do
    device Dev::Controldev::Joystick, :as => 'joystick'
    device(Dev::Platforms::Rock, :as => 'rock1').
      use_deployments(/target/)
    device(Dev::Platforms::Rock, :as => 'rock2').
      use_deployments(/follower/)
  end

  define 'joystick',    Tutorials::RockControl.
    use(joystick_dev, rock1_dev)
  define 'random',      Tutorials::RockControl.
    use(TutBrownian::Task, rock1_dev)
  define 'random2',      Tutorials::RockControl.
    use(TutBrownian::Task, rock2_dev)
  define 'random_slow', Tutorials::RockControl.
    use(TutBrownian::Task.with_conf('default', 'slow'), rock1_dev)
  define 'random_slow2', Tutorials::RockControl.
    use(TutBrownian::Task, rock1_dev).with_conf('slow')
  define 'leader', Tutorials::RockControl.
    use(TutBrownian::Task, rock1_dev)
  define 'follower', Tutorials::RockControl.
    use(TutFollower::Task, leader_def, rock2_dev)
end
~~~

You can now have a look at all the networks. And for instance, you can

~~~
syskit instanciate -rtut random_def! random2_def!
~~~

The result is probably not what you expected:

![The brownian generator is shared because it is not defined as device](800_shared_brownian_generator.png)

As stated when we introduced the device concept, devices are meant to identify
data sources and sinks -- which are very commonly hardware devices in actual
robots. That's what the brownian generator is as well, so we would need to also
define a device for this one (this exercise is left to the reader ;-))

Let's also make the follower definition fail:

~~~
$ syskit instanciate -rtut follower_def!
Cannot find a concrete implementation for 1 task(s)
Syskit::TaskContext placeholder for Base::PoseSrv
  4 candidates
    Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)],
    Tutorials::RockControl,
    Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)],
    RockTutorial::RockTutorialControl
  child target_pose of Tutorials::RockControl/[cmd.is_a?(TutFollower::Task)]:0x48ce390{conf => [default]}[]
~~~

This time, the main issue is that Syskit cannot pick something for the
target_pose child of the RockControl composition. Weird ... We did give him
the leader_def definition in the use() statement.

Actually, not so weird: rock2_dev is also a provider for Pose, and there is
therefore conflict. As a general rule of thumb, if a data service is left
unallocated, it means that you have to explicitly state which child the model
you provided should replace, in our case, target_pose

__Important__: the explicit selections MUST go at the end of the use()
statement. This is required by the Ruby syntax. If you find this ordering
constraint confusing, you can also add multiple use() statements.
{: .warning}

~~~ ruby
define 'follower', Tutorials::RockControl.
  use(TutFollower::Task, rock2_dev, 'target_pose' => leader_def).
  use_deployments(/follower/)
~~~

Summary
-------
This tutorial led through the reason why the concept of devices is needed when
using syskit, and what you should define as devices. [In the next
tutorial](900_reusing_profiles.html), we will see how to split the profile
definitions between a generic profile and more specialized ones, for instance to
deal with real robot vs. simulated robot differences while reusing as much as
possible.

