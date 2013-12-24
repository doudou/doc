---
title: Package Structure
sort_info: 150
---

Below, oroGen refers to the tool that is used in Rock to develop components
{: .note}

Categories
----------
The Rock packages are split into 6 main categories

* **base** base types, CMake script repositories, ...
* **drivers** packages that are related to device drivers: drivers themselves,
  and common libraries that ease their development
* **slam** packages that are related to localization and mapping both separately
  and as SLAM
* **control** packages that are related to motion control
* **planning** packages that are related to path and task planning
* **toolchain** packages that are related to the toolchain
* **image_processing** packages that are related to image processing

On gitorious, each category has its own project, called rock-NAME (for instance,
rock-drivers for the drivers).

When installed, packages go into folders that correspond to their main category.
Moreover, the oroGen-independent packages are installed directly under that
folder, while the oroGen components are installed in an 'orogen' subfolder.

For instance, the driver libraries are stored in drivers/ and the driver oroGen
components in drivers/orogen/

 * no other subdirectories other than "orogen" can be created under the main
   categories
 * opening new categories is indeed possible but **must** be discussed first on
   the mailing list.

Naming
------

 * snake_case for all path components (categories and package names)

Libraries and oroGen components
-------------------------------
The most important design factor in the Rock package structure is that
functionality should be implemented in a way that is **independent from any
integration framework**

In practice, it means that for most functionality, there will be two Rock
packages:

 * the "library" part which usually is a C++ library, that uses CMake to build,
   with maybe some dependencies on other C++ libraries (other Rock libraries
   and/or "common" libraries)
 * the "orogen" part which is providing an integrated oroGen component for the
   libraries.

For instance, in the [rock-drivers](http://gitorious.org/rock-drivers)
subproject, there is [the Hokuyo driver
library](http://gitorious.org/rock-drivers/hokuyo) and the corresponding [oroGen
component](http://gitorious.org/rock-drivers/orogen-hokuyo).

Mapping between local installation and gitorious repositories
-------------------------------------------------------------

A library (non-oroGen package) installed on the local system as

    category/package_name

will be managed in a gitorious repository called

    http://gitorious.org/rock-category/package_name

**Exception** the toolchain packages are installed in tools/ but are managed in
the rock-toolchain project
{: .warning}

An oroGen package installed on the local system as

    category/orogen/package_name

will be managed in a gitorious repository called

    http://gitorious.org/rock-category/orogen-package_name

When a one-to-one mapping exists between a library and an oroGen package (e.g.
the hokuyo driver library and the hokuyo oroGen component), both will have the
same "package_name". For instance, when installed

    drivers/hokuyo
    drivers/orogen/hokuyo

and on gitorious:

    http://gitorious.org/rock-drivers/hokuyo
    http://gitorious.org/rock-drivers/orogen-hokuyo


