---
title: Compositions
sort_info: 300
---

In the system modelling, compositions are what bind components together: they
define, for a specific task, behaviour or subsystem (depending from which side
of robotics you come from), what components are needed and how these components
should be connected together to perform the required function.

In the above description -- as within the rest of this documentation --
"component" refers to a data service, task context or composition.

Compositions are defined with

~~~ ruby
class ModelName < Syskit::Composition
  ...
end
~~~

Since they are class definitions, the new model is defined in the current
namespace. I.e., one (and probably should) could do

~~~ ruby
module MyProject
  class ModelName < Syskit::Composition
    ...
  end
end
~~~

__Filesystem__ Compositions are defined in models/blueprints/. The file
names should be the snake_case version of the composition name (e.g.
models/blueprints/model_name.rb for the composition defined above). Any task context,
composition or data service used in the composition file should be required first
with either the using_task_library statement (for task contexts) or a simple
require of the relevant file. Use [syskit browse](general_concept.html#browsing)
to find out what is defined where.
{: .block}

The main definition statements in a composition are 'add' and 'connect'

~~~ ruby
class ModelName < Syskit::Composition
  add Base::PoseSrv, :as => 'pose'
end
~~~

The "add" line adds a child to the composition, i.e. declares that a component
of that type needs to run to perform the function of this composition. Children
need to be given a name (which should reflect the child's role). For instance,
the rock_ugv_nav bundle defines the Rock::SLAM::Odometry composition with:

~~~ ruby
module Rock
  module SLAM
    class Odometry < Syskit::Composition
      add Base::ActuatorControlledSystemSrv, :as => 'motors'
      add Base::OrientationSrv, :as => 'imu'
      add Skid4Odometry::Task, :as => 'odometry'
    end
  end
end
~~~

In this example, the composition would require three components:

 * a component providing the Base::ActuatorControlledSystemSrv service, which gives
   motor data
 * a component providing the Base::OrientationSrv service, which gives the
   orientation in space of the system whose odometry we're computing
 * finally, the task context that is going to do the computation (from the
   [slam/orogen/odometry]({% pkg slam/orogen/odometry %}) package).

This is all well, but (obviously), these children need to be connected together.
This is done with:

~~~ ruby
module Rock
  module SLAM
    class Odometry < Syskit::Composition
      add Base::ActuatorControlledSystemSrv, :as => 'motors'
      add Base::OrientationSrv, :as => 'imu'
      add Skid4Odometry::Task, :as => 'odometry'

      imu_child.connect_to odometry_child
      motors_child.connect_to odometry_child
    end
  end
end
~~~

The "_child" statements refer to the defined children (i.e. imu_child for the
imu, odometry_child for the odometry, ...). In the form above, the connect_to
statement will try to create all connections that are possible and unambiguous.
Given an output port, a possible connection is ambiguous if (1) more than one
input port has a matching data type and (2) none of these input ports have the
same name than the output. If no connection is found, an error is generated.

When ambiguous connections exist, one should give the required connection
explicitly by selecting the input port, the output port or both with e.g.

~~~ ruby
imu_child.orientation_samples_port.connect_to odometry_child
imu_child.connect_to odometry_child.orientation_samples_port
imu_child.orientation_samples_port.connect_to
odometry_child.orientation_samples_port
~~~

Just as for the child, the ports are referred to as (port_name)_port, i.e.
orientation_samples_port is a port named "orientation_samples".

These models can be checked graphically using the syskit tool. If you have not
yet installed the rock_ugv_nav bundle, do it by calling

~~~
aup rock_ugv_nav
~~~

then go in bundles/rock_ugv_nav and run

~~~
syskit browse
~~~

On the left side, select the Rock::SLAM::Odometry model. The right pane will
show you the following graphical representation of the composition:

TODO: add figure.

Providing Services
-----------------
In order to be able to use compositions in lieu of services, for instance so
that we can use them in other compositions, we have to give them ports.

Since compositions are only aggregations of other components, they don't have
ports on themselves. They "get" ports by exporting ports from their children
(one can export both input and output ports this way):

~~~ ruby
module Rock
  module SLAM
    class Odometry < Syskit::Composition
      ...
      export odometry_child.odometry_delta_samples_port
      provides Base::RelativePoseSRv
    end
  end
end
~~~

As you can see in the example above, the export of a port allows you to then use
the [provides statement](data_services.html#provides) to declare that the
composition provides a service and therefore be able to use it whenever said
service is needed.

Configuration
-------------
In the same way than compositions do not really have ports, but only "export"
the ports of its children, compositions do not have configurations by
themselves. Instead, configurations are defined as a list of configurations for
the children.

For instance:

~~~ ruby
module Rock
  module SLAM
    class Odometry < Syskit::Composition
      ...
      conf 'high_speed',
        'pose_provider' => ['default', 'high_sampling_rate']
    end
  end
end
~~~

Unlike what is possible with task contexts, one cannot "merge" configurations on
top of each other (i.e. only one configuration can be selected at a time).
Moreover, the configuration names are not verified at declaration time (in the
example above, 'pose_provider' might be a service and therefore has no notion of
configuration files).

Dependency specification: tasks and behaviours (advanced)
----------------------------------------------
When one adds a child to a composition, he also declares that, at runtime, the
composition will need an instance of this child to run. Having a __working__
odometry in a system requires, for instance, a properly configured instance of
Skid4Odometry::Task to run. The default dependency setup therefore defines that
there is a dependency constraint failure if the child task stops while the
composition is running. In other words, [Roby's dependency
relation](http://rock-robotics.org/api/tools/roby/task_relations/dependency.html) is
used with:

~~~ ruby
composition.depends_on(child, :failed => [:stop])
~~~

The :as option on the #add line is used as the dependency role. It means that,
at runtime, one can access a particular child of the composition by its name:

~~~ ruby
composition.odometry_child
~~~

This can be changed at definition time by giving additional parameters to the
add statement. Such a special case is used to change the composition from a
behaviour (runs until not needed) to a goal-oriented task (runs until it
achieved a specified goal). A (hypothetical) Goto, which would use a
TrajectoryFollower::Task to reach a certain goal using a predefined trajectory
could be defined with:

~~~ ruby
class Goto < Syskit::Composition
  add TrajectoryFollower::Task,
     :success => [:reached_the_end],
     :as => 'follower'
end
~~~

where reached_the_end is one of the runtime states reported by the
TrajectoryFollower::Task component

Extending the Composition Models
--------------------------------
Composition models are subclasses of Syskit::Composition which is itself a
grandchild of Roby::Task. As such, much more can be done using the runtime code
execution features of Roby.

For instance, due to the limitations of the composition definition
implementation, one cannot currently use the complete range of event constraints
in the composition definition itself. This has to be done at instanciation time
by overriding Composition.instanciate:

~~~ ruby
class Goto < Syskit::Composition
  def self.instanciate(plan, *args)
    composition = super
    composition.follower_child.reached_the_end_event.
      forward_to composition.success_event
    composition
  end
end
~~~

See [Roby's own documentation](http://rock-robotics.org/api/tools/roby) for more
information. In general, one would extend compositions with new events, scripts
or poll blocks directly in the block given to composition. For instance:

~~~ ruby
class Localization < Syskit::Composition
  event :lost
  forward :lost => :failed
end
~~~

