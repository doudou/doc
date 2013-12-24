---
title: Replay Log Data
sort_info: 300
---

Orocos::Log::Replay is a Ruby class which eases common tasks on log files. It
provides methods to access, filter and replay the data inside Ruby scripts, or
into oroGen components. 

**Note:** See also [Displaying Log Files](/documentation/graphical_user_interface/300_displaying_logfiles.html) if you want to visualize the logged samples.
{: .note}

Features
---------

The Replay class provides a range of features: 

  * log file loading
  * time synchronous replay
  * step by step replay
  * seeking
  * user-specific log data filtering
  * log file abstraction, i.e. in Ruby scripts, log files behave like instances of Orocos::TaskContext

This functionality requires the orocos.rb package to be installed, which is
contained in the Rock toolchain.
{: .warning}

See [this page](../runtime/ruby_and_types.html) for a description of the mapping
from the C++ types in Ruby 
{: .notes}

Usage
------
The replayed log files can either be specified when initializing a
Orocos::Log::Replay object, or later on by using the #load method.

~~~ ruby
replay = Log::Replay.open(file0,folder0,...)
replay.load(folder1)
replay.load(file1)
~~~

So far it is not possible to load multiple log files from the same component at the
same time because of overlapping names.
{: .warning}

After loading, the class offers an interface to log files that mimicks the
Orocos::TaskContext API. This assumes that the log streams are called
'task_name.port_name' -- which is the case if you are using the
Orocos.log_all_ports setup method. 

To access all streams from a particular task context, do

~~~ ruby
task1 = replay.camera
task2 = replay.task('camera')
~~~

The equivalent call for live components is Orocos.name_service.get

Then, each log stream is mapped to a port-like object:

~~~ ruby
# Accesses the data logged from the port 'frame' of the 
# task 'camera'
output_port = replay.camera.frame
~~~

They are accessed through a reader or directly via the method read. 
The only difference between the two ways is the method 'read' will always return the last replayed 
data sample, while the behavior of the reader depends on the applied connection policy.

~~~ ruby
reader = output_port.reader :type => :data
puts reader.read                    #no different between both
puts output_port.read               #reads
~~~

~~~ ruby
reader = output_port.reader :type => :buffer,:size => 1
puts reader.read                    #=> last replayed sample
puts reader.read                    #=> nil
puts output_port.read               #=> last replayed sample
puts output_port.read               #=> last replayed sample
~~~

If you wish to feed logged data into a running RTT component, you can use the
normal connect_to method:

~~~ ruby
replay.camera.frame.connect_to rtt_task.frame
~~~

If you wish to transform the data before it gets fed to the task, you can
specify a filtering block:

~~~ ruby
replay.camera.frame.connect_to rtt_task.frame do |sample|
  # the sample gets transformed here
  sample # return the modified value
end
~~~

Moreover, to make simple setups straightforward, the Replay class can autoconnect
log streams to component ports. For each port of
the target task, an equivalent port (same name and same type) is searched for in
the logged data. If the name differs, a name mapping can be provided.

~~~ ruby
# performs an auto connect
replay.connect_to rtt_task
~~~

~~~ ruby
# Connects matching ports between the log data and a running 
# RTT component
# When looking for matching names, 'frame' (on logged 
# side) will be replaced by "iframe" (on component side).
replay.connect_to rtt_task, :frame => :iframe
~~~

Once the replay network is properly set up, you start replaying by calling #run#.

~~~ ruby
replay.run         # replay all logged data as fast as possible
replay.run(true,1) # replay as fast as the data were recorded
replay.step        # replay one data sample
~~~

<div class="warning">
Only ports are replayed which are connected to RTT components, for which a
reader has been created or a filter was specified. If you want to specify that
one particular stream should be replayed, set its #tracked# property to true:

~~~ ruby
# Forces the log stream to be replayed
replay.camera.frame.tracked = true
~~~
</div>

