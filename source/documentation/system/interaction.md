---
title: Running and interacting with a Roby/Syskit system
sort_info: 600
pkg: tools/roby
---

Syskit bundles are first and foremost Roby applications. As such, the tools and
methods to interact with a Roby application also apply to the ones that are
using syskit. You should therefore have first a look at what can be done with a
Roby application. In particular, you should look at the [Roby action
interface]({% api %}/building/actions.html) and the ways [one can interact
with a running Roby application]({% api %}/interacting/index.html)

What this page is going to be about is how syskit fits inside these concepts:
how [profiles](profiles.html) are mapped to Roby [actions]({% api %}/building/actions.html), and what it means to deploy subsystems through
the action interface.

Using profiles as Roby actions
------------------------------
_In fine_, when using syskit, one designs a "master" profile in which all the
behaviours / needed subsystems are defined. This master profile can then be
injected in an action interface class (usually the main interface in
models/actions/main.rb) with

~~~ ruby
class Main < Roby::Actions::Interface
  use_profile MyProject::MyMasterProfile
end
~~~

This defines actions for all [definitions](profiles.html) and
[devices](devices.html) this profile defines. The definitions are suffixed with
_def and the devices with _dev.

Deploying subsystems through the action interface
-------------------------------------------------

Since definitions and devices are now actions, they can be [used normally in the
action interface]({% api tools/roby %}/interacting/index.html). One can
therefore start a device (for instance for a small data gathering session) on
the command line with:

~~~
roby run -rmyrobot left_camera_dev!
~~~

Alternatively, the shell interface allows to start and stop specific
subsystems using the action interface and job systems. Start a shell to connect
to a running syskit/roby controller with

~~~
roby shell
~~~

and then:

~~~
left_camera_dev!
jobs
kill_job 1
~~~

Finally, one can add actions-as-missions in the code (for instance in the
controller file to start some services "by default") with

~~~ ruby
Robot.left_camera_dev!
~~~

What is important to understand at this point is that syskit compute the
__merged__ network of all the required subsystems. I.e. if you start two big
networks that _share_ parts, these parts will actually __be__ shared in the final
component network, without any additional work from your part. This video tries
to explain this process:

TODO: video

What happens if you try to start a new new subsystem that __cannot__ be merged with the
running network ? This happens for instance if the two networks are trying to use
the same device in different configurations, or if they have incompatible [frame
transformation configurations](../data_processing/transformer_roby.html)
When this happens, the __newly started__ network will not be deployed, and the
rest will stay the same. The error message will try to give you __some__
insights as to why the deployment is not possible, but we have to admit that,
right now, the explanation requires quite a bit of thinking on your part. This
is something we try to improve in the long run.

