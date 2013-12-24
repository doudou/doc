---
title: Data connections
sort_info: 150
pkg: tools/orocos.rb
---

Port access
-----------

Getting a port from a task is as easy as

~~~ ruby
port_object = my_task.port_name
~~~

The returned port object is either an [InputPort]({% yard Orocos::InputPort %}) or an
[OutputPort]({% yard Orocos::OutputPort %}), based on the port type.

Creating connections
--------------------

A connection is always created from an output port to an input port:

~~~ ruby
output_port.connect_to input_port
~~~

By default, the created connection is a data connection. To change that, one can
use the :type option

~~~ ruby
output_port.connect_to input_port, :type => :buffer, :size => 10
~~~

Both ports must have the same type, otherwise a ConnectionFailed exception is
raised.

Be reminded, that an input port can be part of multiple connections, i.e. multiple 
output ports can be connected to the same input port.

Disconnecting
-------------

There are different ways to disconnect ports

 * one can specify a specific connection to remove:

~~~ ruby
output_port.disconnect_from input_port
~~~

 * one can completely disconnect an input port

~~~ ruby
input_port.disconnect_all
~~~

 * one can completely disconnect an output port

~~~ ruby
output_port.disconnect_all
~~~

Note that it is fine to use the first method even though the process hosting the
input port is dead (e.g. has crashed or cannot be contacted). If it is the
output port that is dead, then one should use the second method.

Reading outputs or writing inputs
---------------------------------

One can read outputs and write inputs from the Ruby scripts. To achieve this,
one gets a [OutputReader]({% yard Orocos::OutputReader %})
or a [InputWriter]({% yard Orocos::InputWriter %}) object
(respectively) with:

~~~ ruby
writer = input_port.writer
reader = output_port.reader
~~~

By default, these port access objects will use a data policy for their
connection to the port. To specify a buffer policy, simply do

~~~ ruby
writer = input_port.writer :type => :buffer, :size => 10
reader = output_port.reader :type => :buffer, :size => 10
~~~

Then, the data can be read with

~~~ ruby
sample = reader.read
~~~

the returned value will be nil if there is no data available, and the
corresponding Typelib::Type object otherwise. It always return a sample if 
the connection has been written at least once.

To get only new samples (i.e. samples that you never read already), do

~~~ ruby
sample = reader.read_new
~~~

The returned object allows to manipulate
the C++ data structure as if it was a normal Ruby object. For instance, a data
sample looking like

~~~ cpp
struct LaserReadings
{
    std::string name;
    base::Time time;
    std::vector<double> readings;
};
~~~

One can do

~~~ ruby
sample.name # returns a Ruby string
sample.time # returns a Typelib object that has .seconds and .microseconds methods
sample.readings # returns an Enumerable of floating-point values
~~~

and written with

~~~ ruby
sample = writer.new_sample
sample.name = "MyReading"
sample.time.seconds = Time.now.tv_sec
sample.time.microseconds = Time.now.tv_usec
output_port.write(sample)
~~~

