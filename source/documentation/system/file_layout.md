---
title: Syskit-enabled Bundles
sort_info: 600
---

When using syskit, the bundles are first Roby applications. As such, the
description [of the file layout in a Roby application]({% api tools/roby %}/building/file_layout.html) applies.

This page will start by explaining how one turns a plain Roby application into a
syskit-enabled bundle. We will then summarize parts that are added in addition
to the Roby layout in a Roby application that uses syskit.

Creating Syskit-enabled Roby applications
-----------------------------------------

The bundles created in Rock are already syskit-enabled, i.e. if you do

~~~
rock-create-bundle mybundle
cd mybundle
roby init
~~~

The resulting application is already using syskit.

However, if you wrote a "plain" Roby application and want to use syskit in it,
you should enable the syskit plugin *and* pick the temporal scheduler. Edit
config/init.rb and add:

~~~ ruby
Roby.app.using 'syskit'
require 'roby/schedulers/temporal'
Roby.scheduler = Roby::Schedulers::Temporal.new
~~~

Once you have done that, run

~~~
roby init
~~~

To add templates for syskit-specific directories and files.

Syskit-specific File Layout
---------------------------
This section deals with the parts of the file layout that are specific to
syskit. Refer to [this page]({% api tools/roby %}/building/file_layout.html) for the
generic Roby parts

config/orogen/
: YAML configuration files for the oroGen task contexts. The file names should
  always be the name of the corresponding oroGen task context model (i.e.
  xsens_imu::Task.yml for the xsens_imu::Task). See [this
  page](../runtime/configuration.html) for more details

models/profiles/
: [profile definitions](profiles.html). The file names should be the snake_case
  version of the profile's name. For instance, an AvalonAUV profile should be
  stored in models/profiles/avalon_auv.rb.

models/blueprints/
: definitions of compositions and data services. One composition should be
  defined in a single file, and the file names should be the snake_case
  version of the composition name. For instance, a PoseEstimator composition should be
  stored in models/blueprints/pose_estimator.rb. The data services should be
  grouped "by topic" (e.g. all pose-related data services are stored in the rock
  bundle under models/blueprints/pose). Finally, device models should always be
  defined in a models/blueprints/devices.rb file, following the structure stored
  in rock bundle's models/blueprints/devices.rb. The device file from other
  bundles should be explicitly loaded there, prefixing the models/ folder by the
  bundle name, as e.g.

  ~~~ ruby
  require 'rock/models/blueprints/devices'
  ~~~

models/orogen/
: extensions to task context models. The file names must match the oroGen
  project name of the extended tasks. These files are loaded on-demand, when the
  corresponding oroGen project is loaded. See [this page](task_contexts.html) for more details.

