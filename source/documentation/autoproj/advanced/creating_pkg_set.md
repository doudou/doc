---
title: Creating a package set
sort_info: 150
---

A package set is made of three things:

 * the description file (source.yml)
 * an optional initialization script (init.rb) and override script
   (overrides.rb)
 * autobuild scripts (\*.autobuild)

To create a new package set that is going to be shared with others, the simplest
solution is to

 * create a new directory
 * add a source.yml file with just the set name in it:

~~~ yaml
name: my_package_set_name
~~~

 * push it to whatever VCS you want. For git and gitorious, you would do
   something like

       git init
       git add source.yml
       git commit -m "create the my_package_set_name package set"
       git push git@gitorious.com:my-project/package_set.git

 * add the package set to autoproj/manifest and run
     
       autoproj update-config

At this stage, the empty set is properly checked out in
autoproj/remotes/my_package_set_name. You can add package definition and VCS
information (see below), test it with autoproj update an autoproj build, commit
and push !

If you are **not** going to share the package set, the simplest solution is to
just add the autobuild and version control information in
autoproj/local.autobuild and autoproj/overrides.yml -- i.e. to not create a
separate package set at all.

Adding a package
----------------

Adding a package to a package set involves changing two files:

 * one of the package set's autobuild file that declares what packages there
   are. Any file ending with .autobuild is loaded as an autobuild file by
   autoproj.
 * the package set's source.yml file that declares where to get it (version
   control information)

For the first step, you need to add one of the following lines:

~~~ ruby
cmake_package "my/package" # for CMake package
autotools_package "my/package" # for autoconf/automake packages
orogen_package "my/package" # for orogen packages
import_package "my/package" # for custom packages
ruby_package "my/package" # for ruby libraries (optionally with C/C++ extensions)
~~~

The package name will be used to refer to this particular package later on --
especially for version control definition. If subdirectories are used, like "my"
in the above example, the package source will be checked out and built in the
corresponding subdirectory. For instance, with

~~~ ruby
cmake_package "drivers/hokuyo"
~~~

the hokuyo driver will _always_ be built in a <tt>drivers/</tt> subdirectory.

Now that the package is declared, we need to add version control information to
the source.yml file. This needs to be done in the version\_control section of
the file, as for instance:

~~~ yaml
version_control:
  - my/package:
      type: git
      url: git://gitorious.com/blabla/my-package.git
~~~

The corresponding subversion definition would be:

~~~ yaml
version_control:
  - my/package:
      type: svn
      url: svn+ssh://svnhosting.com/blabla/trunk/my/package
~~~

For testing purposes, it is possible to tell autoproj to *not* take into account
any VCS information:

~~~ yaml
version_control:
  - my/package: none
~~~

See [this page](importers.html) for details on the import mechanisms.

Autobuild scripts
-----------------
The autobuild scripts lists all the packages defined by this set. It is a
Ruby script (but you don't need to know Ruby to write one). In its most simple
form, it looks like:

~~~ ruby
cmake_package "orocos/rtt"
autotools_package "drivers/imu"
orogen_package "modules/imu"
import_package "external/sisl"
ruby_package "orocos/orocos.rb"
~~~

The above snippet lists the kind of packages autoproj currently supports. The first one uses CMake as a build
system and will be installed in the <tt>orocos/rtt</tt> subdirectory of the
autoproj installation. The second one is an autotools package. Additionally, there is support for
orogen packages (i.e. Orocos components generated with orogen), packages that should be just imported but not build, and for Ruby packages. Package definitions can be tweaked quite a lot, including the ability to generate
documentation. See [the next page](autobuild.html) for more information on how to write autobuild
scripts.

source.yml
----------
The source.yml file gives generic information on the package set itself (most
importantly its name), and version control information (i.e. where to get the
packages). It is a YAML file, and looks like:

~~~ yaml
name: rock.drivers
constants:
  ROOT_DIR: $HOME/share
  
version_control:
  - "modules/.*":
      type: git
      url: $ROOT_DIR/$PACKAGE_BASENAME.git
  - "drivers/.*":
      type: svn
      url: svn+ssh://rlbsvn.informatik.uni-bremen.de/trunk/$PACKAGE.git
~~~

The name field gives a name for the set. It is arbitrary, but the guideline
is to give a name that is java-like for namespaces, i.e. origin.name.

The <tt>constants:</tt> section lists values that can be reused for different
packages. Autoproj defines muliple constants:
 
 * HOME is the user's home directory,
 * PACKAGE is the expansion of the (complete) regular expression given as package name, i.e. here it might be
   'modules/yourpackage'
 * PACKAGE_BASENAME is the actual package name, useful when using wildcards in package
   names (see below)
 * AUTOPROJ_SOURCE_DIR path to the directory of the file which contains this constant
 * AUTOPROJ_ROOT path to the main installation folder
 * AUTOPROJ_CONFIG path to the autoproj configuration directory

It is also possible to use configuration variables, that get asked to the user
during the build (see below).

Finally, the <tt>version_control:</tt> section describes how to import each
software package. Its general format is:

~~~ yaml
package_name:
  type: version_control_type # git, svn, cvs, darcs
  url: repository_url
~~~

Where package\_name is a regular expression that matches the package name (for
instance, ".\*" will match all packages and "drivers/.\*" will match packages
whose name starts with 'drivers'). The package name is the one given to the
<tt>blabla_package</tt> stanza in the autobuild file.

For the git importer, one of 'branch' or 'tag' options can be provided as well:

~~~ yaml
package_name:
  branch: branch_to_track
  tag: tag_to_stick_to # it is branch OR tag
~~~

The options are applied in order, meaning that the top entries will be overridden
by the lower ones. In general, one will have a ".\*" entry to give options for
all packages, and then override for specific packages:

~~~ yaml
version_control:
  - .*: # common options for all packages
      type: git
      url: $ROOT_DIR/$PACKAGE.git

  - "modules/logger": # we don't follow master on this module
      branch: imoby
~~~

Interaction between package sets definition files
-------------------------------------------
When multiple package sets are used, it is possible to override the version
control definitions in low-priority sets with a higher priority one. Autoproj
has the following rules when searching for version control information:

 * autoproj looks at the package sets *in the order they appear in the
   installation manifest*
 * autoproj searches a relevant version\_control field, and stops at the first
   package set that has one.
 * autoproj *stops searching* at the package set that defines the package.
   Consequence: this set *must* have a version\_control field for it, and an
   error will be issued otherwise.

Using configuration options {#configopts}
---------------------------
autoproj offers a configuration system that allows the user to tweak the build
to its needs. If the version control definitions depend on such configuration
options (as, for instance, because you want to parametrize the importer URLs),
then create an init.rb file next to the source.yml file, and add lines looking
like:

~~~ ruby
configuration_option "option_name", "option_type",
    :default => "default_value",
    :values => ["set", "of", "possible", "values"],
    :doc => "description of the option"
~~~

where the option\_type field can either be "string" or "boolean".

Then, you can use the option\_name as an expansion in the source.yml file.

For instance, at my lab we are using an share filesystem to store the git
repositories. Our project's init.rb file has the following option definition:

~~~ ruby
configuration_option "MOUNT_POINT", "string",
    :default => "$HOME/nfs",
    :doc => "mount point of the NFS server"
~~~

And the source.yml uses it with:

~~~ yaml
version_control:
  ".*":
    url: $MOUNT_POINT/git/$PACKAGE.git
    type: git
~~~

