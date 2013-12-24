---
title: Runtime Workflow
sort_info: 400
---

The result of this tutorial can be found in bundles/tutorials_scripts if you
followed the instructions at the bottom of [this page](../tutorials/index.html)
{: .note}

Abstract
--------

[The previous tutorial](300_services.html) showed how to create abstract
compositions, and how to select what should run 
(at the point where you are using the 'add' statements).

This tutorial describes a typical development workflow when using Rock's
system management layer:

 * how to restart the deployments when developing the task contexts
 * how to define multiple subsystems and manage them at runtime
 * how to inspect a running system

Starting and restarting processes
---------------------------------
When developing components, one wants the specific processes to be restarted so
that the changes get picked up. In Syskit, it is done by
using the roby shell.

In a terminal, run scripts/02_services.rb

syskit run scripts/02_services.rb
{: .cmdline}

Then, in another terminal, start the shell

syskit shell
{: .cmdline}

Let's now assume that you changed some code in the
rock_tutorial::RockTutorialControl task and would like to restart the
deployment. You would have to compile and install your changed task, for
instance by doing

amake tutorials/orogen/rock_tutorial
{: .cmdline}

Then, in the syskit shell we just created, type

syskit.restart_deployments RockTutorial::RockTutorialControl
{: .cmdline}

To restart all deployments, don't provide any argument

syskit.restart_deployments
{: .cmdline}

And, finally, CTRL+C the "syskit run" script. No need to stop the shell.

Defining modalities
-------------------
Right now, we have two ways (so-called _modalities_) to control our rock:

 * by using a random motion generator
 * by using a joystick

(Note if you don't have a joystick: you can do most of the tutorials without one
!)

Let's reflect that by _defining_, i.e. by giving a name to both ways. Copy
scripts/02_services.rb to scripts/03_defines.rb and edit the latter by: (1)
removing the 'add_mission' line at the bottom and (2) adding the following lines:

~~~ ruby
define 'joystick', Tutorials::RockControl.use(Controldev::JoystickTask)
define 'random', Tutorials::RockControl.use(TutBrownian::Task)
~~~

Using 'define' allows you to map a composition to a name and reference it later
on using this name. It is 
then possible to use the name instead of the complete definition in
the 'add' lines, or in other definition's 'use()' statements. However, using 'add' or 'use' is 
not what we're going to do right now. Instead, we are going to use the shell to start these
modalities and switch between them.

Start the application:

~~~
syskit run scripts/03_defines.rb
~~~

If you did not already do it, start a shell in a separate terminal:

~~~
syskit shell
~~~

The definitions are available as actions in the shell. Run the following command
and look at the top of the output

~~~
localhost:48902 > help
Available Actions
=================

Name          | Description                   
----------------------------------------------
joystick_def! | definition from profile Script
random_def!   | definition from profile Script
~~~

Then run the joystick definition:

~~~
localhost:48902 > joystick_def!
~~~

It requests that syskit starts the joystick-based control, as you can
see in the log or in the live display (if you started it):

~~~
localhost:48902 > joystick_def!
=> #<service Roby::Task:0x7fedaea11a00{}[]>
localhost:48902 >
[1] joystick_def! started to plan
[1] joystick_def!: Tutorials::RockControl:0x7fedae9f08f0{}[] has been replaced by Tutorials::RockControl:0x7fedaead30b0{conf => [default]}[] 
[1] joystick_def!: task Tutorials::RockControl:0x7fedaead30b0{conf => [default]}[] started
~~~

To inspect the set of running actions, just do:

~~~
localhost:48902> jobs
1 joystick_def! Tutorials::RockControl:0x54b4a60{conf => [default]}[]
=> 
~~~

The joystick-based control can now be stopped with

~~~
localhost:48902> kill_job 1
[1] joystick!: task Tutorials::RockControl:0x7fedaead30b0{conf => [default]}[] failed
= fatal exception 1: mission failed: Tutorials::RockControl:0x7fedaead30b0{conf => [default]}[]
| [09:45:47.355 @7] Tutorials::RockControl:0x7fedaead30b0{conf => [default]}[]/failed
| The following tasks have been killed:
| #<Tutorials::RockControl < Composition < Transformer::CompositionExtension>:0x7fedaead30b0
[1] joystick!: task Tutorials::RockControl:0x7fedaead30b0{conf => [default]}[] has been removed
~~~

OK, now, let's try to start both the joystick and random control _at the same
time_.

~~~
random_def!
joystick_def!
~~~

Ouch, a lot of cryptic information there. The most interesting bit is at the
top:

~~~
= planning joystick_def failed with
| cannot deploy the following tasks
| RockTutorial::RockTutorialControl:0x4714400{conf => [default]}[]
|   child rock of Tutorials::RockControl:0x46f7120{conf => [default]}[]
| RockTutorial::RockTutorialControl:0x4714400{conf => [default]}[]: some deployments exist, but they are already used in this network
|   task rock_tutorial from deployment Deployments::RockTutorial on localhost
|     already used by RockTutorial::RockTutorialControl:0x334ba68{orocos_name => rock_tutorial, conf => [default]}[]: child rock of Tutorials::RockControl:0x47432f0{conf => [default]}[]
~~~

The other error messages are just consequences of this one. This error message
tells you that there actually *are* some deployments declared for
RockTutorial::RockTutorialControl, but that they are already used.

Indeed, both the random and joystick definitions need a
RockTutorial::RockTutorialControl component. Since they use it in a different
way (the command port gets its data from different sources), syskit requires
more than one deployment and it fails.

Stop the controller with CTRL+C and the shell with "exit", and pass on to the
next tutorial.

Summary
-------

In this tutorial you learned:

 * how to _define_ some ready-to-deploy networks, and how to use the shell to
   start them
 * how to manage the tasks started through the shell, in particular to support
   development of components
 * what happens if you try to deploy multiple tasks that can't be deployed at
   the same time

The [next tutorial](500_config_files.html) will introduce you to the configuration file management.

