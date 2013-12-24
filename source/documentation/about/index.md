---
title: What is Rock? 
sort_info: 0
group: intro
---

Overview
--------------

Rock is a software framework for the development of robotic systems. The
underlying component model is based on the Orocos RTT (Real Time Toolkit). Rock
provides all the tools required to set up and run high-performance and reliable
robotic systems for wide variety of applications in research and industry. It
contains a rich collection of ready to use drivers and modules for use in your
own system, and can easily be extended by adding new components. The framework
was developed to specifically address the following issues in existing
solutions:

**sustainable systems**. The architecture and the tools in Rock are designed
with long-living systems in mind. In practice, it means that for us, error
detection, reporting and handling is key in any robotic architecture.

**scalability**. Provide the tools to be able to manage big systems with
a minimum fuss. But we don't require you to learn about these (complex)
tools right away: as soon as you use rock's component development tool,
oroGen, you have the guarantee that your components can be integrated
from simple scenarios using hardcoded C++ behaviors, to Ruby scripts up
to the complete system monitoring tools.

**reusable codebase**. Even though we think that the rock toolchain
is one of the best out there, some other people might feel
differently. And they might be right. That's why, in rock, most of
the functionality -- from control to data display through data
processing -- is implemented in a way that is totally independent
from rock's integration framework. That's right: just pick our
drivers, localization algorithms and control loops and integrate
them in **your** integration framework. You don't have to do
anything on our side, as the code is completely independent from the
integration parts. 

Origin
---------------

Rock has initially been developed by the <a href="http://dfki.de/robotics">DFKI
Robotics Innovation Center</a>. It is based on <a href="http://orocos.org">the Orocos
Toolchain</a>, whose primary contributor is the Katholieke Universiteit Leuven.

Website Design taken from the <a href="http://oswd.org">Open Source Web
Design</a> repository, originally from <a href="mailto:gw@actamail.com">G. Wolfgang</a>

HTML Validation: <a href="http://validator.w3.org/check?uri=referer" title="Validate code as W3C XHTML 1.1 Strict Compliant">W3C XHTML 1.0</a> | <a href="http://jigsaw.w3.org/css-validator/" title="Validate Style Sheet as W3C CSS 2.0 Compliant">W3C CSS 2.0</a>

