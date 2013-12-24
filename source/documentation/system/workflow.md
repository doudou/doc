---
title: Workflow
sort_info: 110
---

This page describes the principles behind the overall development workflow. It
gives some details about the network generation algorithm in the process, as
these details will help understanding each steps of the workflow

Step 1: Modelling
-----------------
The very first step is to model the components and how the components should be
connected together.

TODO: model browsing screencast

Component models, in Rock, are always done by the component developers when they
use oroGen. The toolchain is designed so that using oroGen is the __only__
constraint that needs to be followed to be able to use syskit.

Defining how components can be bound together is done by the system designer in
syskit. It is done by creating so-called __compositions__, which are a
collection of components and connections between these components, necessary to
provide a given function. In order to make these compositions reusable, the
modelling allows you to define __abstract component models__ (or so-called data
services). For instance, one would add a Pose service in a composition instead
of referring to a specific component that would provide a pose.

Existing models can be browsed graphically using

syskit browse
{: .cmdline}

TODO: syskit browse screenshot

**System Model**
Example showing the dataflow in the OrientationEstimator Composition from the AVALON AUV student project.

Step 2: Subsystem Design
------------------------
The second step is to use these composition models to create high-level
functions. Two things are at work there:

1. since compositions can contain data services (abstract component models),
   one has to choose exactly which component will provide which service. The
   underlying mechanism is akin to the quite common [dependency injection
   pattern](http://en.wikipedia.org/wiki/Dependency_injection). Specific
   component configurations are also chosen at that point.
2. deployment choices have to be made, such as on which machine will a component
   / subsystem run, which [orocos deployments](../orogen/deployment.html) should
   be used and so on.

TODO: composer video

Step 3: Runtime deployment
--------------------------
Finally, you (the user) requires that a set of these subsystems run at a given
point in time. The underlying network generation algorithm will then take care
of __removing redundancies__, i.e. merging components that are part of the same
subsystem together, and finally __adapting__ the currently running network to
match the new requirements.

At this stage, a lot of constraint checking is done to ensure that the final
network is __sound__.

TODO: merging video
TODO: runtime adaptation video (avalon ?)

The subsystem design and runtime deployment steps are __fully dynamic__. In
general, the workflow is to design subsystems statically and then switch
between different system configurations (i.e. choice of subsystems) at runtime.
However, it is also possible to create new subsystem definitions at runtime
through e.g. learning mechanisms.

Next pages
----------
The next pages will run you through the creation of models: [data
services](data_services.html), [compositions](compositions.html) and [task
contexts](task_contexts.html). Then, we will go on with the description of
subsystems and how they are organized in [profiles](profiles.html). Finally, the
[interaction with a running Roby system](interaction.html) using syskit will be
covered.

