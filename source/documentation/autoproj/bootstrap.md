---
title: Bootstrapping
sort_info: 25
---

Bootstrapping
-------------
"Bootstrapping" means getting, building and installing autoproj before it can be used.
The canonical way is the following:

 * install Ruby by yourself. On Debian or Ubuntu, this is done with
   done with

   sudo apt-get install wget ruby
   {: .cmdline}

 * then, [download this script](http://rock-robotics.org/autoproj_bootstrap) *in the directory where
   you want to create an autoproj installation*, and run it. This can be done with

   wget http://rock-robotics.org/autoproj\_bootstrap <br />
   ruby autoproj\_bootstrap
   {: .cmdline}

 * follow the instructions printed by the script

Additionally, if you are given a reference to a source code repository in which
an autoproj configuration is stored (i.e. a directory in which a manifest is
present), you can bootstrap this configuration directly:

   wget http://rock-robotics.org/autoproj\_bootstrap <br />
   ruby autoproj\_bootstrap VCS 
   {: .cmdline}

For instance, to build all packages made available by the Rock project,
do

   wget http://rock-robotics.org/autoproj\_bootstrap <br />
   ruby autoproj\_bootstrap git git://gitorious.org/rock/buildconf-all.git
   {: .cmdline}

Additional options can be given for the version control system. For instance,

   wget http://rock-robotics.org/autoproj\_bootstrap <br />
   ruby autoproj\_bootstrap git git://gitorious.org/rock/buildconf.git branch=test
   {: .cmdline}

