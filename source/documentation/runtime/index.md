---
title: Introduction
menu_title: Running Components
sort_info: 30
group: core
---

Running components using Ruby
-----------------------------

Rock includes the orocos.rb library, which allows you to control Orocos/RTT
components from Ruby, i.e. to set them up, start/stop and monitor them.

This documentation assumes that you have a basic knowledge of what the Orocos/RTT is, and about the
Orocos/RTT component model. If you do not, then you can find information in the
documentation of [the oroGen component generator](../orogen/index.html) and the
[Orocos/RTT itself](http://orocos.org/rtt).

While the orocos.rb bindings do *not* require you to use the oroGen code
generator, some functionality will not be available if you don't. Moreover,
orocos.rb uses the CORBA interface to the modules, so you need your deployments
to use CORBA (this is the default in oroGen).
{: .warning}

The next page is a step-by-step on the basics of how to start modules, set them
up, build the communication network and stop everything. Then, the rest of the
guide will present all the available functionality in more details.

Tutorials
---------
The main Rock tutorials are a great introduction to the subject of running
components using Ruby. [Check them out !](../tutorials/index.html)