Understanding time in log files {#time}
-------------------------------
Rock's log file format embeds two times per sample one _logical time_ and one _real
time_. Currently, these two times correspond to the time at which the logger
received a sample (logical time) and the time it wrote it to disk (real time).

However, when visualizing or replaying data, one usually wants to consider the
time of the sample as the replay time (i.e. the time stored in the sample's
timestamp field, if there is one). In most cases, the logical time will do
the trick. However, it won't be the case if the computer on the robot is
overloaded (either because the disk is too slow or the CPU load too high).

In the future, the logical time will be the sample time. However, the current
implementation of Rock's logger component does not allow that, so one needs to
use some options on Rock's log replay tooling.

The following methods are limited for data types that have a 'time' field of
type /base/Time. The replay algorithm will fall back to the logical time for
streams do not fit this.

On the command line, one can use the --time-source option to rock-replay:

~~~ ruby
rock-replay --use-sample-time mylogfile.0.log
~~~

In Ruby scripts, one can use the time_source attribute on the Replay class

~~~ ruby
replay = Log::Replay.open(file0,folder0,...)
replay.use_sample_time = true
~~~

Finally, one can process log files offline to store the sample time in place of the
logical time [using rock-convert](converting_logfiles.html). This is very useful
when the same logfile is going to be processed multiple times, as it will
remove the need to add the use_sample_time option to the other tools

~~~ ruby
rock-convert --use-sample-time LOGFILE
~~~

Example: Loading and accessing log data:
---------------------------------------

~~~ ruby
#!/usr/bin/env ruby

require 'orocos/log'
include Orocos

replay = Log::Replay.open('camera.0.log')
replay.camera.frame do |frame|
  puts frame.time
end

#replay as fast as possible
replay.run 
~~~

Example: Loading and replaying log data
---------------------------------------

~~~ ruby
#!/usr/bin/env ruby

require 'orocos/log'
include Orocos

replay = Log::Replay.open('camera.0.log')

Orocos.run 'deployment_x' do
  task_x = Orocos.name_service.get('task_x')

  #auto connect
  replay.connect_to task_x 
  task_x.start
  replay.run
end
~~~

Example: Filtering log data
---------------------------

~~~ ruby
#!/usr/bin/env ruby

require 'orocos/log'
include Orocos

replay = Log::Replay.open('camera.0.log')

Orocos.run 'deployment_x' do
  task_x = Orocos.name_service.get('task_x')
  replay.connect_to task_x 

  #the filter is applied on each frame
  #before it is written to ports or readers
  
  replay.camera.frame.filter = Proc.new do |frame|
    frame.time = Time.now
    frame
  end

  task_x.start
  replay.run
end
~~~

Example: Advanced
---------------------------

~~~ ruby
#!/usr/bin/env ruby

require 'orocos/log'
include Orocos

replay = Log::Replay.open('camera.0.log','sonar.0.log')

Orocos.run 'deployment_x','deployment_y' do
  task_x = Orocos.name_service.get('task_x')
  task_y = Orocos.name_service.get('task_y')
  replay.connect_to task_x 
  #port mapping
  replay.connect_to task_y, "sonar.frame" => "iframe"
  
  #get a reader 
  #Be careful. Here is a filter applied on the reader
  #if the original frame is changed in the filter all 
  #readers for the same frame which are created after this 
  #reader are affected as well.
  reader = replay.camera.frame.reader do |frame|
    puts frame.time
    frame
  end

  #display all ports of type /base/samples/frame/Frame
  ports = replay.find_all_ports('/base/samples/frame/Frame')
  ports.each do |port|
    port.pp
  end

  task_x.start
  task_y.start

  replay.step(false)                    #replay one step
  replay.step(false)                    #replay one step

  puts replay.camera.frame.read.time    #display current 
                                        #frame time stamp
  puts reader.read.time                 #should be the same
  replay.rewind                         #rewind log data

  #the code block is called for each message on all
  #ports
  replay.run do |port,data|
    puts data.time if port.name == 'frame'
  do
end
~~~
