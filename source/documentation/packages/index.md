---
title: Managing Packages
sort_info: 20
group: intro
---

There are mainly four types of packages in Rock:

 * plain C++ libraries, in which most of the functionality is implemented
 * Ruby libraries
 * vizkit widgets (or collections of)
 * oroGen projects

This page is an overview of these four types, and give pointer towards more
information about how to create and manage them

Naming scheme and directory structures is detailed
[here](package_structure.html)

In all four cases, high-level information about the package (including
dependencies w.r.t. other packages) is added to the
[manifest.xml](../autoproj/advanced/manifest-xml.html) file in the top directory
of the package.

Plain C++ Libraries
-------------------

The C++ libraries are plain CMake packages. When developed in relation to Rock,
you are encouraged to use the [Rock CMake macros](cmake_macros.html). 

**Note:** These macros are meant as helpers for packages developed in Rock.
However:

 * they are simply wrappers on top of normal CMake target definitions, i.e. the
   normal CMake functionality applies on the targets defined by these macros
 * their usage is +not+ mandatory (even though it is recommended)
{: .warning}

This is not a hard requirement. Using the CMake macros and the CMake provided by
Rock only ensures that you are following the [Rock guidelines on C++ library
packages](http://rock.opendfki.de/wiki/WikiStart/Standards/RG4)

C++ library packages can quickly be created using <tt>rock-create-lib</tt>. See [this tutorial](../tutorials/100_basics_create_library.html) for detailed information.

Information about the package (including dependencies w.r.t. other packages) is
added to the [manifest.xml](../autoproj/advanced/manifest-xml.html) file in the
top directory of the package.

Ruby libraries
--------------
Ruby libraries follow the general structure for RubyGem packages. It is detailed
on the [Rock guidelines on Ruby packages](http://rock.opendfki.de/wiki/WikiStart/Standards/RG5).

Information about the package (including dependencies w.r.t. other packages) is
added to the [manifest.xml](../autoproj/advanced/manifest-xml.html) file in the
top directory of the package.

vizkit Widgets
--------------
vizkit widget packages are C++ library packages that define Qt widgets, and export
these widgets in a way that make them usable by vizkit, the Rock visualization
library. Have a look at the
[tutorials](../advanced_tutorials/210_data_visualization.html) and the [associated
documentation](../graphical_user_interface)

vizkit 3D Plugins
--------------
vizkit 3D Plugin packages are C++ library packages that define plugins usable by
vizkit's Vizkit3DWidget, allowing to display data in a 3D view using
OpenSceneGraph. Have a look at the
[tutorials](../advanced_tutorials/600_vizkit_plugin.html) and the [associated
documentation](../graphical_user_interface)

oroGen projects
----------------
oroGen projects are packages which contain a toplevel <tt>.orogen</tt> file
which contain description of components. See [this
tutorial](../tutorials/110_basics_create_component.html) and [the associated documentation](../orogen) for more
information.
