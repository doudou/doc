---
title: Data Types
sort_info: 100
---
The first step to consider when integrating a ROS and a Rock system is the issue
of making both systems understand each other. In other terms, use compatible
data types.

Rock and ROS do not share the same scheme when it comes to defining data types.
ROS uses its own message description format, while Rock uses a subset of C++ --
mainly for ease of integration of "framework-free" libraries.

The two possible schemes to transfer data between Rock components and ROS nodes
are described [in the oroGen documentation](../orogen/transports/ros.html)
