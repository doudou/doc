---
title: Devices
sort_info: 520
---

In robot software, devices are very specific things. All the devices form the
interface of the software with the external world. Moreover, in a
component-oriented system like the one we are manipulating in Syskit, devices
are __unique__: while it is possible to instanciate multiple image processing
components, a robot cannot arbitrarily spawn a new camera.

For these reasons, devices have a specialized place in syskit as well. This
is because:

 * devices are __unique__, for the reason above
 * devices are the __source__ of all data. Therefore, they have a
   special place when looking at the dataflow (more on that [in a later
   section](dataflow_dynamics.html).

In Syskit, __devices__ are defined as a special kind of [data
service](data_services.html). You need to know about data services first.

We will start about how these things are modelled. Note that some of the
sections on this page are marked as advanced. It is fine to skip them on a first
reading, only to come back later when they are needed.

Declaring devices
-----------------
Device models are specialized forms of data services. They are declared in the
same way than data services, but instead using the device_type stanza instead of
the data_service_type one. It is customary to define all device models under the
Dev module (see models/blueprints/devices.rb in the rock bundle for a common
hierarchy)

The goal, when declaring devices, is to refer to the device as precisely as
possible. I.e. one would never declare a Camera device. Instead, it would
declare a FirewireCamera or a ProsilicaCamera. For instance:

~~~ ruby
device_type "ProsilicaCamera" do
  provides Srv::ImageProvider
end
~~~

In Rock, all devices are categorized within the Dev namespace. See
models/blueprints/devices.rb in the rock bundle for more information.

Communication Busses
--------------------
A special type of device is a __communication bus__. The busses are meant to
provide multiplexing/demultiplexing for other devices. They are handled directly
by syskit, which has major advantages:

 * it avoids the need to create a composition per device that is attached to the
   bus (the solution one would have so far).
 * once support for a given type of communication bus is written, any device
   conforming to the syskit combus conventions can use it.
 * the combus-to-driver relationship is setup in a meaningful way (i.e. com bus
   is started before the driver and stopped afterwards).

A communication bus type is declared with

~~~ ruby
com_bus_type('Canbus', :message_type => '/canbus/Message')
~~~

where the message type is the type of the input/output ports that are used to
communicate with that type of communication bus. It is customary to define the
busses under the Dev::Bus namespace (see models/blueprints/devices.rb in the
rock bundle for a common hierarchy).

Declaring Device Drivers
------------------------
In order to use a device at runtime, one has to have a __device driver__, that
is a task context that is declared as being able to interface with that device.

This relationship is declared with the driver_for stanza. For instance, in
models/orogen/camera_prosilica.rb, one writes:

~~~ ruby
class CameraProsilica::Task
  driver_for Dev::CameraProsilica
end
~~~

It is customary to define all device models in your own bundle's
models/blueprints/devices.rb. To import the device definitions from other
bundles, one has to do:

~~~ ruby
require 'rock/models/blueprints/devices'
~~~

i.e. prefix the device file path with the bundle's name.

Robot Definitions
-----------------
Device and combus models are used to describe the interface to the robot
hardware. This is done in profiles using a robot block:

~~~ ruby
syskit_profile 'MyRobot' do
  robot do
    device(Dev::CameraProsilica, :as => 'left_camera')
    device(Dev::CameraProsilica, :as => 'right_camera')
  end
end
~~~

Once defined, the devices can be referred to in the rest of the profile with the
devicename_dev form (e.g. left_camera_dev above). For instance:

~~~ ruby
syskit_profile 'MyRobot' do
  robot do
    device(Dev::CameraProsilica, :as => 'left_camera')
    device(Dev::CameraProsilica, :as => 'right_camera')
  end
  define 'left_image', ImageProcessingPipeline.use(left_camera_dev)
end
~~~

If only one device driver is available for a given device, is is automatically
selected. Otherwise, one has to select it explicitly in the device declaration:

~~~ ruby
device Dev::CameraProsilica, :using => AlternativeDriver::Task
~~~

We will see later on that the device model can hold important information about
the device, such as the expected update rate. This information can be accessed
from [the task context's configure method](task_contexts.html#extend) with:

~~~ ruby
class CameraProsilica::Task
  def configure
    super
    robot_device # => the Syskit::Robot::MasterDeviceInstance
                 #    that describes the device this component
                 #    is interfaced with.
  end
end
~~~

Combus Support __(Advanced)__
--------------
Communication bus support in syskit relies on the following conventions:

 * the device driver must have at least one input or output of the combus
   message type (it can obviously have both, but having none is an error)
 * if the device driver expects an output, the communication bus driver __may__
   either have a single input port of the combus message type, or declares a
   [dynamic input port](../orogen/task_interface.html#dynamic-ports) of the
   message type
 * if the device driver expects an input, the communication bus driver __must__
   declare a [dynamic output port](../orogen/task_interface.html#dynamic-ports)
   of the combus message type

The convention that the combus driver __must__ follow for dynamic ports is that
the ports should be created at configuration time, and should be named
wdevice_name and device_name, where 'device_name' is the name of the attached
device. This configuration is usually done in the [combus configure
method](task_contexts.html#extend)

For instance, let's consider the combus declaration from above

~~~ ruby
com_bus(Dev::Bus::Canbus, :as => 'can0')
through 'can0' do
  device(Dev::Actuators::Hbridge, :as => 'actuators').
end
~~~

The actuator device driver need both input and output through the communication
bus. The driver therefore declares an input port and an output port of the
/canbus/Message type. These names are arbitrary.

The [canbus component]({% task canbus::Task %}) declares a static input port
of the /canbus/Message type. This is going to be used for all data that should
be sent to the bus. For the bus-to-driver part, it declares a dynamic output
port with

~~~ ruby
dynamic_output_port /.*/, "canbus/Message"
~~~

The usage of the hbridge driver attached to the can combus is therefore
__valid__ from syskit's point of view, and the network generation will
succeed. 

__At runtime__, syskit will require the combus component to create, during
configuration, an output port of the same name than the device (i.e.
"actuators"). This creation is done in the combus configure method. For instance
(forget about the can_id thing for now, this is a quite advanced topic that will
be explained later).

~~~ ruby
class Combus::Task
  def configure
    super
    each_attached_device do |dev|
      can_id, can_mask = dev.can_id
      name = dev.name
      Robot.info "#{bus_name}: watching #{name} on 0x#{can_id.to_s(16)}/#{can_mask.to_s(16)}"
      orogen_task.watch(name, can_id, can_mask)
    end
  end
end
~~~

