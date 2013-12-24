---
title: Dynamic Services
sort_info: 700
---

This section hits one of the functionalities that syskit is the only one to
offer in robotic model-based systems: the ability to deal with _dynamic
interfaces_.

It is sometimes convenient or event necessary to add the ability, in components,
to create ports at runtime. For instance, certain device drivers would know how
many devices they are attached to only when they access the hardware. Or, motion
task merging paradigms such as itasc or whole body control would create ports as
required by the number of motion tasks they should handle.

In syskit, this aspect is handled in two parts:
 - on the modelling side, by declaring that a given task context (not a
   composition) has the ability to create new data services.
 - at runtime, by auto-configuring the underlying RTT task context according to
   the data services that have been created.

Modelling API
-------------
The dynamic part of a task context interface is represented by declaring that
the task context can create new data services. This is done through by calling
dynamic_service on the task context model:

~~~ ruby
class Examples::TaskWithDynamicInterface
  dynamic_service AServiceSrv, :as => 'dispatch' do
    # The 'name' local variable contains the name provided
    # when instanciating this dynamic service
    provides AnotherServiceSrv, :as => name
  end
end
~~~

The service model given to the dynamic_service call declares what kind of
service can be created. The :as option gives a dynamic service name, i.e. a way
to refer to this particular dynamic service when you will want to create one.

Finally, the block is what needs to be performed to instanciate the given
service. It __must__ call #provides with the expected service model, or one of
its submodels. Unlike "normal" #provides calls, ports that this #provides call
expects will be __added__ to the interface. Syskit will check that a
corresponding dynamic_input_port / dynamic_output_port stanza exists on the
oroGen model.

New services can then be created with

~~~ ruby
model = Examples::TaskWithDynamicInterface.specialize
model.require_dynamic_service('dispatch', :as => 'service_name')
~~~

The name given to require_dynamic_service is accessible in the dynamic_service
block as the 'name' local variable.  It is customary to use this name in the
corresponding #provides, either plain, or prefixed/suffixed as needed.

The object returned by #with_dynamic_service is a proper task context model. As
such, it can be used everywhere a task context model is used, as for instance
[subsystem definitions](subsystem_design.html). It can e.g. be selected in place of
the base task context:

~~~ ruby
AComposition.use(Examples::TaskWithDynamicInterface => model)
~~~

If you plan to have a more permanent use for this model, assign it to a Ruby
constant:

~~~ ruby
model = Examples::TaskWithDynamicInterface.specialize
model.require_dynamic_service('dispatch', :as => 'service_name')
ConfiguredTask = model
~~~

Since dynamic services are a bit of a 'raw' API, it is common to create an API
on top of it that represents the semantic of the created services. For instance,
assuming that the services we are creating in our examples are used for
monitoring, one could do

~~~ ruby
class Examples::TaskWithDynamicInterface
  def self.with_monitor(name)
    model = specialize
    model.require_dynamic_service('dispath', :as => 'name')
    model
  end
end
~~~

which then allows to use this interface with

~~~ ruby
ConfiguredTask = Examples::TaskWithDynamicInterface.
  with_monitor('my_monitor')
~~~

Dynamic Services and RTT Task Contexts
--------------------------------------
What we have seen so far is how to __model__ dynamic services. However, since
there is no common protocol on the oroGen task context side (and I don't believe
there could be one), you will need to ensure that the task context gets
configured according to the required dynamic services.

