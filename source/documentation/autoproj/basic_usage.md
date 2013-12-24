---
title: Basic usage
sort_info: 26
---

**Building the installation and packages:**

To build all packages, simply do:

autoproj build
{: .commandline}

It will ask the value of newly defined configuration options, import code hosted
remotely that is not yet present, install OS packages (e.g. Ubuntu packages on
an Ubuntu installation) and build everything.

If you want to build only a specific package you can use, here it for building 'orocos/rtt':

autoproj build orocos/rtt
{: .commandline}


Alternatively to autoproj build, you can use the 'short' command version:

amake 
{: .commandline}

It runs autoproj build for the given directory or package name.
Selects the current directory if none is given



**Updating and maintaining your installation:**

In order to update your packages:

autoproj update
{: .commandline}

Alternatively, you can use the 'short' command version:

aup 
{: .commandline}

It runs autoproj update for the given directory or package name.

**Rebuilding your installation:**

If for some rare reason, you need to rebuild your stack, then do

autoproj rebuild
{: .commandline}

A less intrusive version of it only forces all tools to reconsider building. It
is mainly useful for CMake when the build environment changed -- CMake caches a
lot of values. To trigger this, do

autoproj force-build
{: .commandline}

**Exception**: to avoid long builds, the rebuild and force-build commands apply only
to the packages given on the command line. E.g., autoproj rebuild orocos/rtt
will only rebuild the orocos/rtt packages. If you want to rebuild both the
packages and its dependencies, use the --with-depends options.
{: .warning}

**Generating documentation:**

Documentation is generated only when asked explicitly:

autoproj doc
{: .commandline}

It generates documentation of packages that have some, and copies that
documentation into build/doc/, following the same layout than the source
directory.

All these commands (i.e. build, doc, and update) accept a package name as
argument, thus triggering build only for this package and its dependencies.

Shell helpers {#shell_helpers}
-------------
On bash and zsh, autoproj installs some shell helpers that make using an
autoproj installation easier.

For now, only the "acd" command is available.

    acd drivers/orogen/xsens_imu

will go in the directory where the "drivers/orogen/xsens_imu" package source is.
Package names can be shortened as long as there is no ambiguity. You can only
keep the prefixes at each directory level. For instance:

     acd xsens_imu

will fail as it matches drivers/xsens_imu and drivers/orogen/xsens_imu. However,

     acd o/x

will work, as well as d/o/xsens (for instance).


**Changing your configuration:**

After having boostrapped your Rock installation, autoproj will *not* ask you again about the configuration, since 
the questions you already answered. So if you want to change your configuration, i.e. you answers do:

autoproj build --reconfigure
{: .commandline}

Alternatively, you can edit autoproj/config.yml directly.

By default, autoproj does not automatically update the package after an reconfiguration. To do
that, you have to explicitly update your packages by calling. 

autoproj update
{: .commandline}


Switching configuration
-------------------------------------------
Let's assume that you want to switch what configuration autoproj is tracking,
but without having to redo a complete bootstrap -- i.e. avoiding to rebuild
stuff that is common between the configurations.

autoproj provides the switch-config command for that. This command takes the
same arguments than the bootstrap script, that is:

autoproj switch-config \[vcs_type] \[vcs_url] \[vcs_options]
{: .cmdline}

As a shortcut, one can omit vcs_type and vcs_url if they don't change.
This is especially useful when switching between branches:

autoproj switch-config branch=experimental
{: .cmdline}


