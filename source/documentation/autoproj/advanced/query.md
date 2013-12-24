---
title: Tooling with shell scripts
sort_info: 51
---

Autoproj contains an "autoproj query" command that allows you to write shell
scripts to automate certain tasks. This page will explain the query structures,
and show some examples of what can be done with it.

autoproj query takes as argument a number of criteria as to what packages is of
interest to you, and allows you to output information about these packages.

The two sides of autoproj query are:

 * the query itself: how can you specify which packages to return
 * the output formatting: what information can be extracted from autoproj and
   displayed in the result

Query Syntax
------------
The general query syntax is

FIELD1=VALUE1:FIELD2~VALUE2:FIELD3=VALUE3
{: .block}

The F=V notation means that the package's F must match V exactly. The F~V
notation means that F can be a partial match for V.

A field will match "partially" if:

 * the expected value can be found anywhere in the package field. The
   match is done in a case-insensitive way. I.e. xsens would match both
   drivers/xsens_imu and drivers/orogen/xsens_imu
 * if the expected value contains '/' (directory marker), the package matches
   the following regular expression: el\w+/el2\w+/el3\w+. I.e., d/o/xsens would
   match drivers/orogen/xsens_imu

The matches are combined with an AND, i.e. a package must match all of them to
be returned.

Finally, by default, <tt>autoproj query</tt> will only consider packages that
are selected in the manifest. If you mean to match all defined packages, use the
--search-all option.

Query Fields
------------
The following fields are available for query:

  * autobuild.name: the package name
  * autobuild.srcdir: the package source directory
  * autobuild.class.name: the package class
  * vcs.type: the VCS type (as used in the source.yml files)
  * vcs.url: the URL from the VCS. The exact semantic of it depends on the
    VCS type
  * package_set.name: the name of the package set that defines the package

Some fields have shortcuts:

  * 'name' can be used instead of 'autobuild.name'
  * 'class' can be used instead of 'autobuild.class.name'
  * 'vcs' can be used instead of 'vcs.url'
  * 'package_set' can be used instead of 'package_set.name'

Output Formatting
-----------------
By default, <tt>autoproj query</tt> will output the package names. This can be
customized with the --format option.

--format takes a string that can contain a number of $VAR fields. The following
fields are available for expansion:

 * NAME: the package name
 * SRCDIR: the package source directory
 * PREFIX: the package prefix
 * SCORE: the match score for this package. See the API documentation of
   Autoproj::Query#match for possible values.

Examples
--------

Running "git gc" on every git package in the autoproj installation:

~~~ text
commands=`autoproj query --format='git --git-dir=$SRCDIR/.git gc' vcs.type=git`
bash -c "$commands"
~~~

Tagging all packages from the imoby package set to a certain tag, and push it:

~~~ text
for dir in `autoproj query '--format=$SRCDIR' vcs.type=git:package_set=imoby`; do
  git --git-dir=$dir/.git tag $NEWTAG
  git --git-dir=$dir/.git push
done
~~~