This is done by adding code to the [task's #configure
method](task_contexts.html#extend-with-code)

~~~ ruby
class Examples::TaskWithDynamicInterface
  def configure
    super # this applies the necessary
          # configuration files. We will
          # override using the dyn srv
          # definitions
    each_data_service do |srv|
      # There are currently no way to be sure that 'srv' is dynamic.
      # Use the names to check it out
      #
      # Configuration needs to be stored in task arguments. Note that
      # you can extend the task with new arguments by calling
      # component_model.argument in the block given to dynamic_service

      # Do what is necessary on #orocos_task
      #
      # srv is an instance of Syskit::BoundDataService
      # srv.model is an instance of Syskit::Models::BoundDataService
      if srv.fullfills?(Examples::InputMonitorSrv)
        orocos_task.create_input_monitor srv.name
      elsif srv.fullfills?(Examples::OutputMonitorSrv)
        orocos_task.create_output_monitor srv.name
      end
    end
  end
end
~~~

Complete Example
----------------
In this example, we will model a task context that can have a set of inputs and
merges them based on a given priority. The data type is base/samples/Joints

~~~ ruby
# Define the services related to our I/O
import_types_from 'base'
module Base
  data_service_type 'JointsProviderSrv' do
    output_port 'out', 'base/samples/Joints'
  end
  data_service_type 'JointsConsumerSrv' do
    input_port 'in', 'base/samples/Joints'
  end
end

module Merger
  class Task
    # Declare the merged inputs as a dynamic data serivce
    # 
    # The corresponding orogen description must have
    # a dynamic port declaration that matches, e.g.
    #
    # dynamic_input_port /^in_\w+$/, 'base/samples/Joints'
    #
    # If the name does not have a fixed pattern, 'nil' can
    # be used
    #
    # dynamic_input_port nil, 'base/samples/Joints'
    dynamic_service Base::JointsConsumerSrv, :as => 'merged_inputs' do
      # Create an argument on the final task to give the priority for this
      # service. It will be retrieved later in the configure method using the
      # service name, i.e.
      #
      #   priority = arguments["#{srv.name}_priority"]
      #
      component_model.argument "#{name}_priority",
        :default => options[:priority]
      # This service's port will be mapped to a
      # dynamically created in_#{name} port
      #
      # Note that it is possible to also map to static
      # ports !
      provides Base::JointsConsumerSrv, 'in' => "in_#{name}"
    end

    # This method is overloaded so that we can autoconfigure the task
    # based on the dynamic services that got instanciated. Part of the
    # configuration is stored in task arguments, such as the _priority arguments
    # that are added in the dynamic_service block above
    def configure
      super
      # On this task, the list of inputs is given
      # as a property, so generate the property value
      # and save it
      merging_conf = []
      each_data_service do |srv|
        if srv.fullfills?(Base::JointsConsumerSrv)
          merging_conf << [srv.name, arguments["#{srv.name}_priority"]]
        end
      end
      orocos_task.merging = merging_conf
    end
  end

  # Define ourselves a composition that is going to
  # be the resulting merged joints
  class MergedJoints < Syskit::Composition
    # The merging task
    add Merger::Task, :as => 'merger'
    # The output of the merge allows us to make
    # the composition a joint provider itself
    export merger_child.merged_joints_port
    provides Base::JointsProviderSrv, :as => 'joints'
  end

  # Create a composition that merges the given providers
  #
  # @param [{name => [Component, Integer]}] a name to subsystem
  #   definition mapping that describes the joints providers
  # @return a submodel of MergedJoints
  def self.merge(providers = Hash.new)
    # Allocate the services
    task = Merger::Task.specialize
    # Define one dynamic service per required provider. The
    # providers are given as a mapping of a name to a
    # provider service (the data service that will
    # give us the data) and a priority.
    providers.each do |name, (provider, priority)|
      task.require_dynamic_service 'merged_inputs',
        :as => name,
        :priority => (priority || 0)
    end
    # Create a submodel of the composition, that will
    # use our specialized task context
    MergedJoints.new_submodel do
      merger = overload 'merger', task
      # Add the children and create the connections
      providers.each do |name, (provider, priority)|
        child = add provider, :as => name
        # We should be able to refer to the data
        # service here, but it is currently buggy
        # Name the port directly
        child.connect_to merger.find_input_port("in_#{name}")
      end
    end
  end
end
~~~

<div class="note" markdown="1">
You can test the modelling part of the example above by copy/pasting it to a
file called for instance example.rb and modifying it in the following way:

  1. modify the "class Task" first lines to match
      
     ~~~ ruby
     class Task < Syskit::TaskContext
       orogen_model.output_port 'merged_joints',
         'base/samples/Joints'
       orogen_model.dynamic_input_port /in_\w+/,
         'base/samples/Joints'
     ~~~

  2. add the following lines at the end
     
     ~~~ ruby
     add_mission(
       Merger.merge(
         'first' => [Base::JointsProviderSrv, 0],
         'second' => [Base::JointsProviderSrv, 1]))
     ~~~

Then, run

~~~
syskit instanciate ./example.rb
~~~

to see the result
</div>

