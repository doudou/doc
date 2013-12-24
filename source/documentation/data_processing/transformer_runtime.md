---
title: "  ... at runtime"
sort_info: 230
---

This page is going to describe the runtime configuration interface of the
components that use the transformer oroGen plugin. It will then describe runtime
support for the transformer __in the context of Ruby scripting__, and data
display. The integration in the system management layer will come in the next
pages.

Component Interface
-------------------
Components that use the transformer oroGen plugin get the following
interface elements:

 * normal stream aligner properties. Each aligned port has a _port_name_\_period
   property that allows to set its period. The transformer has a
   transformer_max_latency property that allows to override the default set in
   the transformer declaration block
 * a static_transforms property that allows to set the transformations that are
   known and do not change at startup, and
 * a dynamic_transforms port that allows to send changing transformations to the
   transformer. The data must be sent using the
   [base/samples/RigidBodyState]({% type base/samples/RigidBodyState %}) type.
   Since the source and target frames are stored in the data structure, all
   streams that are 
 * finally, for each declared frame, a _frame_name_frame property that allows to
   set the actual frame name for the component's internal frame.

If, for any reasons, one wants to read dynamic transformations from a port
separate from dynamic_transforms, it is made possible by manually feeding the
data to the transformer C++ object. This __must__ be done before the call to
TaskBase::updateHook

~~~ cpp
base::samples::RigidBodyState rbs;
while(_my_transform_input.read(rbs, false) == RTT::NewData)
    _transformer.pushDynamicTransform(rbs);
~~~

Transformation Specifications
-----------------------------
The transformation specification file is a Ruby file that lists the known static
and dynamic transformations in a system. It is usually stored in a
config/transforms.rb file.

Static transformations are declared with

~~~ ruby
static_transform translation, rotation,
  "source_frame_name" => "target_frame_name"
~~~

Translation and rotations are resp. specified with Eigen::Vector3d and
Eigen::Quaternion. The very useful Eigen::Quaternion.from_axis(angle, axis) call
is often used in these files. The translation or rotation can be omitted if they
are identities.

Dynamic transformations are declared with

~~~ ruby
dynamic_transform "producer_task_name.port_name",
  "source_frame_name" => "target_frame_name",
~~~

Where _producer_task_name_ and _port_name_ refer to the data stream that defines
the required transformation. If the task has only one RigidBodyState output
port, the port name can be left empty.

For our laser filter example, a possible configuration file would look like:

~~~ ruby
# The frame names in this file are arbitrary !
static_transform Eigen::Vector3d.new(0.3, 0, 0),
  "Body" => "ServoFrom"
static_transform Eigen::Quaternion.from_angle_axis(1, Eigen::Vector3d::UnitX),
  "ServoTo" => "Lidar",
dynamic_transform "servo.transform_samples",
  "ServoFrom" => "ServoTo",
~~~

Ruby scripting
--------------
When using the components in Ruby scripts, some automatic configuration can be
achieved.

Three bits are needed to configure the system properly:

1. the transformation declaration file (see above)
2. proper configuration of the _frame_name_name properties on the components.
   These properties are required for every frame that is required during
   computation, and for the components that generate frame transformations (as
   e.g. the servo driver compontn). In our example, we therefore need to setup
   the laser filter and the servo.
3. declarations that tell in which frame the data produced by the tasks is
   expressed in. This is not strictly required, but allows proper configuration
   of the 3D display (video below).

Finally:

~~~ ruby
# You need to initialize before you can use the transformer
Orocos.initialize
Orocos.transformer.load_conf('config/transforms.rb')
Orocos.run ... do
  lidar = Orocos.name_service.get 'lidar'
  filter = Orocos.name_service.get 'lidar_filter'
  servo = Orocos.name_service.get 'servo'

  # Tell in which frames is the data expressed. These are not
  # arbitrary anymore: they MUST match the frame names listed
  # in the transformer's
  lidar.lidar_samples.frame = 'Laser'
  filter.filtered_samples.frame = 'Laser'

  # Properly setup frame names. These are not arbitrary anymore:
  # they MUST match the frame names listed in the transformer's
  # configuration files
  filter.body_frame = "Body"
  filter.input_frame = "Laser"
  servo.source_frame = "ServoFrom"
  servo.target_frame = "ServoTo"

  lidar.lidar_samples.connect_to(filter.lidar_samples)

  # Finalize transformer configuration (see below for explanations)
  # For static transformations the task should not not yet be configured
  Orocos.transformer.setup(lidar, filter, servo)

  lidar.configure
  lidar.start
  filter.configure
  filter.start
  servo.configure
  servo.start

  # Wait for ENTER on input
  STDIN.readline
end
~~~

The Orocos.transformer.setup call provides the following additional features:

 * it verifies that all required xxx_frame properties are set with frames that
   exist in the transformer configuration files,
 * it connects the necessary frame producers to the dynamic_transformations
   ports of the tasks that require it. In this example, it means that the
   servo's transform_samples output is connected to the filter's
   dynamic_transformations input,
 * it provides the necessary static transformations in the corresponding task
   properties,
 * finally, it saves and broadcasts the system transformation configuration so
   that it can be picked up by e.g. the 3D display

TODO: video

