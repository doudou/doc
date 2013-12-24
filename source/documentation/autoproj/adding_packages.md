---
title: Adding packages
sort_info: 50
---

This is a summary of the ways you can ask autoproj to build a package for you.

The first two ways described are for **local** packages, i.e. packages that you don't share
with the rest of the world. The third one tells you how to share it efficiently
with other people

Building a new package
----------------------
When you create a new package, and want autoproj to build it, you can simply add
it to the autoproj's main manifest. It will be picked up and built by autoproj.

For instance, if I create a new Rock oroGen driver in

  drivers/orogen/new_driver

then I would edit autoproj/manifest and add

  - drivers/orogen/new_driver

to the layout: section. 
The next time one calls 

autoproj build
{: .commandline}

autoproj will announce that the new
package has been picked up with a message looking like

    auto-adding drivers/orogen/new_driver as an oroGen package

Importing a package from a VCS
------------------------------
The method above only works with packages that are already checked out. To add a
new package and have autoproj check it out for you, you need to basically do two
things:

 * declare it in an autobuild file (*.autobuild)
 * add VCS information for it (i.e. "where to get it")

A first step, if you don't want to share that package to a wide audience, is to
add it to the local package set

 * [register it](advanced/autobuild.html) in
   <tt>autoproj/local.autobuild</tt>
 * [give version control information](advanced/importers.html) for it in
   <tt>autoproj/overrides.yml</tt>

Sharing package definitions with the rest of the world
------------------------------------------------------

To do that, you will either have to move the package definition to a separate
package set (usually one of those that are in autoproj/remotes/), or to create
your own package set]

For the first solution, you will have to move the package definition from
autoproj/local.autobuild you created in the previous step to an autobuild file
in the package set directory (the file name does not matter as long as it ends
with .autobuild). Moreover, you will have to move the importer definition from
autoproj/overrides.yml to the package set's source.yml file.

For instance, to add a package to the rock.drivers package set in a Rock
installation, one would move the autobuild file to
autoproj/remotes/rock.drivers/ and add the relevant VCS information to
autoproj/remotes/rock.drivers/source.yml

How to create new package sets is [described here](advanced/creating_pkg_set.html)

