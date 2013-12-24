---
title: Supporting new OSes in autoproj
sort_info: 400
---

This involves changing autoproj itself ...

There is a bit of a chicken and egg problem, as you will need to have the
autoproj dependencies installed. In other words, **you will need to install a
proper Ruby/RubyGems environment by yourself**. Sorry ... Once you've got that,
run

gem dependency autoproj
{: .commandline}

and install the Gems it lists.

Adding support in autoproj
--------------------------

 0. get the autoproj source code. It is at

    http://github.com/doudou/autoproj
    {: .commandline}

    Also, add _autoproj_source_dir_/lib to RUBYLIB

 1. you will have to find out how your OS is detected by autoproj. To do so, run
    
      autoproj --os-version
      {: .commandline}

      On Debian, the result is:

      <pre class="commandline">
      name: debian
      version:
        squeeze/sid
        unstable
        sid
      </pre>

    The interesting field is the 'name' field. If the result of the above
    command is "no information about that OS", then you will need to modify the
    operating_system method in <tt>lib/autoproj/osdeps.rb</tt> with custom
    detection code.

 2. update the OS_AUTO_PACKAGE_INSTALL mapping in <tt>lib/autoproj/osdeps.rb</tt>.
    Add a line of the form 'os_name' => 'stanza needed to install a package'
    In the stanza, %s is replaced by a space-separated list of packages to
    install. This placeholder **must** be quoted with single quotes (see other
    OSes as examples). The command line must *not* expect any user intervention.

 3. update <tt>lib/autoproj/default.osdeps</tt> to define the autoproj
    dependencies for your newly supported OS

Testing
-------

To test the new support, you will have to regenerate an autoproj gem and the
bootstrap script. In the autoproj source directory, run

<pre class="commandline">
rake dist:package
rake dist:bootstrap
</pre>

The package is generated in pkg/ and the bootstrap script in
doc/guide/src/autoproj_bootstrap

You can now go into a fresh directory and run

<pre markdown="1" class="commandline">
ruby _path_to_autoproj_/doc/guide/src/autoproj_bootstrap localdev
source env.sh
gem install _path_to_autoproj_/pkg/*.gem
autoproj bootstrap
</pre>

If the last line went fine, then everything is probably OK. You can now try a
bigger install by bootstrapping an existing installation, as for instance

<pre markdown="1" class="commandline">
autoproj bootstrap git git://gitorious.com/rock/build-all.git
</pre>

**And don't forget to send the patches to orocos-dev@orocos.org !**

Since you just added a new OS, none of the existing osdeps files will
have your OS in them. So you will need to edit the osdeps files from the package
sets and [add the relevant packages](osdeps.html).
{: .content-txtbox-warning}

