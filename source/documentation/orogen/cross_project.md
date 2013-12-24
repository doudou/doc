---
title: Cross-project dependencies
sort_info: 500
--- name:content pipeline:tags,markdown,blocks

Each oroGen project can be separated in three things:

 * a _type plugin_ for RTT, that supports the project's defined types in the
   RTT, providing marshalling/unmarshalling paths for XML and CORBA for
   instance. In RTT terms, this is called the _typekit_.
 * a _task library_, which contains the code for all tasks contexts that the
   project defines.
 * one binary for each defined deployment.

In its cross-project support, oroGen brings forward code reuse by allowing to
transparently import and use _types_ and _task contexts_ defined by other
projects.

Under the hood: the use of pkg-config
-------------------------------------
All cross-project dependencies are managed in oroGen by using
[pkg-config](http://pkg-config.freedesktop.org/wiki/). This means that oroGen
will generate and install the pkg-config files necessary for it to work, namely
one per parts of the oroGen project (typekit, task library and each deployment), and
install them.

Nonetheless, it also means that these pkg-config files *must be available to
pkg-config when you run orogen on a new project*.

pkg-config searches for package definitions the standard locations:

* /usr/local/lib/pkgconfig
* /usr/lib/pkgconfig

It also searches in the directories listed in the <tt>PKG_CONFIG_PATH</tt>
environment variable. If you install your orogen projects in a non standard
location, you must add this location to <tt>PKG_CONFIG_PATH</tt>. In a bash-like
shell, this is done with:

~~~ text
export PKG_CONFIG_PATH=/my/installed/prefix/lib/pkgconfig:$PKG_CONFIG_PATH
~~~

What is available on my system ?
--------------------------------
One common task is to find out "what is already there ?", "what is exactly the
definition of type X ?" and so on. The [oroinspect
tool](../runtime/oroinspect.html) from orocos.rb allows you to find out.

Importing types
---------------

To import and define the types defined by another project, just add the
following at toplevel:

~~~ ruby
import_types_from "project_name"
~~~

This will import the types in the current project, allowing you to use them in
following task context definitions.

Importing task context definitions
----------------------------------

To import task contexts defined by another project, just add the following at
toplevel:

~~~ ruby
using_task_library "project_name"
~~~

Once it is done, you can use the imported task contexts in the local project to:

* [subclass them](task_inheritance.html)
* [use them in a deployment](deployment.html)

Note that oroGen will load the project's typekit, since this typekit is required
by the task library itself. You therefore don't need to load the project's
typekit manually.
{: .warning}

Using external libraries which use pkg-config {#using_library}
---------------------------------------------
If you want to use types from a library that provides a pkg-config file, just
add

~~~ ruby
using_library 'base-types'
~~~

where "base-types" is the name of the installed pkg-config file (see the Rock
base package). The headers from that library will be made available, so you can
do

~~~ ruby
import_types_from "base/pose.h"
~~~

where base/pose.h is a header installed by the library.

Using external libraries which do not use pkg-config
----------------------------------------------------
oroGen provides only support for libraries that use pkg-config. 

Hence, if you do **not** want to use pkg-config but use types provided by a library in your task
interface, you will have to modify CMakeLists.txt to look for that library, add
the include and library dirs. Moreover, if needed, you will also have to modify
tasks/CMakeLists.txt to link to that library.

If you do want to use the type provided by this library in your task interface,
you will have to:

 * first, modify the cmake code as described above
 * second, in the oroGen file, add the relevant include dirs. For instance,

~~~ ruby
incdir = Set.new
# Write code that detects where the library is and gets
# its include dirs. Add the include dirs in "incdir"
typekit(true).include_dirs |= incdir
~~~

