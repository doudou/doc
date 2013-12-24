---
title: Writing autobuild scripts
sort_info: 200
pkg: autobuild
---

Defining CMake packages
-----------------------
A simple CMake package is defined with

~~~ ruby
cmake_package "package_name"
~~~

More complex tweaking is achieved with

~~~ ruby
cmake_package "package_name" do |pkg|
  [modify the pkg object]
end
~~~

In particular, CMake build options can be given with

~~~ ruby
cmake_package "package_name" do |pkg|
  pkg.define "VAR", "VALUE"
end
~~~

The above snippet being equivalent to calling <tt>cmake -DVAR=VALUE</tt>

The "pkg" variable in the example above is an instance of
[CMake]({% yard Autobuild::CMake %})
{: .block}

Defining autotools packages {#autotools}
---------------------------

~~~ ruby
autotools_package "package_name"
autotools_package "package_name" do |pkg|
    pkg.configureflags << "--enable-feature" << "VAR=VALUE"
    # additional configuration
end
~~~

The 'pkg' variable in the example above is an instance of
[Autotools]({% yard Autobuild::Autotools %})
{: .block}

Since autotools (and specifically, automake) environments are unfortunately
not so reusable, autoproj tries to regenerate the autotools scripts forcefully.
This can be disabled by setting the some flags on the package:

 * using\[:aclocal]: set to false if aclocal should not be run
 * using\[:autoconf]: set to false if the configure script should not be touched
 * using\[:automake]: set to false if the automake part of the configuration
   should not be touched
 * using\[:libtool]: set to false if the libtool part of the configuration should
   not be touched

For instance, one would add

~~~ ruby
autotools_package "package_name" do |pkg|
    pkg.configureflags << "--enable-feature" << "VAR=VALUE"
    # Do regenerate the autoconf part, but no the automake part
    pkg.using[:automake] = false
end
~~~

Defining Ruby packages
----------------------

~~~ ruby
ruby_package "package_name"
ruby_package "package_name" do |pkg|
    # additional configuration
end
~~~

This package handles pure ruby libraries that do not need to be installed at
all. Autoproj assumes that the directory layout of the package follows the following
convention:

 * programs are in bin/
 * the library itself is in lib/

If a Rakefile is present in the root of the source package, its <tt>default</tt>
task will be called during the build, and its <tt>redocs</tt> task will be used
for documentation generation. The <tt>rake_setup_task</tt> and
<tt>rake_doc_task</tt> package properties can be used to override this default
setting:

~~~ ruby
ruby_package "package_name" do |pkg|
    pkg.rake_setup_task = "setup"
    pkg.rake_doc_task = "doc:all"
end
~~~

Additionally, they can be set to <tt>nil</tt> to disable either setup or documentation
generation. For instance, the following code disables documentation generation
and uses the +setup+ task at build time:

~~~ ruby
ruby_package "package_name" do |pkg|
    pkg.rake_setup_task = "setup"
    pkg.rake_doc_task = nil
end
~~~

The 'pkg' variable in the example above is an instance of
[ImporterPackage]({% yard Autobuild::ImporterPackage %})
with additional methods coming from
[RubyPackage]({% yard autoproj Autoproj::RubyPackage %})
{: .block}

Defining oroGen packages
------------------------

~~~ ruby
orogen_package "package_name"
orogen_package "package_name" do |pkg|
    # customization code
end
~~~

oroGen is a module generator for the Orocos component framework. See [the oroGen
documentation](../../orogen) for more information.

The 'pkg' variable in the example above is an instance of
[Orogen]({% yard Autobuild::Orogen %})
{: .block}

OS-specific bits (<tt>not_on</tt> and <tt>only_on</tt>) {#not_on_and_only_on}
----------------
It is possible to have some parts of the autobuild file be OS-specific. Two
calls are made available for that.

First, if you know that some packages should not be built on some operating
systems, you should enclose their declaration in a 'not_on' statement. For
instance:

~~~ ruby
not_on 'debian' do
  cmake_package 'excluded_package'
end
~~~

It is additionally possible to select specific versions

~~~ ruby
not_on 'debian', ['ubuntu', '10.04'] do
  cmake_package 'excluded_package'
end
~~~

If, on the other hand, you want some bits to be available only **on** a specific
OS, use the only_on statement:

~~~ ruby
only_on ['ubuntu', '10.04'] do
  cmake_package 'only_ubuntu'
end
~~~

If the user tries to build a package that is excluded on his architecture, he
will get the following error message:

modules/dynamixel depends on drivers/dynamixel, which is excluded from the build: drivers/dynamixel is disabled on this operating system
{: .cmdline}

Custom package building
-----------------------

~~~ ruby
import_package "package_name" do |pkg|
    pkg.post_install do
        # add commands to build and install the package
    end
end
~~~

See [this page](writing_package_handlers.html) about some __very important__ issues when writing such command
blocks.

Declaring documentation targets
-------------------------------
Both autotools and CMake packages use <tt>make</tt> as the low-level build tool.
For both packages, you can declare a documentation target that will be used
during the call to <tt>autoproj doc</tt> to generate documentation:

~~~ ruby
cmake_package "package_name" do |pkg|
  pkg.with_doc 'doc'
  pkg.doc_dir = "doc/html"
end
~~~

The <tt>doc_dir</tt> assignment above is needed if the package installs its documentation
elsewhere than "doc".

Defining dependencies
---------------------
Inter-package dependencies can be defined with

~~~ ruby
pkg.depends_on "package_name"
~~~

Where package name is either the name of another autoproj-built package, or the
name of a package that is to be [provided by the operating system](osdeps.html).

Both methods should be used only for dynamic dependencies, i.e. dependencies
that are dependent on build options (see below). Static dependencies should be
defined in [the package's manifest.xml](manifest-xml.html)
{: .warning}

Finally, it is possible to give aliases to a package's name, by using the
Autobuild::Package#provides method. If one does

~~~ ruby
cmake_package "mypkg" do |pkg|
    pkg.provides "pkgconfig/libmypkg"
end
~~~

then a package that declares a dependency on "pkgconfig/libmypkg" will actually
depend on "mypkg".

Defining and using options
--------------------------

It is possible to define configuration options which are set by your user at
build time. These options can then be used in the autobuild scripts to
parametrize the build.

The general form of an option declaration is:

~~~ ruby
configuration_option "option_name", "option_type",
    :default => "default_value",
    :values => ["set", "of", "possible", "values"],
    :doc => "description of the option"
~~~

Once declared, it can be used in autobuild scripts with:

~~~ ruby
user_config("option_name")
~~~

Options are saved in <tt>autoproj/config.yml</tt> after the build. Options that
are already set won't be asked again unless the <tt>--reconfigure</tt> option is
given to <tt>autoproj build</tt>.

Do not try to have too many options, that is in general bad policy as
non-advanced users won't be able to know what to answer. Advanced users will
always have the option to override your autobuild definitions to tweak the
builds to their needs.
{: .warning}

