---
title: Cross-Set Dependencies
sort_info: 275
--- name:content

A given package set can tell autoproj to import another one BEFORE it gets
loaded. This is done in the 'imports' section of the source.yml file, using the
same syntax that in the 'package_sets' section of the manifest

For instance, the rise.toolchain package set has

~~~ yaml
imports:
  - type: git
    url: git://gitorious.org/orocos-toolchain/autoproj.git
~~~

which means that autoproj will automatically import the orocos toolchain build
configuration when the main manifest lists rise.toolchain. It tells you so at
checkout with

<pre>
autoproj: updating remote definitions of package sets
  checking out git:git://gitorious.org//rise-toolchain/autoproj.git branch=master
  rise.toolchain: auto-importing git:git://gitorious.org//orocos-toolchain/autoproj.git
  checking out git:git://gitorious.org//orocos-toolchain/autoproj.git
</pre>

and at update time with

<pre>
autoproj: updating remote definitions of package sets
  updating rise.toolchain
  rise.toolchain: auto-importing orocos.toolchain
  updating orocos.toolchain
</pre>

If some imports are not needed (or harmful) to your complete build
configuration, they can be disabled package-set-wide either by modifying the
manifest or programmatically

Imports will be disabled if you add "auto_installs: false" flag in the manifest
to the package set's definition:

~~~ yaml
package_sets:
  - type: git
    url: git://gitorious.org/rise-toolchain/autoproj.git
    auto_imports: false
~~~

Or by adding the following statement to autoproj/init.rb:

~~~ ruby
disable_imports_from 'rise.toolchain'
~~~

