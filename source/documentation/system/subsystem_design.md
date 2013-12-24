---
title: Subsystem Design
sort_info: 500
---
What we saw so far is the ability to __model__ how things should run together.
Data Services allow to represent abstract components. Compositions, to bind
components together to create some functionality, and Task Contexts represent
the actual implementations.

However, there is still the problem of telling the system what should __actually
run__. This step is called _system deployment_.  
At the root of everything are the __instance requirements__. They describe a
subsystem so that the syskit engine can create the network associated with
it. In essence, when creating instance requirements, one picks up what should
run where. It represents, for instance, 'I want a PoseEstimation composition where the
orientation child, which is originally declared as an orientation service, is
replaced by a XsensImu::Task task context'

Then, these requirements are used in Roby's action interface to allow to start
and stop complete subsystems dynamically. This is going to be presented in the
following pages.

Instance Requirements
---------------------
The instance requirements describe a subsystem that you require to run. The
simplest of all is a single component model (either task or composition). For
instance:

~~~ ruby
CorridorNavigation::FollowingTask
~~~

tells the system that you require a component of type
CorridorNavigation::FollowingTask to be running, not giving any other
constraints.

Compositions need a bit more information, as you might need to specify
composition children. For instance, the composition that handles the
CorridorNavigation::FollowingTask above requires a full robot pose, provided by
a Base::PoseSrv data service.

TODO: image

Instanciating it therefore requires to tell the system what should be used to
provide this pose. This is done by the #use statement:

~~~ ruby
Rock::CorridorNavigation::Servoing.
  use('pose' => PoseEstimation)
~~~

where 'pose' is the name of the child that is being selected. This name is given
[in the child declaration](compositions.html) with the :as option.

This is assuming that PoseEstimation is a composition that can be instanciated
"by itself" (i.e. needs no other information to be instanciated). If it was
needing some more specification, you would specify it the same way (don't worry,
there are better ways to write that down)

~~~ ruby
Rock::CorridorNavigation::Servoing.
  use('pose' => PoseEstimation.
    use('orientation' => XsensImu::Task)
  )
~~~

The other thing that can be specified in an instance requirement are the task
arguments (as in [Roby task
arguments]({% api tools/roby %}/building/task_models.html)).
This is simply done with #with_arguments:

~~~ ruby
Rock::CorridorNavigation::Servoing.
  with_arguments(:target_point => Eigen::Vector3.new(10, 12, 0)).
  use('pose' => PoseEstimation.
    use('orientation' => XsensImu::Task)
  )
~~~

Finally, a special case of task arguments is the handling of the [task
contexts configuration](task_contexts.html#configuration). One specifies it with #with_conf:

~~~ ruby
Rock::CorridorNavigation::Servoing.
  with_arguments(:target_point => Eigen::Vector3.new(10, 12, 0)).
  use('pose' => PoseEstimation.
    use('orientation' => XsensImu::Task.
        with_conf('default', 'high_sampling_rate')
    )
  )
~~~

Finally, when selecting a composition child and/or selecting something for a
service, one might need to select a service explicitly (for instance because the
selected composition / task provides multiple services of the same kind). This
is done by providing the service as selection, instead of only the task.

~~~ ruby
Rock::CorridorNavigation::Servoing.
  with_arguments(:target_point => Eigen::Vector3.new(10, 12, 0)).
  use('pose' => PoseEstimation.pose_srv)
~~~

when done on a full instance requirement object, it has to be done at the end
(e.g. after the use() and other statements)

~~~ ruby
Rock::CorridorNavigation::Servoing.
  with_arguments(:target_point => Eigen::Vector3.new(10, 12, 0)).
  use('pose' => PoseEstimation.
    use('orientation' => XsensImu::Task.
        with_conf('default', 'high_sampling_rate')
    ).pose_srv
  )
~~~

Summary
-------
This page explained the general syntax and concepts related to dependency
injection in syskit. However, you probably noticed how it could become pretty
tedious for complex systems.

To promote reuse of _configured subsystems_, as well as allowing to _name
subsystems_, syskit introduces the concept of __profiles__. This is the subject
of [the next page](profiles.html)

In general, have a look at the documentation for
[InstanceRequirements]({% yard tools/syskit Syskit::InstanceRequirements %})
to get all the available specifications that can
be added to an instance requirement object.
