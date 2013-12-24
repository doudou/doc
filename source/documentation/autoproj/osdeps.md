---
title: The osdeps system
sort_info: 95
---

Autoproj offers two ways to install software.

The primary intend of autoproj is to allow you to easily
install software that needs to be compiled. However, there are also ways to
install standard software packages that are offered by your operating system.

Autoproj's osdeps facility is there for that: handle dependencies between the
source packages that it needs to build and packages that are offered by the OS.
Example of such packages are: precompiled libraries and applications (e.g.
Debian packages on Debian and Ubuntu), RubyGem packages (rubygem is a package
management system for Ruby programs) and so on.

Declaring and inspecting dependencies
-------------------------------------
Dependencies on OS packages are declared the same way than cross-package
dependencies are. See [this page](advanced/osdeps.html) for more
information.

It is important to note that, in case both an osdeps definition *and* an
autoproj package definition exist, the osdeps definition will take precedence --
to avoid unnecessarily compile software.

To inspect the OS dependencies on your autoproj installation, simply run

autoproj osdeps --show
{: .cmdline}

This will show the osdeps that are declared for each source package. The reverse
is also available with

autoproj osdeps --rshow
{: .cmdline}

which will show, for each needed OS package, which source package needs it.

Fine-tuning the osdeps behaviour
--------------------------------
When you bootstrap autoproj, a long question asks you to pick between four
osdeps mode. This page will give a bit more detail about each of the modes.

**In the 'all' mode**, autoproj will install both OS packages and RubyGem packages
when needed. You should not have to care about what the source packages need,
autoproj should install them. If the configuration or compilation of one of the
package fails, it will most probably be because the build configuration is
missing the relevant OS dependency.

**In the 'os' mode**, only OS packages will automatically be installed.
autoproj will *completely ignore* the RubyGem dependencies, so the build may
fail because some of them are not installed.

**In the 'ruby' mode**, only RubyGem packages will automatically be installed.
autoproj will *completely ignore* the OS package dependencies, so the build may
fail because some of them are not installed.

**In the 'none' mode**, neither type of packages will be handled by autoproj.
Indeed, the build may fail because some of them are not installed.

Behaviour during bootstrapping
------------------------------
Bootstrapping is a kind of a different beast. During bootstrapping, packages
**must** get installed as the goal is to get a functional autoproj.

Therefore, if you choose a different mode than 'all', autoproj will list
packages that need to be installed in order for the bootstrap to function
properly and wait for you to confirm that they are indeed installed.

Behaviour on operating systems (OS) not supported by autoproj
-------------------------------------------------------------
In order to handle the OS packages, autoproj must know how to install them.
Operating systems for which autoproj does *not* have this information are marked
as "unsupported" (see [this page](advanced/autoproj_osdeps.html) to extend autoproj for
your OS).

On these OS, the 'all' and 'os' options are obviously not available to you. You
will therefore have to install the packages by yourself (see below for a bit of
help from autoproj).

Getting a bit of help from autoproj even in modes different than 'all'
----------------------------------------------------------------------

First of all, as presented above, you can inspect osdeps definitions with
autoproj osdeps --show and autoproj osdeps --rshow

Another operation of interest is "autoproj osdeps" itself. It will install
missing the packages that you required (i.e. only RubyGem packages if you have
selected the 'ruby' mode) *but* will also display the missing packages of the
other categories, allowing you to install them manually.

Moreover, you can ask autoproj to install packages that you have disabled with
the --all, --ruby and --os options:

autoproj osdeps --all
{: .cmdline}

will install all required packages, regardless of the "global" osdeps mode.
