---
title: Data-Driven Tasks
sort_info: 200
--- name:content

A data-driven task is a task that wants to perform computations whenever new
data is available on its input ports. In general, data-processing tasks (as for
instance image processing tasks) fall into that category: their goal is to take
data from their input, process it, and push it to their outputs.

Note that in Orocos, port-triggering is a mechanism that can be overlaid on top
of other triggering mechanisms like periodic or file-descriptor triggerings.

Declaration
-----------
A data-driven task is declared by using the <tt>#port_driven</tt> statement.

Let's look at the following example declaration:

~~~ ruby
task_context "Task" do
    input_port  'image', '/Camera/Frame'
    input_port  'parameters', '/SIFT/Parameters'
    output_port 'features' '/SIFT/FeatureSet'

    port_driven 'image'
end
~~~

During runtime, the <tt>updateHook()</tt> method of the corresponding C++ task
will be called when new data arrives on the listed ports (in this case 'image').
Other input ports are ignored by the triggering mechanism.

Note that, obviously, the listed ports must be input ports. Moreover, they must
be declared _before_ the call to <tt>port_driven</tt>.

Finally, if called without arguments, <tt>port_driven</tt> will activate the
port triggering on all input ports declared before it is called. This means
that, in

~~~ ruby
task_context "Task" do
    input_port  'image', '/Camera/Frame'
    input_port  'parameters', '/SIFT/Parameters'
    output_port 'features' '/SIFT/FeatureSet'

    port_driven
end
~~~

both 'parameters' and 'image' are triggering. Now, in

~~~ ruby
task_context "Task" do
    input_port  'image', '/Camera/Frame'
    port_driven
    input_port  'parameters', '/SIFT/Parameters'
    output_port 'features' '/SIFT/FeatureSet'
end
~~~

only 'image' is.

C++ task implementation
-----------------------
In the C++ task implementation, the behaviour is slightly different between
version up to RTT 2.X.

In the updateHook(), you will have to read the ports and test if a new data sample arrived. 

~~~ cpp
Camera::Frame frame;
if(_image.read(frame) == RTT::NewData)
{
}

SIFT::Parameters parameters;
if(_parameters.read(parameters) == RTT::NewData)
{
}
~~~


Deployment
----------
As we mentioned at the beginning of this page, the port-triggering mechanism
can be overlaid on top of the other mechanisms.

If one uses the default task declaration

~~~ ruby
deployment "test" do
    t = task('Task')
end
~~~

then the deployed task instance will only be triggered when new data is received
on its input ports. It is however possible to use [FD-based](fd.html) and
port-based triggering at the same time.

~~~ ruby
deployment "test" do
    t = task('Task').
        fd_driven
end
~~~

However, deploying with the [periodic triggering](periodic.html) will override
(i.e. disable) the port-triggering.

