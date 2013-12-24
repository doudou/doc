---
title: Understanding autoproj error messages
sort_info: 90
---

I know nothing about a prepackaged package called 'XXXX', ...
------------------------------------------
_Short explanation_: an OS dependency is listed by one of the packages, but no
definition exists in one of the osdeps files.

_Long explanation_: XXXX is listed as an operating system dependency by one of
the packages that you requested to build. Two solutions: (i) the package should
*not* depend on it, and you should modify the [package's
manifest.xml](advanced/manifest-xml.html) file. (ii)
the package should depend on it and you should list the OS package in [the
relevant osdeps file](advanced/osdeps.html)

XXX depends on YYY, which is excluded from the build {#exclusions}
----------------------------------------------------

The layout requires the XXX package to be built, but this package depends on YYY
and YYY has explicitly been excluded from the build.

There are two cases.

In the first case, the package has been listed in [the exclude_packages section
of autoproj/manifest](customization.html#exclude_packages). So, you will have to
find out why and either remove it from there, or add XXX to the same section.

In the second case, the package is disabled on your operating system version.
This is done in the package set's autobuild files by using the [not_on and
only_on statements](advanced/autobuild.html#not_on_and_only_on). You will
have to either exclude the XXX package as well (either by including it in the
same not_on/only_on block, or by adding it to [the exclude_packages section
of autoproj/manifest](customization.html#exclude_packages)), or to make it so
that YYY builds on your OS, an thus remove it from the not_on/only_on block.

