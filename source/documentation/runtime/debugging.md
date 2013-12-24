---
title: Debugging Components
sort_info: 60
---

When starting oroGen-generated deployments, the Orocos.run command gives you
some ways to use common debugging tools like gdb or valgrind to debug your
components.

GDB
-------

Orocos.run can be told to start the processes / deployments under gdb using the
:gdb option

~~~ ruby
Orocos.run 'my_project::Task' => 'task', :gdb => true do
   ...
end
~~~

This starts the process using the gdb server. Once the process is started,
Orocos.run warns you that

~~~
Orocos[WARN]: process task has been started under gdbserver, port=30001. The components will not be functional until you attach a GDB to the started server
Process /media/Data/dev/rock/master-full/install/bin/orogen_default_camera_firewire__CameraTask created; pid = 29756
~~~

You have then to attach a gdb client to it with

~~~
gdb /media/Data/dev/rock/master-full/install/bin/orogen_default_camera_firewire__CameraTask
> target remote localhost:30001
~~~

Note that if you need to start some components under gdb and some not, list the
components / deployments you want to start under gdb instead of 'true'

~~~ ruby
Orocos.run 'my_project::Task' => 'task', 'my_deployment', :gdb => ['task', 'my_deployment'] do
   ...
end
~~~

Valgrind
--------
With the same general interface, you can start the components on valgrind

~~~ ruby
Orocos.run 'my_project::Task' => 'task', :valgrind => true do
   ...
end
~~~

or, if you want to select specific processes:

~~~ ruby
Orocos.run 'my_project::Task' => 'task', 'my_deployment',
    :valgrind => ['task', 'my_deployment'] do
   ...
end
~~~

In order to not get spammed by the valgrind output, you definitely should setup
the output redirection to file:

~~~ ruby
Orocos.run 'my_project::Task' => 'task', 'my_deployment',
    :output => '%m-%p.log', :valgrind => ['task', 'my_deployment'] do
   ...
end
~~~

in which case the valgrind output is redirected to a separate process logfile,
which is the process' log file name with .valgrind appended (in the example
above, task-PID.log.valgrind and my_deployment-PID.log.valgrind, where PID is
the process ID of the started deployment)
