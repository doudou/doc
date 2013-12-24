---
title: Manipulating tasks
sort_info: 100
---

Getting a hold on task contexts
-------------------------------

There are three ways to get a TaskContext instance that represents a task context:
using its IOR, name or type. The latter two are accessed using the
Orocos.name_service.

_Note:_ the task type can be used only for oroGen-generated tasks. If oroGen is
not used, only the name can be used

As an example, with the following oroGen deployments:

~~~ ruby
deployment "lowlevel" do
  task('can', "can::Task").
  task("hbridge", "hbridge::Task")
  add_default_logger
end
~~~

The following code snippet will get a handle on the hbridge task in the three
different ways:

~~~ ruby
Orocos.run 'lowlevel' do
  hbridge = Orocos.name_service.get 'hbridge'
  hbridge = Orocos.name_service.get_provides 'hbridge::Task'
  
  ior = Orocos.name_service.ior 'hbridge'
  hbridge = Orocos::TaskContext.new ior 
end
~~~

Note that the type given to the provides option may be a superclass of the
actual returned task. This access method is meant to make startup scripts more
generic. For instance, if we assume that there is a generic <tt>base::IMU</tt>
IMU driver model that is subclassed by <tt>imu::XsensTask</tt> and
<tt>dfkiimu::Task</tt>, then a startup script that does

~~~ ruby
imu = Orocos.name_service.get_provides 'base::IMU'
~~~

Will get an IMU task regardless of its name and exact type.

If no task is found or if an ambiguity exists (i.e. if there is more than one
component matching), the method raises Orocos::NotFound.

Manipulating and monitoring the component's state
-------------------------------------------------

The component's state machine can be manipulated using the standard RTT calls.
You need to know the following calls:

 * _configure_: move the component from the PreOperational to the Stopped
   state. In oroGen, only components whose definition include the
   <tt>needs_configuration</tt> statement need that step.
 * _start_: actually starts the component
 * _stop_: stops the component if it is running

All these methods are synchronous (i.e. the component is actually started once
the start method returns) and raise StateTransitionFailed if the transition
could not happen.

When the component is in a fatal error state, one can use the
<tt>reset_error</tt> call to get back to the stopped state (where either
<tt>start</tt> or <tt>configure</tt> can be called again).

At runtime, the <tt>ready?</tt>, <tt>running?</tt>, <tt>error?</tt> and
<tt>fatal?</tt> allow to inspect the component's state. Even though it is possible
to access the state directly, avoid to do so unless you really need it. The
reason is that, if oroGen's extended state support is used in a component, then
the above predicates will continue to work while checking for, say, FATAL\_ERROR
won't.

