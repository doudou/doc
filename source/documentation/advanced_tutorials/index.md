---
title: Advanced Tutorials
sort_info: 10
group: tutorials
---

After successfully gone through the [basic
tutorials](/documentation/tutorials/index.html)  you might be interested in
going deeper into rock.  Tutorials in this section deal with more advanced
topics giving you more freedom to setup your system.

What to expect from the advanced tutorials
----------------------------
These tutorials are less structured than the basic tutorials. They cover
specific topics that you might want to learn about:

 * **Deployments**. The basic tutorials showed you how to run tasks. This
   tutorial will show you how to customize how tasks should be executed for your
   particular system. For instance, one can declare that a task is periodic with
   a period of 0.1 s by default, but for a particular system choose a period of
   1s.
 * **Log data and replay**. These tutorials will describe how to turn on
   logging, manage the resulting logfiles and replay the data in running
   components for e.g. testing
 * **Vizkit Widgets and Vizkit 3D plugin creation**. How to extend vizkit,
   Rock's visualization library, by adding new widgets and/or new 3D
   visualization plugins. How to use the Qt designer to create graphical
   interfaces.
 * **Using avahi**. How to use avahi (a common
   [mDNS](http://en.wikipedia.org/wiki/Multicast_DNS) implementation) to resolve
   the task names instead of a centralized CORBA name server.

Installing the tutorial results {#installing}
-------------------------------
In case you don't want to write all the package yourself, the Rock tutorials have been packaged so that you can easily retrieve them.
If you want to add the tutorials to your installation add the package set to
your autoproj/manifest.

autoproj/manifest should look like:

~~~ text
package_sets:
   - gitorious: rock-toolchain/package_set
   - gitorious: rock/package_set
   - gitorious: rock-tutorials/package_set

layout:
   - rock.base
   - rock.toolchain
   - rock.tutorials
~~~

