---
title: Moving to bundles
sort_info: 100
---

Abstract
--------

The following three tutorials will implement the same "rock controlled by a joystick" than
[previous tutorials](../tutorials/510_joystick.html), but using the model-based approach.

First of all, we'll introduce the concept of bundles.

In Rock, bundles offer a "functional" view to the available functionality, i.e.
instead of viewing only single components, bundles gather scripts,
configuration files and tools which are needed to run (sub)systems.

In practice, bundles are Rock packages that can contain the following:

 * ruby scripts (to run sets of components)
 * models (including, but not limited to, for the system management layer)
 * configuration files
 * data converter and data analysis scripts
 * datasets needed to run the system (as e.g. location information, maps, ...)
 * ...

This list is incomplete, since bundles can contain arbitrary content and tools which support (sub)systems.

See [this page](http://rock.opendfki.de/wiki/WikiStart/Standards/RG7) for more
information on bundles.

In this tutorial, we will create a new bundle 'tutorial' and start developing in it.

It is assumed that your autoproj installation can be found in ~/dev.

Create the bundle
-----------------

Create a new directory bundles/tutorial from the root of the rock
installation by going in bundles/ and doing

~~~
cd ~/dev/bundles
rock-create-bundle tutorial
cd tutorial
syskit init
# ONLY FOR THIS TUTORIAL
# This normally not something you want to do
mv config/bundle.yml config/bundle-yml.bak
~~~

Logs in bundles
---------------
When working with bundles, the component output, data logs and system management
logs are always saved in the logs/ folder, using a subfolder which matches the
time at which the process that generated the logs _started_ (for example:
20111025-1105 for 25/10/2011 11:05). The directory containing the latest logs
(or the logs that are currently being generated) are symlinked from logs/current.

Move on to the next tutorial
------------
We're setup, let's now dive into [building a model-based
application](200_first_composition.html)

