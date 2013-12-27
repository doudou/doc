---
title: Overview 
sort_info: -1
group: intro
---

Rock offers both a __rich development environment__ and a collection of
__ready-to-use packages__. This documentation pages describe the development
environment as well as some important "core" libraries. For the package
documentation, got to the [package list](/pkg)


Development Workflow
--------------------

{% youtube UkZYiw7crbw %}

First and foremost, development in Rock always starts with __[creating a
library](tutorials/100_basics_create_library.html)__. As a guideline, this
library has to be independent of Rock's component-based integration framework.
That's right, even if you don't use Rock's tooling, [feel free to use its
drivers and algorithms](packages/outside_of_rock.html) Then, this library gets
integrated in __oroGen__, Rock's component-oriented integration framework.

For runtime, network of Rock components are often setup and managed using [the
Ruby programming language](http://ruby-lang.org). Bindings to Ruby allow to start
processes, start and stop components, connect them together and bind them to
user interfaces in a very flexible way.

[Tutorials](tutorials/index.html) will guide you through getting to grips with
the process, from a library to running network of components.

Data Analysis
-------------
{% youtube PhHFzCNvjlQ %}

At this point, Rock offers extended support for runtime as well as offline data
analysis. [Logging](data_analysis/index.html) is an integral part of the
development workflow: it can be used for post-mortem analysis as well as to
test components through log replay mechanisms. Then, __Vizkit__ kicks in. is
both an oroGen-independent library of Qt-based widgets and OpenSceneGraph-based
3D visualizers, and a Ruby library that allows to seamlessly display both
logged and live data. Extending it with new widgets and visualizers is
straightforward.

Advanced System Management
--------------------------
Finally, Rock gives you rock-roby, a [model-based system management
layer](system/index.html) which will allow you to manage complex networks of
components both at design and running time. Have a look first at the
[corresponding tutorials](system_management_tutorials).

{% youtube QKl_0pGIfqI %}

