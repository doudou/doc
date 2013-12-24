---
title: Package Dependencies
sort_info: 260
--- name:content

There are two ways to specify dependencies between packages. In order of
"general use":
 
 * list them in the package's manifest.xml
 * add them in the package set's autobuild scripts

Moreover, a dependency can either be mandatory or optional.

In the first case, autoproj will always refuse to build a package if one of its
dependencies is either not defined or [excluded from the build](../customization.html#exclude_packages)

In the second case, autoproj will only take into account the dependency
information for building, and simply ignore the dependency if the depended-upon
package is inexistent or excluded from the build.

The rest of this page details how to add these two types of dependencies

When to make a dependency optional
-----------------------------

This is a matter of engineering, really. Concrete examples are:

 * libraries that contain both core functionality and GUIs. GUIs won't get built
   on the embedded systems (a.k.a. "robots"), and therefore should be made
   optional
 * dependencies on "heavy" stuff, when the functionality that depends on these
   heavy packages is not the main package functionality.

Dependencies in the package's manifest.xml
--------------------

This should be the main way through which you specify dependencies

The [manifest.xml file](manifest-xml.html) is a file that lies in each package's
root directory. It contains general information (description, author, license,
...) and build related information

The <tt><depend /></tt> tag can be used to specify dependencies between
packages. For instance, to add a dependency on the "drivers/xsens_imu" package, one does

    <depend name="drivers/xsens_imu" />

Making a dependency optional is simply a matter of adding the
<tt>optional="1"</tt> flag:

    <depend name="drivers/xsens_imu" optional="1" />

Dependencies in autobuild files
--------------------

It is useful when some dependencies should be added or not depending on some
[configuration options](creating_pkg_set.html#configopts}

This is simply a matter of calling #depends_on(package_name) or
#optional_dependency(package_name) on the package objects.

For instance, when defining a new package

~~~ ruby
cmake_package 'drivers/orogen/pkgname' do |pkg|
  if user_config('WITH_GUI')
    pkg.depends_on 'gui'
  end
end
~~~

Or later in for instance autoproj/overrides.rb

~~~ ruby
if user_config('WITH_GUI')
  package('drivers/orogen/pkgname').depends_on 'gui'
end
~~~

