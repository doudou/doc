---
title: Writing Package Handlers
sort_info: 220
---

Package handlers are all subclasses of Autobuild::Package. See the autobuild
documentation for more information.

Due to the parallel build feature of autoproj, one must be careful about a few
points when writing new package handlers, or customizing existing ones:

Reporting
---------
When writing your own package handlers, or customizing the existing ones, you
must use Autobuild's progress methods to report the build progress.

To report progress about a long-running process, use Package#progress_start

~~~ ruby
progress_start "progress message for package %s" do
  # Long-running process.
  # Call Package#progress to display intermediate messages
end
~~~

To display single-shot messages, use Package#message

~~~ ruby
message "something that should be noted about package %s"
~~~

If what you are doing is not related to a single package, use the same methods
on Autobuild: Autobuild.progress_start, Autobuild.progress, Autobuild.message

Running Subcommands
-------------------
Always use Autobuild::Subprocess.run to run subcommands. It handles all the
details of diverting the output to a proper log file, handling errors, ...

~~~ ruby
Autobuild::Subprocess.run(pkg, 'build', 'command', '--with', '--options', :working_directory => pkg.srcdir)
~~~

The first argument is either the package for which the command is built, or a
string. The second the build phase (standard ones are
prepare,import,configure,build and install).

The :working_directory option at the end is only useful if you need to run the
command in a specific directory.

Do __not__ use Dir.chdir in a package handler. This will break parallel builds.
{: .warning}

