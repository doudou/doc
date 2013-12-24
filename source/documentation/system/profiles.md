---
title: Profiles
sort_info: 510
---

Profiles
--------
At some point, one has to bind everything together. We have so far a bunch of
models, and a way to specify our actual needs. What we are now looking for is a
way to provide a consistent set of predefined component networks that will be
the actual robot function.

This consistent set of definitions is called a profile. Profiles are defined
using:

~~~ ruby
module MyProject
  profile "ProfileName" do
  end
end
~~~

in the namespace of your choice. The profile object is then referred by (in this case)
MyProject::ProfileName.

__Filesystem__ Profiles are defined in models/profiles/. The file
names should be the snake_case version of the profile name (e.g.
models/profiles/my_project.rb for the profile defined above). Any task context,
composition or data service used in the profile file should be required first
with either the using_task_library statement (for task contexts) or a simple
require of the relevant file. Use [syskit browse](general_concept.html#browsing)
to find out what is defined where.
{: .block}

The first thing one can do in a profile is to give names to [instance
requirements](subsystem_design.html). For instance, following the example above, one would probably
create a pose estimation definition:

~~~ ruby
profile "Base" do
  define "pose_estimation", PoseEstimation.
    use('orientation' => XsensImu::Task.with_conf('default', 'high_sampling_rate'))
end
~~~

Once this definition is created, it can be referred to by using the _def suffix.
For instance, one would add the corridor servoing definition from the previous
examples with:

~~~ ruby
profile "Base" do
  define "pose_estimation", PoseEstimation.
    use('orientation' => XsensImu::Task.with_conf('default', 'high_sampling_rate'))
  define "servoing", Rock::CorridorNavigation::CorridorServoing.
    use('pose' => pose_estimation_def)
end
~~~

Profile-wide selections
-----------------------
The "use" statement allows to provide selections at the level of a profile, e.g.
for all the definitions in that profile. Each definition can, of course,
override that profile-wide setting. For instance:

~~~ ruby
profile "Base" do
  define "pose_estimation", PoseEstimation.
    use('orientation' => XsensImu::Task.with_conf('default', 'high_sampling_rate'))
  use Base::PoseSrv => pose_estimation_def
end
~~~

A common usage for this statement is to give some default configuration for a
class of type contexts. For instance:

~~~ ruby
profile "Base" do
  use PoseEstimator::Task =>
    PoseEstimator::Task.use_conf('default', 'low_latency')
end
~~~

Reusing Profiles
----------------
Profiles are often an extension of existing "generic" profiles. For instance,
Rock's rock_ugv_nav bundle defines the Rock::UGVNav::Skid4 profile that gives
common definitions for any system that is a four-wheeled, skid-steered system.
This is a great way to provide pre-integrated functionality for some classes of
systems, leaving only the "binding to the specific platform" to the system's
integrator.

All definitions from a profile can be imported from another one with the
use_profile statement:

~~~ ruby
profile "Robot do
  use_profile Base
end
~~~

Additionally, definitions from imported profiles can be extended. The extension
will only apply itself on the current profile, not on the imported one. This is
done by calling instance requirement calls on the definition object:

~~~ ruby
profile "Robot" do
  use_profile Base
  servoing_def.use('controller' => MyRobotController)
end
~~~
 
