---
title: Overview
menu_title: Envire
sort_info: 20
group: addons
---

Envire Rationale
-------------

Envire is a package for representing information on the environment. The
rationale behind the development is to have a common way of holding any
information related to the environment of the robot. The application of envire
is mainly focused on navigation tasks for now, but could be extended to also
include robot environment interaction for manipulation. The reasoning for having
a common datastructure for representing the environment is to simplify the
interchange of algorithms between applications. 

Overview
-------------

The envire package is mainly made up of three types of objects:
 
 - **Maps** representing information in a given reference frame. Maps can be 2d or
   3d, sparse or dense. In principle envire also supports non-cartesian maps,
   although not much has been done so far in this area.

 - **Frames** provide the spatial context for the maps. Each map can have a
   reference frame associated. All frames are organized in a tree structure. In
   this way for any two frames in this tree, there is a defined transformation
   between them.

 - **Operators** perform operations on maps and take the frame association of the
   maps into account. Operators are stored in a graph structure, and can be
   chained to produce something like a processing pipelines for sensory input and
   post-processing of map data.

Envire also provides common services. All objects are stored in an environment,
which supports serialization/deserialization. There is also handling for meta
information associated with the individual elements. Further, there is an event
system, which can be used for notification on changes in the structure of the
environment. Envire also provides a vizkit plugin, with plugin modules for most
of the map types.

