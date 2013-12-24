---
title: Reusing Profiles
sort_info: 900
---

<div class="note" markdown="1">
The result of this tutorial can be found in bundles/tutorials if you
followed the instructions at the bottom of [this page](../tutorials/index.html).
While the tip of the master branch contains the accumulated result of all the
tutorials, you can get the specific result of this one by checking out the
reusing-profiles tag with
~~~
git checkout reusing-profiles
~~~
</div>

While we have already seen [how to reuse other
bundles](700_file_structure.html#reusing-other-bundles), we have yet to see how
to reuse profiles. Indeed, one of the major ideas behind the profile concept is that one can design
subsystems that get more and more specialized as their target platform is more
and more precise. For instance, bundles/rock_ugv_nav, the bundle that contains
models for doing rover navigation in Rock, defines a main navigation profile for
all rovers and then specializes it for the 4-wheel skid-steered class of
vehicle, vehicles for which Rock has standard components to handle control and
odometry.

In [the next tutorial](1000_transformer.html), we will want to be able to modify
the current definitions so that another component is used in place of the
tut_sensor::Task component. This tutorial will guide you through the process of
reusing profiles, i.e. create one common profile with the bulk of the
definitions and then reuse it in one where tut_sensor::Task is used and another
one that will be ready to be filled in the next tutorial. This is also commonly
how the split between real and simulated systems is done: a main profile does
the common definitions, that then get specialized in the real-robot and in the
simulated-robot cases.

We will, in this tutorial, split the
Tutorials::Rocks bundle into one profile that handles the current way (without
the transformer) and one that uses the transformer-enabled component. 

Two main concepts are going to be used for this:

 - subclassing (in the Ruby-as-a-programming-language sense of the term)
   compositions to create more specific versions of them,
 - separating files into robot categories in a bundle,
 - reusing profiles to refine them

Abstracting the sensor component
--------------------------------
The first modification will be to make Tutorials::RockControl independent of the
sensor component used. This is of course done by introducing a new data service
and using it there instead.

Let's define first the service in models/blueprints/distance_bearing_sensor_srv.rb

~~~ ruby
import_types_from 'tut_sensor'
module Tutorials
  data_service_type 'DistanceBearingSensorSrv' do
    output_port 'samples', '/rock_tutorial/BearingDistanceSensor'
  end
end
~~~

And declare in models/orogen/tut_sensor.rb that Task provides it

~~~ ruby
require 'models/blueprints/distance_bearing_sensor_srv'
TutSensor::Task.provides Tutorials::DistanceBearingSensorSrv,
  :as => 'sensor'
~~~

Now, if we have a look at the follower specialization for RockControl (in
models/blueprints/rock_control.rb)

~~~ ruby
specialize cmd_child => TutFollower::Task do
  add Base::PoseSrv, :as => "target_pose"
  add TutSensor::Task, :as => 'sensor'

  target_pose_child.connect_to sensor_child.target_frame_port
  rock_child.connect_to sensor_child.local_frame_port
  sensor_child.connect_to cmd_child
end
~~~

we see that a lot of it is actually specific for tut_sensor::Task. If we wanted
to stick with specializations, we would create a first specialization for
DistanceBearingSensorSrv, and then specialize it for TutSensor::Task. However,
this kind of recursive specializations is not supported in syskit, so we'll have
to deal with it differently.

Instead, we will create a RockFollower composition that is a __subclass__ of
RockControl, and specialize it for the different kinds of sensors. Remove the 
specialize block in RockControl and then add:

~~~ ruby
# Submodel of RockControl for follower behaviours
class RockFollower < RockControl
  overload cmd_child, TutFollower::Task
  add DistanceBearingSensorSrv, :as => 'sensor'
  sensor_child.connect_to cmd_child

  specialize sensor_child => TutSensor::Task do
    add Base::PoseSrv, :as => 'target_pose'
    target_pose_child.connect_to sensor_child.target_frame_port
    rock_child.connect_to sensor_child.local_frame_port
  end
end
~~~

The existing profile in models/profiles/rocks.rb will have to be changed by
replacing RockControl with RockFollower for the follower definition.

Let's make the result fail with

~~~
# syskit instanciate -rtut follower_def!
`block in use': target_pose is not a known child of Tutorials::RockFollower (RuntimeError)
~~~

The issue this time is the following:

 - we give a selection for 'target_pose', which is meant to be a child of
   RockFollower
 - the target_pose child is only defined in the specialization of RockFollower
 - nothing in the use() specification allows syskit to determine that it should
   specialize.

The solution is therefore to give the sensor component explicitly, so that the
specialization is indeed selected:

~~~ ruby
define 'follower', Tutorials::RockFollower.
  use(TutFollower::Task, TutSensor::Task, rock2_dev, 'target_pose' => leader_def)
~~~

Reusing Profiles
----------------
We will, in the next tutorial, also want to use TutSensor::TransformerTask as a
possible sensor. Let's make this possible right now.

In models/orogen/tut_sensor.rb, add

~~~ ruby
TutSensor::TransformerTask.provides Tutorials::DistanceBearingSensorSrv,
    :as => 'sensor'
~~~

There are now two possible components for DistanceBearingSensorSrv. We
could simply create a new definition for TutSensor::TransformerTask. However,
we will use this situation to explain how to reuse profiles instead.

What we are going to do now is create a base profile that is common between the
non-transformer and the transformer-enabled cases. Then, we will have the
RocksWithoutTransformer profile on the one hand, and the RocksWithTransformer on
the other hand. Finally, we will create two robot configurations: one that uses
the transformer and one that does not.

__First part__: creating the Base profile. This is trivially done by renaming the
Rocks profile into BaseRocks, and modify the follower definition to be
independent of the sensor type.

~~~ ruby
profile 'BaseRocks' do
  ...
  define 'follower', Tutorials::RockFollower.
    use(TutFollower::Task, rock2_dev)
  end
~~~

__Second part__: making the two profiles, one that is identical to the one we
had so far, and one for the transformer case. To achieve this, we create two new
Rocks profile and tell syskit that they __use__ the base one. Finally we add
some more dependency selection that is then __limited__ to these new profiles.
At the end, we refine the follower definition in the no-transformer case to
match what we had beforehand.

~~~ ruby
profile 'RocksWithoutTransformer' do
  use_profile BaseRocks
  define 'follower', follower_def.use(TutSensor::Task, 'target_pose' => leader_def)
end
profile 'RocksWithTransformer' do
  use_profile BaseRocks
  define 'follower', follower_def.use(TutSensor::TransformerTask)
end
~~~

__Finally__ create the two robot configurations. We now need to have a way to
select which profiles to apply from the command line. This is done through
Roby's robot configuration mechanism.

We'll keep the 'tut' robot as our non-transformer robot. Let's now create a new
tut-transformer robot for the other case:

~~~
roby add-robot tut-transformer
~~~

What we did so far is use the Rocks profile in models/actions/main.rb. Since
this is the action definition for all the robots, we need to move the
use_profile statement into models/actions/tut/main.rb (don't forget to rename Rocks into
RocksWithoutTransformer), which is specific to the tut
robot. And do the corresponding modification in
models/actions/tut-transformer/main.rb

~~~ ruby
require 'models/profiles/rocks'
class Main < Roby::Actions::Interface
  use_profile Tutorials::RocksWithTransformer
end
~~~

We also should not forget to add the use_deployments line in
config/tut-transformer.rb (it is at the top of config/tut.rb). The transformer
case is now available by selecting the tut-transformer robot:

~~~
syskit instanciate -rtut-transformer follower_def!
~~~

Conclusion
----------
The profile-reusing mechanism creates scopes for definitions and selections of
tasks for services. This scoping mechanism applies to all the profile elements,
such as [robot definition blocks](800_devices.html) or transformer
configuration. In other words: if it is defined in a profile, it is scoped to
this particular profile.

We can now finally move to the [transformer tutorial](1000_transformer.html)

