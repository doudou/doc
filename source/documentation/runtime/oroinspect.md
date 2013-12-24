---
title: oroinspect - finding out what is there
sort_info: 25
---

oroinspect is a command line tool that allows you to find out everything that is
oroGen-handled on your system: types, task contexts, deployments.

Call it with

~~~ text
oroinspect <pattern>
~~~

and it will display all objects whose name patch 'pattern' (where 'pattern is a
regular expression)

For instance, on a Rock installation

~~~ text
oroinspect hokuyo
~~~

displays

    ===== hokuyo::Task is a task context defined in hokuyo
    ------- hokuyo::Task ------
    subclass of RTT::TaskContext (the superclass elements are displayed below)
    Ports
      [out]latency:/hokuyo/Statistics
      [out]period:/hokuyo/Statistics
      [out]scans:/base/samples/LaserScan
      [out]state:/int32_t
      [in]timestamps:/base/Time
    Properties
      end_step:/int32_t: the step at which to end acquisition
      merge_count:/int32_t: how much ranges measurement to merge into one single reported measurement
      port:/std/string: the device port
      rate:/int32_t: the baud rate (only for serial connections)
      remission_values:/int32_t: will record remission values if set to 1
      scan_skip:/int32_t: how much acquisitions to ignore between two acquisitions to report
      start_step:/int32_t: the step at which to start acquisition
      test:/hokuyo/Statistics
    No attributes
    No operations
    
    
    ===== /hokuyo/Statistics is a type defined in hokuyo
    /hokuyo/Statistics {
      count </uint32_t>,
      max </uint32_t>,
      min </uint32_t>,
      mean </uint32_t>,
      dev </uint32_t>}
    
    ===== /hokuyo/Task_STATES is a type defined in hokuyo
    /hokuyo/Task_STATES{
      Task_STOPPED = 4,
      Task_FATAL_ERROR = 2,
      Task_EXCEPTION = 3,
      Task_TIMESTAMP_MISMATCH = 7,
      Task_RUNTIME_ERROR = 6,
      Task_RUNNING = 5,
      Task_PRE_OPERATIONAL = 1,
      Task_INIT = 0
    }

One can also display only the tasks, deployments and types by calling oroinspect
with --types, --deployments and --tasks

