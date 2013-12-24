---
title: Using Rock packages outside of Rock
sort_info: 200
---

As we state many times when talking about Rock, most of rock packages are meant
to be usable outside of Rock.

The cornerstone to that is to have separated the libraries -- which are pure C++
libraries using standard tools (CMake, pkg-config) to build -- from the
"integration framework", which is oroGen in our case.

Anyway, this page deals with the steps needed to build CMake packages outside of
Rock, which mainly means "without using the Rock build system (autoproj)"

Preparations
------------
Just to be one the safe side, you will need the following elements to be able to
build Rock packages:

 * CMake
 * gcc / g++
 * pkg-config

Additionally, some packages will require autotools / automake to build

The first thing you will need to do is install the base/types package. Check it
out

~~~ text
git clone git://gitorious.org/rock-base/types.git
~~~

and install it

~~~ text
cd types
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$HOME/dev/install ..
make install
~~~

The previous step will install everything but the Spline classes, which are
needed for instance by the trajectory following / motion planning components. If
you need the Spline class, install the [external/sisl]({% pkg external/sisl %}) package beforehand.
{: .note}

Once you have installed this package, you will also need to set a few important
environment variables:

~~~ text
export CMAKE_PREFIX_PATH=$HOME/dev/install
export PKG_CONFIG_PATH=$HOME/dev/install/lib/pkgconfig:$HOME/dev/install/share/pkgconfig:$HOME/dev/install/lib64/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$HOME/dev/install/lib:$HOME/dev/install/lib64:$PKG_CONFIG_PATH
export PATH=$HOME/dev/install/bin:$PATH
~~~

Usually, it is best practice to put this line in an env.sh line and source it
automatically in e.g. your $HOME/.bashrc:

~~~ text
source $HOME/dev/env.sh
~~~

How to build the other packages
-------------------------------
Since you are trying to build Rock packages without autoproj, you will have to
do autoproj's job, namely:

 * install each package dependency (OS packages and need-to-be-built packages)
 * configure and build each package

The rest of this page will outline these steps for you

__To install the package dependencies__ the best way is to have a look on the
[package directory](/package_directory.html). The dependencies of each package
are listed there.

__To configure and build the package__, the steps are essentially the same than
for base/types, namely:
 
 * checkout the package. The URL is listed in the package directory page about
   the package you have to install
 * configure it by doing the following inside the package source:

~~~ text
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$HOME/dev/install ..
~~~

 * finally, build and install

~~~ text
make install
~~~

