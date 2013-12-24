---
title: Documentation
sort_info: 100
---

This page will describe how to write/modify/update documentation on this very
website. Additional, discussion-oriented, documentation is done on the [Rock
wiki](http://trac.rock-robotics.org)

The Rock website is automatically generated using
[webgen](http://webgen.rubyforge.org) from [Markdown
files](http://kramdown.rubyforge.org/quickref.html) and uploaded to
rock-robotics.org. The markdown files are stored in [a git repository on
gitorious](http://gitorious.org/rock/doc).

If you want to update the Rock reference documentation, i.e. the Rock website,
you need first to check it out. From within a Rock installation, this can be
done with

~~~
aup base/doc
~~~

The documentation is flavored, i.e. there is one branch for master, one branch
for next and one branch for stable. Make sure you edit the "right" branch. The
guideline is that anything that applies to stable should be done on the stable
branch as it is what new rock users see in the first place.

If you need to switch the branch (as, for instance, to edit the 'stable'
documentation even though you are using the master flavor), just do

~~~
git checkout -b stable autobuild/stable
~~~

The markdown file for e.g. documentation/orogen/index.html in
src/documentation/orogen/index.page.

Once you have done your modifications, run webgen once to be able to preview
them:

~~~
rake
~~~

This will generate the HTML code in the base/doc/out/ directory. Simply open
base/doc/out/index.html with a web browser to see the generated website. Once
you are happy with your changes, commit them to git.

You then will [propose your changes to the Rock developers](gitorious.html) ...
and get their thanks !

Finally, we are keen on improving the Rock documentation. Getting commit rights
on the Rock documentation repository is as easy as dropping an email to
the [rock-dev mailing list](http://www.dfki.de/mailman/cgi-bin/listinfo/rock-dev).
