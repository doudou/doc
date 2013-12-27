---
title: Introduction
menu_title: System Management
sort_info: 40
group: core
---

While one can use Syskit, Rock's system management layer, without knowing the
underlying execution framework, Roby, reading both the
[concept](http://rock-robotics.org/api/tools/roby/concepts/index.html) section
of the Roby user's guide, and followed the
[tutorial](http://rock-robotics.org/api/tools/roby/tutorial/index.html) in the
same guide become beneficial when the complexity of your application grows.
{: .note}

Advanced System Deployment
--------------------------

Roby is a plan management / supervision system. The Rock toolchain offers
a Roby plugin that allows to manage Orocos component networks in Roby, thus
leveraging its supervision capabilities. See [the Roby user's
guide]({% api tools/roby %}) for details.

In practice, what does this plugin offers ?

 * have a model-based component deployment. Deploying medium-sized networks of
   components (> 10) is often hard to do right. It is even harder to be sure
   that modifications to the component interfaces will not break the
   deployments.
 * have a model-based adaptation of the component network. While it is hard to
   deploy medium-sized component networks, it is even harder to modify the
   networks while still being sure that you don't break anything.


Tutorials
---------

[The tutorials](../system_management_tutorials/index.html) are a great introduction to the
plugin's concepts and development workflow.

Naming conventions {#naming_convertion}
------------------
In Ruby, the language in which both oroGen and Syskit are
implemented, the norm is to use CamelCase to write class names. An actual
constraint that is part of the language is that the class names __must__ start
with an uppercase letter.

To match this convention, the system management layer, when needed, converts
snake_case names to CamelCase. For instance:

    xsens_imu > XsensImu
    iodrivers_base > IodriversBase

A reminder about this convertion will be present in the documentation whenever
it applies.

Models, classes and instances
-----------------------------
In the Roby system, models and instance of the models are mapped to Ruby's
classes and objects in a very straightforward manner: a model is represented as
a class or module (depending of what kind of thing this model describes), and an
instance of a model is an object of the corresponding class.

For instance, the Roby model that represents a xsens_imu::Task task context is a
XsensImu::Task class, which is a subclass of the
[Syskit::TaskContext class]({% yard tools/syskit Syskit::TaskContext %}). The list of
ports defined on all xsens_imu::Task task contexts can then be obtained for
instance with [XsensImu::Task.each_input_port]({% yard tools/syskit Syskit::TaskContext#each_input_port %}) for instance. At runtime, running
xsens_imu::Task task contexts are then represented by objects of class
XsensImu::Task, i.e. running_xsens_imu_task.class == XsensImu::Task.

