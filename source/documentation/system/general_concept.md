---
title: General Concept
sort_info: 100
---

The general concept in Syskit, the rock system management layer, is to provide
requirements on what should run, and let the management layer (1) generate the
network that is needed to run it and (2) let it handle the runtime aspects
(configuration / reconfiguration, starting, monitoring)

It would be a __very__ good idea to follow [the
tutorials](../system_management_tutorials/index.html) before you continue with
this documentation.
{: .warning}

Bundles
-------
Bundles in Rock are used to gather all that form a consistent robot application
together. Outside of syskit, they gather configuration files ([for task
contexts](../runtime/configuration.html) and for outside tooling such as the
[transformer](../data_processing)

When using syskit, they also will contain all the syskit-specific models and
application information. Whenever you start a new syskit-based application,
create a new bundle and convert it to a Syskit/Roby application with:

~~~ ruby
rock-create-bundle desired/path/to/my/bundle
cd desired/path/to/my/bundle
roby init
~~~

Converting an existing bundle is simply done by running "roby init" in it.

Bundles can depend on each other, allowing to reuse models from one to the next.
This is done by editing config/bundle.yml and adding a line in the
bundle/dependencies section:

~~~ yaml
bundles:
    dependencies:
        - rock
        - rock_ugv_nav
~~~

All newly created bundles depend on the Rock bundle by default.

When adding a bundle dependency, don't forget to add the corresponding package
in the bundle's manifest.xml file. Bundles are usually stored in the bundles/
folder, so a bundle called "X" maps to a package called "bundles/X"
{: .warning}

Whenever it applies, the documentation will state where the bundle directory
structure each parts of a syskit application should be placed. Then, this is
going to be summarized [at the end of this guide](file_layout.html).

Components
----------
In Syskit, a _component_ designates a black box
that has inputs and outputs, and can report about its execution. In practice, it
can be:

 * a _task context_, i.e. an actual component that is [defined in oroGen and
   implemented in C++](../orogen)
 * a _data service_, which is an abstract placeholder for "concrete" components
   (compositions or task contexts).
 * a _composition_, which represents a way to bind components together to form
   a new component

The first part of this documentation will guide you through _defining_ these
components.

 * [task contexts](task_contexts.html) are automatically imported from oroGen descriptions.
   Because of the [naming convertion rules](index.html#naming_convertion),
   the Roby model that represents the oroGen task context xsens_imu::Task is
   called XsensImu::Task.
 * [compositions](compositions.html) are defined as subclasses of Syskit::Composition.

~~~ ruby
class CompositionModelName < Syskit::Composition
  <definitions>
end
~~~

 * [data services](data_services.html) are defined using the following code block. This block defines
   a ServiceModelName __Ruby module__ in the current module that represents the
   service model.

~~~ ruby
data_service_type "ServiceModelName" do
  <definitions>
end
~~~

The second part will tell you all about building systems using these parts.

Browsing {#browsing}
--------

All models defined in Syskit can be browsed using the syskit command. It gives
all the information about the task contexts and types that are currently
installed in your rock environment, as well as about compositions and
components. Additionally, it shows where (file and line) a particular model is
defined and shows syntax or modelling errors. When you are developping new
models, simply press the "reload" button until you fixed all errors that showed up.

To run this tool, simply go into the bundle you are working on and run

~~~
syskit browse
~~~

