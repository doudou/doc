---
title: Installation
sort_info: 50
---

All the code needed to bridge ROS and Rock is included in a separate package
set. To enable it, you will need to:

 - have a working ROS installation. The only supported distributions are
   groovy and later. Unfortunately, the catkin build system changed too much
   between fuerte and groovy to allow us to support fuerte.
 - be in an autoproj-based Rock installation

In your autoproj manifest (autoproj/manifest) the package_sets section should
contain (at least) the following: 

~~~
 - gitorious: rock/package_set
 - gitorious: rock-toolchain/package_set
 - gitorious: rock-ros/package_set
~~~

For the syntax above (gitorious: package_set-short-name) to work, your init.rb (autoproj/init.rb) has to contain: 

~~~
require 'autoproj/gitorious'
Autoproj.gitorious_server_configuration('GITORIOUS', 'gitorious.org')
~~~

Back in the autoproj manifest (autoproj/manifest) add the following to the 
layout section: 

~~~
 - rock.ros
~~~

Now, update and build. This is going to rebuild the oroGen packages as needed

~~~
amake --all
~~~


