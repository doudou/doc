---
title: Deployments
sort_info: 150
---

In orogen, each deployment is a separate binary (UNIX process) in which a
certain number of tasks have been _instanciated_. In other words, certain task
contexts classes are tied to a thread and one or multiple triggering mechanisms.

This page will deal with the generics of deployment. The different triggering
mechanisms are developed [later in this guide](triggering/index.html).

The deployment block
--------------------

Each deployment block declares one binary. For instance:

~~~ ruby
deployment "test" do
  <deployment statements>
end
~~~

will generate a "test" binary. By default, it will be installed by CMake. If
that is not desired, for instance if it is for testing purposes only, add the
<tt>do_not_install</tt> statement in the block:

~~~ ruby
deployment "test" do
  do_not_install
  <other deployment statements>
end
~~~

In the block, the following conditions can be tested:

 * the target OS. You can use the <tt>xenomai?</tt> and <tt>gnulinux?</tt>
   predicates to enable/disable some parts based on the target OS.
 * the fact that the binary will be interfaced with CORBA or not. Use the
   corba\_enabled? predicate to test this. CORBA is the target if the
   <tt>--corba</tt> flag is given to orogen during generation, or if the
   enable\_corba statement is added in the deployment block. It is also possible
   to forcefully disable it by adding the disable\_corba statement in the
   deployment.

Instanciating tasks
-------------------

The basic thing to be done in a deployment is listing the tasks that should be
instanciated. It is done by using the 'task' statement:

~~~ ruby
  task 'TaskName', 'orogen_project::TaskClass'
~~~

It will create a task with the given name and class. By default, that task will
have its own thread.

Threading
---------

There are mainly two options with respect to threading. In the first case, when
a task is triggered, the associated thread is woken up and the task will be
asynchronously triggered in its own thread when the OS scheduler decides to do
so. It is the safest option (and the default) as the different tasks are made
independent from each other.

In the second case, the task does *not* have its own thread. Instead, the thread
that triggers it will be used to run the task. In other words, task triggering
stops to be asynchronous, but instead is seen as a method call. This is mainly
useful for tasks that are triggered by data coming in their input port (this
triggering mechanism is described here). The main advantage is that the OS
scheduler is removed from the equation, which can reduce latency.

The first case does not requires a specific declaration in the deployment block.
Nonetheless, the underlying thread can be parametrized with a scheduling class
(realtime/non-realtime) and a priority. By default, a task is non-realtime and
with the lowest priority possible. Changing it is done with the following
statements:

~~~ ruby
  task('TaskName', 'orogen_project::TaskClass').
    realtime.
    priority(<priority value>)
~~~

Note the dot at the end of the first two lines. It is important and not adding
it would lead to a NoMethodError error during generation.
{: .warning}

The priority value being a number between 1 (lowest) and 99 (highest).
Moreover, note that the periodic and IO triggering mechanisms _require_ the task
to be in its own thread.

The second case is called a sequential activity and is declared with:

~~~ ruby
  task('TaskName', 'orogen_project::TaskClass').
    sequential
~~~

Initial setup of the generated deployment
-----------------------------------------

It is possible to statically specify an initial setup of the task contexts
present in the deployment.

First, it is possible to set simple properties. To do so:

~~~ ruby
my_task.property = new_value
~~~

where <tt>new_value</tt> is compatible with the property's type. It works only
for simple types (like numbers or strings), where new_value is the corresponding
ruby literal.

Logger integration
------------------

If you installed orogen's logger component, specific statements are made
available to you in the deployment block.

First, the <tt>add\_default\_logger</tt> statement would create a logger task
(i) whose name is deploymentname\_Logger and (ii) which log file is
deploymentname.log. This convention is used by orocos.rb, for instance, to
implement automated logging setup.

If this default logger does not suit you, you can also add specific loggers
with:

~~~ ruby
logger("file name", "task_name").
    report(other_task.output_port_name).
    report(third_task.another_output_port)
~~~

