---
title: Task Contexts
sort_info: 150
---

When using Syskit, task contexts are directly imported from their oroGen models.
Only task contexts that have been developped using oroGen (i.e. all task
contexts coming from Rock) can currently be integrated in Rock. The general
issue here is that, for the system management layer to work, a model of the
components needs to be available __and__ deployed instances of these components
should be described as well.

This page is first going to describe the mapping from oroGen models to Syskit
models. It will then go on with ways in which you can extend these models to add
runtime code, custom configuration code and additional modelling (such as data
services) to existing task contexts.

Modelling
---------
The syskit layer then generates a Ruby class that is a subclass of
[TaskContext]({% yard tools/syskit Syskit::TaskContext %}) for each of the oroGen components it finds.
Throught this class, one has access
to all the runtime code execution features of Roby itself. See [Roby's own
documentation]({% api tools/roby %}) for more information

All task contexts get the following task arguments:

 * __conf__ is the configuration that should be applied to the task
 * __orocos_name__ is the name of the deployed orocos task that is used to run
   this task context.

At runtime, Roby events are used to represent all state transitions except the
one to and from PRE_OPERATIONAL. The RTT TaskContext state transitions are
mapped to the following events:

 * __success__: transition to STOPPED
 * __exception__: transition to EXCEPTION
 * __fatal_error__: transition to FATAL_ERROR
 * __start__: transition to RUNNING
 * __runtime_error__: transition to RUNTIME_ERROR

__fatal_error__ and __exception__ are both forwarded to __failed__.
__runtime_error__ is not by default.

Additionally, events are created for each of the [custom task
state](../orogen/task_states.html), with their names converted to
lower_snake_case. If substates are defined (i.e. a custom exception state
defined with exception_states), the corresponding event is forwarded to the
corresponding main state event.

For instance, a task defined with

~~~ ruby
name "xsens_imu"
task_context "Task" do
  exception_states :IO_ERROR
end
~~~

will have an _io_error_ event that is forwarded to the _exception_ event.

Configurations {#configuration}
--------------
Task context configurations, in syskit, are all managed through [the
configuration directory
mechanisms](../runtime/configuration.html#configuration-directories). The
configuration files are looked for in config/orogen/ and must follow the
model_name.yml convention. For instance, configurations for xsens_imu::Task are
stored in config/orogen/xsens_imu::Task.yml.

The configurations are then selected [when designing subsystems](workflow.html) by listing the configuration sections that should be
applied, i.e. the "default, fast_sampling" configuration will apply the values stored in the
default section and override these values by the fast_sampling section. The way
this selection should be done is detailed in the [subsystem
design](subsystem_design.html) section.

Extending the Model {#extend}
-------------------
If a file in models/orogen/ exists, that has the same name than the oroGen
project but with a .rb extension, this file is going to be loaded after the
corresponding oroGen project is loaded and after the subclasses of Roby::Task
have been created. This is commonly used to declare that the task context
provides some service, but can also be used to extend these classes with custom
events, event handlers, ...

The general idea is to "reopen" the task context class to add some information
to it:

~~~ ruby
class XsensImu::Task
  # Do some declarations there
end
~~~

__Note__ the concept of doing "class X .. end" like this to add something to an
_already existing_ class is called class reopening and is [a standard
feature](http://www.ruby-lang.org/en/documentation/quickstart/3/) of
the Ruby programming language.
{: .note}

We'll now see some use for this: how to link [data services](data_services.html)
to task contexts and how to add code that is going to be executed at runtime
when the task context is running.

Providing Data Services {#provides}
-----------------------
Task contexts can provide data services. However, since they are concrete and
not abstract, their list of ports is predetermined (or almost, we'll see that
later), and therefore the way the "provides" stanza works is different.

Therefore, when a task context provides a service, it is required that
that the component _already_ has all the ports listed in the service. For
instance, for a task context defined in oroGen with:

~~~ ruby
name "xsens_imu"
task_context "Task" do
  output_port "orientation_samples", "base/samples/RigidBodyState"
  ...
end
~~~

then,

~~~ ruby
XsensImu::Task.provides Base::OrientationSrv
~~~

will work fine. Errors are generated if no such ports exists __or__ if multiple
ports match the specification. If multiple ports match the required port type,
then the system model code tries to match the port name. If an exact match is
found, the ambiguity is considered to be resolved. Otherwise, one has to provide
an explicit port mapping:

~~~ ruby
XsensImu::Task.provides Srv::OrientationSrv,
  "orientation_samples" => "port_name_on_the_task"
~~~

Extending with standard Roby execution features {#extend-with-code}
-----------------------------------------------
Composition models are subclasses of [TaskContext]({% yard tools/syskit Syskit::TaskContext %}) which is itself a
grandchild of Roby::Task. As such, much more can be done using the [runtime code
execution features of Roby](/api/tools/roby/building/tasks.html).

For instance, to add a poll handler to the same task context, one would add the following
code:

~~~ ruby
class XsensImu::Task
  poll do
    # Do some polling
  end
end
~~~

Moreover, one can add, at the Roby level, a method that is going to be called at
component's configuration time before the component's own configureHook gets
called. This feature is commonly used to add task arguments to the model, and
use it to configure the task in cases where a configuration parameter depends on
the general context (i.e. cannot be statically written in a configuration
file). Do not forget to call super there, as the
application of the task's configuration files is done in #configure as well.
For instance:

~~~ ruby
class CorridorPlanner::Task
  argument :start_point
  argument :target_point

  def configure
    orocos_task.start_point = self.start_point
    orocos_task.target_point = self.target_point
    super
  end
end
~~~

