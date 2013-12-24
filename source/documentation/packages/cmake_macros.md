---
title: Rock CMake Macros
sort_info: 200
---

Initialization
--------------

Initialization must be done at the top of the toplevel CMakeLists.txt file. It
is done with:

~~~ text
cmake_minimum_required(VERSION 2.6)
include($ENV{ROCK_CMAKE_MACROS}/Rock.cmake)
rock_init(dummyproject 0.1)
rock_standard_layout()
~~~

The ROCK_CMAKE_MACROS environment variable must be set externally for the CMake
code to find the file that defines the macros. Rock's autoproj build
configuration does that automatically.

The signature of rock_init is:

rock_init(project_name project_version)
{: .cmdline}

The <tt>rock_standard_layout()</tt> call looks for sub-directories of the
standard C++ package layout and sets it up accordingly. See
[the Rock guidelines](http://rock.opendfki.de/wiki/WikiStart/Standards/RG4) for
information about the standard package directory structure

Executable Targets (<tt>rock_executable</tt>)
---------------------------------------------

<pre>
rock_executable(name
    SOURCES source.cpp source1.cpp ...
    [DEPS target1 target2 target3]
    [DEPS_PKGCONFIG pkg1 pkg2 pkg3]
    [DEPS_CMAKE pkg1 pkg2 pkg3]
    [MOC qtsource1.hpp qtsource2.hpp])
</pre>

Creates a C++ executable and (optionally) installs it

The following arguments are mandatory:

**SOURCES**: list of the C++ sources that should be built into that library

The following optional arguments are available:

**DEPS**: lists the other targets from this CMake project against which the
library should be linked

**DEPS_PKGCONFIG**: list of pkg-config packages that the library depends upon. The
necessary link and compilation flags are added

**DEPS_CMAKE**: list of packages which can be found with CMake's find_package,
that the library depends upon. It is assumed that the Find*.cmake scripts
follow the CMake accepted standard for variable naming

**MOC**: if the library is Qt-based, this is a list of either source or header
files of classes that need to be passed through Qt's moc compiler.  If headers
are listed, these headers should be processed by moc, with the resulting
implementation files are built into the library. If they are source files, they
get added to the library and the corresponding header file is passed to moc.

Library Targets (<tt>rock_library</tt>)
---------------------------------------

<pre>
rock_library(name
    SOURCES source.cpp source1.cpp ...
    [DEPS target1 target2 target3]
    [DEPS_PKGCONFIG pkg1 pkg2 pkg3]
    [DEPS_CMAKE pkg1 pkg2 pkg3]
    [HEADERS header1.hpp header2.hpp header3.hpp ...]
    [MOC qtsource1.hpp qtsource2.hpp]
    [NOINSTALL])
</pre>

Creates and (optionally) installs a shared library.

As with all rock libraries, the target must have a pkg-config file along, that
gets generated and (optionally) installed by the macro. The pkg-config file
needs to be in the same directory and called package_name.pc.in

The following arguments are mandatory:

**SOURCES**: list of the C++ sources that should be built into that library

The following optional arguments are available:

**DEPS**: lists the other targets from this CMake project against which the
library should be linked

**DEPS_PKGCONFIG**: list of pkg-config packages that the library depends upon. The
necessary link and compilation flags are added

**DEPS_CMAKE**: list of packages which can be found with CMake's find_package,
that the library depends upon. It is assumed that the Find*.cmake scripts
follow the CMake accepted standard for variable naming

**HEADERS**: a list of headers that should be installed with the library. They get
installed in include/project_name

**MOC**: if the library is Qt-based, this is a list of either source or header
files of classes that need to be passed through Qt's moc compiler.  If headers
are listed, these headers should be processed by moc, with the resulting
implementation files are built into the library. If they are source files, they
get added to the library and the corresponding header file is passed to moc.

**NOINSTALL**: by default, the library gets installed on 'make install'. If this
argument is given, this is turned off

Vizkit Plugin Targets (<tt>rock_vizkit_plugin</tt>)
---------------------------------------------------

<pre>
rock_vizkit_plugin(name
    SOURCES source.cpp source1.cpp ...
    [DEPS target1 target2 target3]
    [DEPS_PKGCONFIG pkg1 pkg2 pkg3]
    [DEPS_CMAKE pkg1 pkg2 pkg3]
    [HEADERS header1.hpp header2.hpp header3.hpp ...]
    [MOC qtsource1.hpp qtsource2.hpp]
    [NOINSTALL])
</pre>

Creates and (optionally) installs a shared library that defines a vizkit
plugin. In Rock, vizkit is the base for data display. Vizkit plugins are
plugins to the 3D display in vizkit.

The library gets linked against the vizkit libraries automatically (no
need to list them in DEPS_PKGCONFIG). Moreover, unlike with a normal shared
library, the headers get installed in include/vizkit

The following arguments are mandatory:

**SOURCES**: list of the C++ sources that should be built into that library

The following optional arguments are available:

**DEPS**: lists the other targets from this CMake project against which the
library should be linked

**DEPS_PKGCONFIG**: list of pkg-config packages that the library depends upon. The
necessary link and compilation flags are added

**DEPS_CMAKE**: list of packages which can be found with CMake's find_package,
that the library depends upon. It is assumed that the Find*.cmake scripts
follow the CMake accepted standard for variable naming

**HEADERS**: a list of headers that should be installed with the library. They get
installed in include/project_name

**MOC**: if the library is Qt-based, this is a list of either source or header
files of classes that need to be passed through Qt's moc compiler.  If headers
are listed, these headers should be processed by moc, with the resulting
implementation files are built into the library. If they are source files, they
get added to the library and the corresponding header file is passed to moc.

**NOINSTALL**: by default, the library gets installed on 'make install'. If this
argument is given, this is turned off

Vizkit Widget Targets (<tt>rock_vizkit_widget</tt>)
---------------------------------------------------

<pre>
rock_vizkit_widget(name
    SOURCES source.cpp source1.cpp ...
    [DEPS target1 target2 target3]
    [DEPS_PKGCONFIG pkg1 pkg2 pkg3]
    [DEPS_CMAKE pkg1 pkg2 pkg3]
    [HEADERS header1.hpp header2.hpp header3.hpp ...]
    [MOC qtsource1.hpp qtsource2.hpp]
    [NOINSTALL])
</pre>

Creates and (optionally) installs a shared library that defines a vizkit
widget. In Rock, vizkit is the base for data display. Vizkit widgets are
Qt designer widgets that can be seamlessly integrated in the vizkit framework.

If a file exists that goes by the name package_name.rb exists, it is assumed to be
a ruby extension used to extend the C++ interface in ruby scripting. It gets
installed in share/vizkit/cplusplus_extensions, where vizkit is looking for
it.

The library gets linked against the QtCore library automatically (no
need to list them in DEPS_PKGCONFIG). Moreover, unlike with a normal shared
library, the headers get installed in include/package_name

The following arguments are mandatory:

**SOURCES**: list of the C++ sources that should be built into that library

**MOC**: if the library is Qt-based, this is a list of either source or header
files of classes that need to be passed through Qt's moc compiler.  If headers
are listed, these headers should be processed by moc, with the resulting
implementation files are built into the library. If they are source files, they
get added to the library and the corresponding header file is passed to moc.

The following optional arguments are available:

**DEPS**: lists the other targets from this CMake project against which the
library should be linked

**DEPS_PKGCONFIG**: list of pkg-config packages that the library depends upon. The
necessary link and compilation flags are added

**DEPS_CMAKE**: list of packages which can be found with CMake's find_package,
that the library depends upon. It is assumed that the Find*.cmake scripts
follow the CMake accepted standard for variable naming

**HEADERS**: a list of headers that should be installed with the library. They get
installed in include/project_name

**NOINSTALL**: by default, the library gets installed on 'make install'. If this
argument is given, this is turned off

Test Suite Targets (<tt>rock_testsuite</tt>)
--------------------------------------------

<pre>
rock_testsuite(name
    SOURCES source.cpp source1.cpp ...
    [DEPS target1 target2 target3]
    [DEPS_PKGCONFIG pkg1 pkg2 pkg3]
    [DEPS_CMAKE pkg1 pkg2 pkg3]
    [MOC qtsource1.hpp qtsource2.hpp])
</pre>

Creates a C++ test suite that is using the boost unit test framework

The following arguments are mandatory:

**SOURCES**: list of the C++ sources that should be built into that library

The following optional arguments are available:

**DEPS**: lists the other targets from this CMake project against which the
library should be linked

**DEPS_PKGCONFIG**: list of pkg-config packages that the library depends upon. The
necessary link and compilation flags are added

**DEPS_CMAKE**: list of packages which can be found with CMake's find_package,
that the library depends upon. It is assumed that the Find*.cmake scripts
follow the CMake accepted standard for variable naming

**MOC**: if the library is Qt-based, this is a list of either source or header
files of classes that need to be passed through Qt's moc compiler.  If headers
are listed, these headers should be processed by moc, with the resulting
implementation files are built into the library. If they are source files, they
get added to the library and the corresponding header file is passed to moc.

