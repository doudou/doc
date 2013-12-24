---
title: Installation
sort_info: 10
group: intro
---

This page explains how to install Rock and where to look for more
information (tutorials, ...)

Level of support
----------------
This section lists the operating systems where Rock is _well tested_, is _untested_ and whose status is _unknown_.
For _well tested_ operating systems, a build server makes sure that Rock builds
fine, and it is known to be actively used. _Untested_ operating systems have
had users (so, it did work at some point), but it is unknown whether it is
still being actively used. Finally, _unknown status_ operating systems are OSes where
Rock should work, but we have had no known report of its success or failure.

### Well tested Oses

| ![Ubuntu](install/ubuntu.png) | Since 10.04 |
| ![Debian](install/debian.png) | testing or unstable |

### Untested OSes

| ![Gentoo](install/gentoo.jpg) | Last known working version end of 2011 |
| ![Arch](install/arch.png) | Last known working version end of 2010 |

### Status for other 

| Other Linux distributions | Should work fine. No osdeps. |
| Mac OSX | Known to have problems. No osdeps. |

Installation: the easy way
--------------------------

 1. Make sure that the Ruby interpreter is installed on your machine. Rock
    requires ruby 1.9.2 or higher, which on Debian and Ubuntu are provided by
    the ruby1.9.1 package.

    ruby --version
    {: .commandline}

 2. Create and "cd" into the directory in which you want to install the toolchain
 3. To build the base system (base packages + toolchain, but no
    libraries/components), use this
    [bootstrap.sh](https://gitorious.org/rock/buildconf/raw/a05ea84e6cccf505554268f954bc259d30c15b99:bootstrap.sh)
    script. Save it  in the folder you just created. For other options, see
    below.

    **There is an important note for long-term Orocos users.** See the red box
    below.

 4. In a console, run
    
    sh bootstrap.sh
    {: .commandline}

 5. Important: as the build tool tells you, you **must** load the generated env.sh script at the end of the build !!!
    * source it in your current console

      . ./env.sh
      {: .commandline}

    * but also add it to your .bashrc: append the following line at the end of
      $HOME/.bashrc
    
      . /path/to/the/directory/env.sh
      {: .commandline}

 6. read [the autoproj guide for basic usage](/documentation/autoproj/basic_usage.html) to know the
    basic operations of the build system. More bootstrapping documentation is
    also available [at the same place](/documentation/autoproj/bootstrap.html)

Other bootstrapping options
---------------------------

 * **to build all of Rock**, use [this bootstrap.sh](https://gitorious.org/rock/buildconf-all/raw/a6f93c3323f3956808dd35cbbf787a7ecfee1762:bootstrap.sh)
   instead of the one listed above. '''This is really meant for continuous
   integration servers'''. It is going to build all the packages that are
   defined within Rock, which is probably not what you want.
   You probably want to install base system and then cherry-pick the packages you want. Have a look in [the package
   directory](/package_directory.html), and add the package names to the
   layout section in autoproj/manifest. For instance,  if you want to
   get the [Xsens IMU component](http://rock-robotics.org/package_directory/packages/drivers_orogen_xsens_imu/index.html),
   the layout section should look like:

       layout:
          - rock.base
          - rock.toolchain
          - drivers/orogen/xsens_imu

<div class="warning" markdown="1">
**Important for existing Orocos users** The development workflow in Rock
currently disables the Orocos deployer and the RTT scripting language by
default, as they are quite expensive on the build times. Select "yes" at the
"compatibility with OCL" question during the build to reenable this.
</div>

Maintaining a Rock installation
----------------------------------

Once Rock is installed, you can update your installation by going into the root of the
installation folder and do

autoproj update <br/>
autoproj build
{: .commandline}

You might have to reload the env.sh script after that as well, to export updated environment variables into your current shell. Simply opening a new console will do the trick (given you have added sourcing env.sh to your .bashrc).

