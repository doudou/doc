---
title: Task Interface
sort_info: 100
---
We'll cover in this page how to define your task's interface. All statements
presented in this page are to be included in a task context definition, i.e.
between 'do' and 'end' in

~~~ ruby
task_context "ClassName" do
   ...
end
~~~

The only constraint is that the task name *must* be different from the project
name. This is because, on the generated C++ code, the project name is mapped
into a namespace and the task name as a class name. Having a class and a
namespace have the same name is generates quite a bit of ambiguity on the C++
side, so it is forbidden.

The task interface is the focus of that page. Other issues, as using different
triggering modes and subclassing between task contexts is covered later.

Interface Elements
------------------

![RTT Component Interface](orocos_component.png)
{: .align-center}

 * **Ports** are used to transfer data between the components
 * **Properties** are used to store and set configuration parameters
 * Finally, **Operations** (not represented here) are used to do remote method
   calls on the components

As a general rule of thumb, the components should communicate with each other
only through ports. The properties and operations (as well as the state machine
covered in [the next page](task_states.html)) are meant to be used by
a coordination layer (in the Rock case, either Ruby scripts or the model-based
management layer).

Limits on Types Used in the Interface
-------------------------------------

Unfortunately, oroGen has to cope with RTT limited support for basic types (int,
long, ...), and therefore the following limitations apply:

<div markdown="1" class="content-txtbox-warning">
**Some limitations on types used in the task interface**

 * char, short, 64 bit integers and float are forbidden as argument types for a
   operator and as properties. Use int instead of char or short, and
   double instead of float. Unfortunately there is no equivalent for 64 bit
   integers.
 * they can always be used as elements in a struct, though
 * structs that contain 64 bit integers won't be marshallable as XML.
 * there is no typelib marshalling - and hence no data logging - for basic types
   (int, double, float, ...). They work fine when used in a structure,
   obviously.
</div>

Ports {#ports}
-----
Ports are defined with

~~~ ruby
input_port('in', 'my_type').
  doc('documentation string')
output_port('out', 'another_type').
  doc('documentation string')
~~~

Input ports can be used in the C++ code in two ways, which one you want to use
depends on what you actually want to do.

* if you want to read all new samples that are on the input (since an input port
  can be connected to multiple output ports)

~~~ cpp
// my_type is the declared type of the port
my_type sample;
while (_in.read(sample) == RTT::NewData)
{
    // got a new sample, do something with it
}
~~~


* if you are just interested by having some data

~~~ cpp
// my_type is the declared type of the port
my_type sample;
if (_in.read(sample))
{
    // got a sample, do something with it
}
~~~

Finally, to write on an output, you use 'write':

~~~ cpp
// another_type is the declared type of the port
another_type data = calculateData();
_out.write(data);
~~~

Another operation of interest is the <tt>connected()</tt> predicate. It tests if
there is a data provider that will send data to input ports
(<tt>in.connected()</tt>) or if there is a listener component that will get the
samples written on output ports.

For instance,

~~~ cpp
if (_out.connected())
{
    // generate the data for _out only if somebody may be interested by it. This
    // is useful if generating // the data is costly
    another_type data = calculateData();
    _out.write(data);
}
~~~

Properties
----------
Properties are defined with

~~~ ruby
property('name', 'configuration_type').
    doc 'what this property is about'
~~~

And can be accessed in the code with

~~~ cpp
configuration_type configuration_value = _name.get();
// Validate configuration_type, and change the value
_name.set(configuration_value)
~~~

Operations
-------
The operations offer a mechanism from which a task context can expose
functionality through remote method calls. They are defined with:

~~~ ruby
operation('commandName').
    argument('arg0', '/arg/type').
    argument('arg1', '/example/other_arg')
~~~

Additionally, a return type can be added with

~~~ ruby
operation('operationName').
    returns('int').
    argument('arg0', '/arg/type').
    argument('arg1', '/example/other_arg')
~~~

Note the dot at the end of all but the last line. This dot is important and,
if omitted, will lead to syntax errors.

In the generated task class, the operation simply maps to a C++ method:

~~~ cpp
return_type operationName(arg::type const& arg0, example::other_arg const& arg1);
~~~

the default return type is 'void'.

By default, the operations are run into the callee thread, i.e. the thread of
the task context on which the operation is defined. However, it basically means
that, if the caller needs the result of the operation, it will have to wait
until the operation is finished and therefore start to have quite a coupling
with the task context that executes the operation.

If it is desirable, one can design the operation's C++ method to be thread-safe
and declare it as being executed in the caller thread instead of the callee
thread. This is done with

~~~ ruby
operation('operationName').
    returns('int').
    argument('arg0', '/arg/type').
    argument('arg1', '/example/other_arg').
    runs_in_caller_thread
~~~

C++ objects representing the interface elements
-----------------------------------------------
For each element of the interface, Orogen declares the corresponding RTT C++
object as an attribute of the task implementation. The attribute's name is the
object name with an underscore prepended. For instance, the operation declared
with

~~~ ruby
operation('operationName')
~~~

is mapped to an attribute named <tt>\_operationName</tt>, of type <tt>RTT::Operation</tt>.

The mappings are as follows:

 * operations are instances of RTT::Operation
 * input ports are instances of RTT::InputPort
 * output ports are instances of RTT::OutputPort
 * properties are instances of RTT::Property

Refer to the RTT's documentation to learn more on the operations available on
these objects.

Default and required activities
-------------------------------

When deployed in a system, a task context is assigned an activity. This activity
defines how the component should be triggered.

In all generality, any component should be able to support any kind of activity.
However, not giving any hint about what would be a "best" activity for a
component makes it very hard for people to use such component.

In order to make life easier, oroGen allows you to propose a default activity
for your task contexts. This is done with

~~~ ruby
default_activity "activity_type", activity_parameters
~~~

The available triggering mechanisms are detailed [here](triggering/index.html).
They can be declared as default activities with

~~~ ruby
default_activity 'periodic', 0.1 # periodic activity wit a period of 100ms
default_activity 'fd_driven'     # IO-driven activity
default_activity 'triggered'     # triggered by external events, i.e. explicit
                                 # calls to trigger() or data-driven task
~~~

Note that fd_driven and triggered do not usually need to be specified.
'triggered' is the default activity and 'fd_driven' is set as default activity
if you use [the fd_driven statement](triggering/fd.html).

Finally, one can force the deployment to use an activity by replacing
"default_activity" by "required_activity".

Dynamic Ports {#dynamic-ports}
-------------
Some components (e.g. the logger or the canbus components) may create new ports
at runtime when one of their operations is called. While not strictly necessary
in day-to-day operations, some of the model-based tooling (namely, rock-roby)
may require hints that this creation is possible. This is done with the
dynamic_input_port and dynamic_output_port declarations, possibly using a
regular expression as name pattern and either a message type or nil for "type
unknown". For instance

~~~ ruby
dynamic_output_port /.*/, "canbus/Message"
~~~

declares, in the [canbus::Task]({% task canbus::Task %}), that ports with
arbitrary names might be added to the task interface, and that these ports will
have the /canbus/Message type.



