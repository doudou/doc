---
title: Basics
sort_info: 0
group: tutorials
---

Rock Tutorials
--------------------------
Welcome to the Rock tutorials. The tutorials are intended to allow practitioners and developers in the robotics field to start working with the Robot Construction Kit. 
To get the most out of the tutorials, you should be familiar with basic software development in C++. The tutorials will not teach you C++ or software development in general, but they provide you with a guideline for developing components within Rock. 

What to expect from the basic tutorials
----------------------------
The tutorials are structured as follows.
The first set of tutorials covers the basics for working with Rock, and will teach you on how to create a library, embed into an Orocos component using orogen, and finally deploy it, i.e. build and run. 
Further, the tutorials will teach you how to examine your data, how to log data from your running components and view them afterwards.
The complete set is wrapped up by a holistic example 'Rolling Rock'


Quick Start.
--------------------------
In order to start with the tutorial you require a minimal but working
installation of Rock. Just follow the installation procedure as described in the
[step-by-step installation guide](/documentation/installation.html).

To check if you are ready for your first tutorial open your console and enter 'which rock-create-lib' and verify that the command returns a full path to the 'rock-create-lib'-script. 

Tutorials Outline
-----------------

The tutorials work along a typical Rock-workflow, and will give you a guideline on how to approach building software for your robotic system. 
The typical workflow starts with implementing functionality in a library, allowing for a framework independant implementation, and proceeds further to generating an orogen (thus framework specific) component, and gives you some details on how to enhance your data analysis using logging and data visualization ([more](/documentation/orogen/index.html)).

The showcase example allows you to repeat a more complex example to deepen your knowledge of how to use Rock, while you can still pick dedicated topics from the advanced tutorials. 

**Basics**

The basic tutorials cover how to get started: create new code, integrate it in
the build system and then in components.

 * [Create a C++ library package](100_basics_create_library.html)
 * [Create a component](110_basics_create_component.html)
 * [Configure your components](120_basics_configure_component.html)
 * [Run the components together](130_basics_connect_components.html)

If you want to know how to find and install packages have a look at the following:
 
 * [Installing packages](190_installing_packages.html)

How to use logging:

 * [Displaying data, logging and replay](200_display_logging_and_replay.html)

**Showcase Example**

This example covers, in principle, the same subjects as the basic tutorials,
but with a more complex (and more realistic) example. You will learn how to
browse and find components in the Rock component collection.

 * [Simple simulation of a robot](500_simulate_a_robot.html) 
 * [Integrating a Joystick](510_joystick.html)
 * [Integrating a Virtual Joystick (for those that don't have a physical
   one)](520_virtual_joystick.html)

Installing the tutorial results {#installing}
-------------------------------
In case you don't want to write all the package yourself, the Rock tutorials have been packaged so that you can easily retrieve them.
If you want to add the tutorials to your installation add the package set to
your autoproj/manifest.

autoproj/manifest should look like:

~~~ text
package_sets:
   - gitorious: rock-toolchain/package_set
   - gitorious: rock/package_set
   - gitorious: rock-tutorials/package_set

layout:
   - rock.base
   - rock.toolchain
   - rock.tutorials
~~~

