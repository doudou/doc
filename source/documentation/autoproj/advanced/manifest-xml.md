---
title: The manifest.xml file
sort_info: 100
--- name:content

The manifest.xml is an optional (but *very recommended*) file that lies in the
root of every source package. This file describes both what the package *is*
(i.e. short description, contact information), and dependency information (what
should be installed for that package to be built successfully).

The general form of the file is:

~~~ xml
<package>
  <description brief="one line of text">
    long description goes here, 
    <em>XHTML is allowed</em>
  </description>
  <author>Alice/alice@somewhere.bar, Bob/bob@nowhere.foo</author>
  <license>BSD</license>
  <url>http://sites.google.com/site/rubyinmotion</url>
  <logo>http://sites.google.com/site/rubyinmotion</logo>
  
  <!-- add dependency to another autoproj-built
  package -->
  <depend package="pkgname"/> 
  <depend package="common"/>


   <!-- add dependency to an OS-provided package -->
   <rosdep name="os-pkgname" />
</package>
~~~

