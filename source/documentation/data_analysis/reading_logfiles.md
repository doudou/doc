---
title: Reading Log Data
sort_info: 200
---

There are two main ways to read log data. Either converting them to a
space-separated file using the pocolog tool, or by writing Ruby scripts that
leverage the pocolog API.

pocolog: command-line inspection of log files
---------------------------------------------
The pocolog command-line tool allows you to easily look at log files.

pocolog _logfile_
{: .commandline}

will list the streams that are present in _logfile_, along with how many samples they have, and their start and end time. Example:

~~~ text
[....1_ImageAcquisition]% pocolog lowlevel.log
File data is in little endian byte order
loading file info from ./lowlevel.idx... invalid index file
building index ...done
Stream controldev.motionCommand [/controldev/MotionCommand]
2503 samples from Fri 14/08/2009 15:01:00 
	to Fri 14/08/2009 15:02:59 [0:01:59.859]
Stream controldev.rawCommand [/controldev/RawCommand]
2504 samples from Fri 14/08/2009 15:01:00 
	to Fri 14/08/2009 15:02:59 [0:01:59.859]
Stream hbridge.status [/hbridge/Status]
112657 samples from Fri 14/08/2009 15:01:00 
	to Fri 14/08/2009 15:02:59 [0:01:59.999]
Stream simpleController.cmd_out [/hbridge/SimpleCommand]
112986 samples from Fri 14/08/2009 15:01:00 
	to Fri 14/08/2009 15:02:59 [0:01:59.998]
No samples for
can.stats [/can/Statistics]
~~~

The format of each stream description is:

~~~ text
Stream stream_name [type_name]
sample_count samples from start_time to end_time [duration]
~~~

As we already mentioned, the generated log files are self-contained. This means that all the information needed to read the data is already contained in the log file. The main information block is a description of each stream's data type.

To read this type definition, use:

pocolog _logfile_ -s _stream_name_ -\-type
{: .commandline}

It will display the data type for the given stream. Example:

<pre markdown="0">
[....1_ImageAcquisition]% pocolog lowlevel.log -s 
	controldev.motionCommand --type
loading file info from ./lowlevel.idx... done
/controldev/MotionCommand { translation &lt;/double&gt;,
	 rotation &lt;/double&gt; }
</pre>

Getting the data as a CSV file
------------------------------

You can ask pocolog to generate a text file with each of the data fields as a column. To do that, simply:

pocolog _logfile_ -s _stream_name_
{: .commandline}

The -\-from and -\-to options allow to limit the display to a given index range:

pocolog _logfile_ -s _stream_name_ -\-from 10 -\-to 5
{: .commandline}

will skip the first 10 samples and then display 40 samples in a row.
Identically, -\-every N allows to display one sample every N.

The -\-time option displays the time of the samples as saved in the log file
(usually, it is the time at which the sample has been written on the file).
More advanced analysis using the Ruby interface

Reading log files using Ruby scripts
------------------------------------

The most flexible way is to read the file directly from Ruby. Example code:

~~~ ruby
#! /usr/bin/env ruby

require 'pocolog'
include Pocolog

file = Logfiles.new File.open("asguard-controller.log")
data_stream = file.stream("Control.two_phase")
data_stream.samples.each do |realtime, logical, sample|
  # Get the position difference between now and the last cycle
  # for motor 0
  speed = sample.cur[0].position - sample.last[0].position
end
~~~

See [this page](../runtime/ruby_and_types.html) for a description of how the C++
types look like on the Ruby side.

