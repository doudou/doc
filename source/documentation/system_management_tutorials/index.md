---
title: System Management Tutorials
sort_info: 20
group: tutorials
---
Until now you have been writing down detailled instructions on how to bind 
components together using a Ruby script. 
After this tutorial you will be able to use the modelling capabilities of Rock's system management layer
which allows you to _describe_ the system you want to run and let the system management layer do the rest of the work,
such as connecting components.
There are multiple benefits to running systems using such a _model-based layer_. Among those:

 * having a system _monitoring_, i.e. the ability to detect and represent
   errors. No more silent errors.
 * extension of component networks: quite often, a system needs not only _functional_
   components but also _support_ components (think: diagnostic components,
   communication bus support, hardware triggering readers, ...). The model-based
   layer allows you to focus on your functional components and let the tooling automatically
   handle the support components.
 * online system adaptation: the ability to reconfigure individual components or even
   a complete _network_ of components at runtime.
 * encoding of complex behaviour: building of high-level "programs" which rely on (networks or compositions of)
   simple components.
 * "think local, act global": managing a network even as small as 15+ components
   is a challenge. Rock's system management layer allows you to decompose tasks and problems and
   think in small pieces, while the tooling takes care of generating the complete network of components.

This series of tutorials will introduce you to Rock's advanced system management
tools. This tutorial builds upon the results of the previous tutorials, and in
particular [Simulate a Robot](../tutorials/500_simulate_a_robot.html) and
[Adding a Joystick into the Mix](../tutorials/510_joystick.html), or that you at least installed
the tutorial results. See the bottom of [this page](../tutorials/index.html) for
instructions on how to do so.

The tutorial itself will use Rock's system management layer to perform the
same task than was previously done using a Ruby script. Further tutorials will
then introduce some tooling that this layer offers, and go towards examples with more
complex systems.

