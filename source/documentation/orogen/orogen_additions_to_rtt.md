---
title: Advanced - oroGen additions to the standard RTT component interface
sort_info: 530
---

For the Rock toolchain to work, there are a few things that all oroGen component
have that normal RTT components do _not_ have. This page is a reference to these
"additions", for RTT developers that want to understand what is different
between a normal RTT component and an oroGen component.

1. a getModelName operation is defined on all oroGen components. This
   operation returns the full model name for the task (in practice, the class
   name). So, for instance, the "Task" task context in the hokuyo oroGen
   project will return hokuyo::Task.
   
   This is implemented so that orocos.rb is able to automatically load oroGen
   specification files when contacting a task context, regardless of how this
   task context has been deployed and/or started.

2. a 'state' port with type 'int' is defined, in which all the state
   transitions are exported. The allowed values in this port are defined by an
   oroGen-generated enumeration called orogen_project::task_name_STATES. (e.g.
   hokuyo::Task_STATES). The management of it is done transparently by
   orocos.rb.

3. all known input ports are automatically cleared in startHook()



