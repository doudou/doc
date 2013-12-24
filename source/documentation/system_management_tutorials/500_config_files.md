---
title: Configuration files
sort_info: 500
---

The result of this tutorial can be found in bundles/tutorials_scripts if you
followed the instructions at the bottom of [this page](../tutorials/index.html)
{: .note}

Abstract
--------
This tutorial will show you how to use configuration files within bundles and how to apply configurations
to compositions and components.

Presentation
------------
Configuration files are YAML files in which the properties are listed and some
values are assigned to them. For instance, when looking at the interface of the
random motion generator:

~~~
[...er/bundles/tutorial]% rock-inspect --show-tasks tut_brownian                
==========================================================
Task name:  tut_brownian::Task
defined in tut_brownian
----------------------------------------------------------

 ------- tut_brownian::Task ------
 no documentation defined for this task context model
 subclass of RTT::TaskContext (the superclass elements are displayed below)
 Ports
   [out]cmd:/base/MotionCommand2D
   [out]state:/int32_t
 No dynamic ports
 Properties
   max_angular_speed:/double, default: 0.314159265358979
   max_speed:/double, default: 1.5
   min_speed:/double, default: 0.5
   straight_duration:/double, default: 5
   turn_duration:/double, default: 5
 No attributes
 No operations
~~~

We have 5 properties that configure our component. Let's use a non-default value for the max_speed.

First, let's use a tool to generate a file filled with default values. To do this, we first
create configuration directory for our oroGen components in bundles/tutorials and then use the
tool _oroconf_ to generate default configuration files with the option:

~~~
oroconf extract tut_brownian::Task
~~~

The new template file is generated in the config/orogen subfolder of the bundle,
with a file name that matches the oroGen model name (here,
config/orogen/tut_brownian::Task.yml)

The YAML files in config/orogen/ **must** follow the modelname.yml template to be
picked up by the system. In this case, the generated file has automatically be
called tut_brownian::Task.yml
{: .warning}

Have a look at the freshly created config/orogen/tut_brownian::Task.yml, and
compare it to the values reported by rock-inspect.

Let's now start a controller and start the 'random' definition. And have a look
at the configuration values using rock-display. They should match the values in
the configuration file.

~~~
syskit run scripts/03_defines.rb random_def!
~~~

As you see here, it is possible to specify definitions on the command line of
syskit run, to avoid having to go through the shell for simple cases.
{: .note}

Multiple Component Configurations
--------------------------------
The configuration files can contain multiple blocks separated by three dashes
(---) and a name. Let's add two new configurations. Change
config/orogen/tut_brownian::Task.yml to look like:

~~~ yaml
 --- name:default
 # no documentation available for this property
 max_angular_speed: 0.314159265358979
 # no documentation available for this property
 max_speed: 1.5
 # no documentation available for this property
 min_speed: 0.5
 # no documentation available for this property
 straight_duration: 5.0
 # no documentation available for this property
 turn_duration: 5.0
 --- name:slow
 max_speed: 0.5
 min_speed: 0
 --- name:fast
 max_speed: 4
 min_speed: 2
~~~

If nothing else is specified, the 'default' configuration is applied to newly
configured components. If it does not exist, then no properties are written.
When a different configuration is needed, __configuration overlays__ can be
selected: the parameters defined by some sections are overriden by other(s). For
instance, the 'default,slow' configuration contains all values from default
except for max_speed and min_speed that are set to the values in the 'slow'
configuration.

In a definition, the requested configuration is selected with

~~~ ruby
define 'random_slow', Tutorials::RockControl.use(TutBrownian::Task.use_conf('default', 'slow'))
~~~

Which configuration is actually applied can be visualized in 'syskit
instanciate' (the conf: flag) and in roby-display (simply double-click on the
task you are interested in to see its arguments). Finally, you can see it in the
console output of syskit run (only the relevant output lines are shown below).

~~~
# syskit run 03_defines.rb random_slow_def!
Bundles[INFO]: Active bundles: tutorial
/media/Data/dev/rock/master-full/tools/syskit/lib/syskit/models/deployment.rb:83: warning: already initialized constant Joystick
20:19:20.540 (Robot) applied configuration [default, slow] to /brownian
20:19:20.540 (Robot) setting up TutBrownian::Task:0x2d69690{orocos_name => brownian, conf => [default, slow]}[]
~~~

Multiple Composition Configurations
----------------------------------
The information in the previous section covered the components.  One can also
define configurations on compositions. Since compositions do not actually have
properties, they are defined differently though. Indeed, a composition
configuration specify how the composition's children should be configured (i.e.
it "forwards" some configuration selection).  For instance, the following
declaration announces that Tutorials::RockControl has a 'slow' configuration,
in which the 'cmd' child (the Tutorials::CommandGeneratorSrv) should be
configured with 'default,slow'. The configuration of the RockTutorialControl
task is left open.

~~~ ruby
module Tutorials
  class RockControl < Syskit::Composition
    # Any command generator
    add CommandGeneratorSrv, :as => "cmd"
    # And one rock
    add RockTutorial::RockTutorialControl, :as => "rock"
    # Create any unique connection possible, by matching
    # input and output ports of the same data type. If
    # ambiguities exist, an error is generated
    cmd_child.connect_to rock_child
  
    conf 'slow', cmd_child => ['default', 'slow']
  end
end
~~~

These configurations are selected in the same way. Note, however, that they cannot be overlaid.

~~~ ruby
define 'random_slow2',
  Tutorials::RockControl.use(TutBrownian::Task).use_conf('slow')
~~~

__Advanced__ The configurations are part of the deployment constraints. This means, in
practice that if two deployments request a task to be deployed with two different
configurations, the deployment will fail.
{: .note}

There is, for now, no ways to select configurations from the shell.

Summary
-------
In this tutorial you learned:

 * how to generate configuration files
 * how to make them part of your definitions, at both the component and composition levels

The [next tutorial](600_more_complex.html) will introduce you to handling some more complex setups.

