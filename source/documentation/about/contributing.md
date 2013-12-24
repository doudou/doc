---
title: Contributing
sort_info: 500
---

There are multiple ways to contribute to Rock

First and foremost, you can report bugs on the [Trac
interface](http://rock.opendfki.de), send comments and suggest enhancements
(both positive and negative ones) to the
[orocos-users](http://lists.mech.kuleuven.be/mailman/listinfo/orocos-users)
and/or [rock-dev](http://www.dfki.de/mailman/cgi-bin/listinfo/rock-dev) mailing
lists [on the Rock trac](http://rock.opendfki.de).

More advanced users can contribute bugfixes and enhancements to the main Rock
codebase through [the gitorious interface](http://gitorious.org/). Clone a
repository, add your changes and create merge requests. Alternatively, one can
also improve documentation, either by creating new pages [on the Rock
trac](http://rock.opendfki.de) or by cloning [the main Rock documentation
package](http://gitorious.org/rock/doc) from gitorious and proposing your
changes through the gitorious interface.

Finally, publish your packages by [creating your own package
set](../autoproj/advanced/creating_pkg_set.html) to publish your
libraries and components. Once you have put this package set and the code on a
public place (gitorious, github or even a svn-oriented code hosting), drop us a
line on the [rock-dev] mailing list. We would be glad to include it in a (to be
created) third-party package directory.

Once some packages you created are of a sufficient quality, you can
submit them for inclusion in Rock itself. Just drop us a line on the
[rock-dev] mailing list so that we can discuss it.

[rock-dev]: http://dfki.de/mailman/cgi-bin/listinfo/rock-dev "rock-dev"

Generating your own package directory
-------------------------------------

The rock-directory script base/scripts allows you to create your own package
directory looking like [the one from
rock](http://rock-robotics.org/package_directory.html).

To do so, run rock-directory **from the autoproj installation you want to
document**:

    rock-directory /home/mine/package_directory

If you plan to publish this directory somewhere, we ask you to change the
directory template. To do so, check it out first from
  
    git://gitorious.org/rock/template-directory customized_template

modify the template to match your project/institute/... name (in
src/default.template).

Pass the path to the template as a second argument to rock-directory

    rock-directory /home/mine/package_directory /path/to/customized_template

