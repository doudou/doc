---
title: Creating components
sort_info: 110
---

Abstract
--------------

This tutorial will give you some hands-on experience on:

 * how to model an oroGen component and embed a library
 * how to run a component

If you don't want to execute the following steps by yourself, the result can also be found in '~dev/tutorials'.
For this tutorial it is assumed that your autoproj installation can be found in ~/dev.

The component we want to create will **integrate** the functionality of the
library developed [in the previous tutorial](100_basics_create_library.html), exposing that functionality into a
system.

The final component will look like:

![Producer Component](110_producer_component.png)
{: .align-center}

This step-by-step tutorial will guide you through the process of:

 * creating the oroGen component package
 * declaring the component interface
 * adding the necessary C++ code for the component to pull data from the
   message\_driver library out to its output port.

Creating an oroGen component
--------------------------------
While Rock uses the Orocos Realtime Toolkit (Orocos RTT) to build its components upon, and uses the Orocos generation tool 'oroGen' to easily create so-called oroGen components. oroGen requires a component specification to generate a skeleton for you, which you can fill with the functionality you require.

There are multiple advantages for using oroGen:

 * one can get an overview of the components without having to look at the
   code, and without having to rely on up-to-date documentation
 * you have the guarantee that your component(s) will be usable across the
   complete Rock toolchain, from simple command-line execution to advanced
   model-based system management

This tutorial does not cover all details of Orocos components but you will find further information in the [oroGen documentation](/documentation/orogen/index.html).

Similar to the creation of a library you start to create an oroGen component using the command 'rock-create-orogen'. 

~~~ text
~/dev$ rock-create-orogen tutorials/orogen/message_producer
~~~

You will see the same configuration dialog as when calling rock-create-lib.

~~~ text
------------------------------------------
We require some information to update the manifest.xml
------------------------------------------
Brief package description 
(Press ENTER when finished):
Message producer component
Long description: 
This component will produce simple, timestamped messages                    
Author: 
New user
Author email: 
new-user@rock-robotics.org
Url (optional):

Enter your dependencies as a comma separated list. 
Press ENTER when finished:
tutorials/message_driver
~~~

As a convention, all oroGen components are created inside an orogen/ subfolder
of the corresponding library category. In this tutorial, the library and oroGen
packages are placed respectively in the tutorials/ and tutorials/orogen folders.
Moreover, when an oroGen component is created to integrate a library, it is
highly recommended to use the same name than the library (here:
tutorials/message_producer and tutorials/orogen/message_producer).

### Define tasks

The previous command creates a new folder 'tutorials/orogen/message_producer'. Inside you find two files: manifest.xml and message_producer.orogen.
The manifest.xml will have been filled with the information you provided already, but when you need to add additional dependencies to libraries or oroGen components you will have to edit manifest.xml directly. Since you want to use your newly created library, check that your library has been added as dependency.

~~~ xml
<depend package="tutorials/message_driver" />
~~~

The message_producer.orogen is the specification file of your new oroGen component, and allows you to define Orocos tasks. 
The goal is to create a component which produces messages at a rate of 1 Hz, so the component only requires an output port for messages. 

~~~ ruby
name "message_producer"

using_library "message_driver"
import_types_from "message_driver/Message.hpp"

task_context "Task" do
  needs_configuration

  output_port "messages", "message_driver/Message"
  periodic 1.0
end
~~~

The specification contains a number of statement with the following meaning:

 * name: defines the name of the component
 * using_library: tells oroGen that this component requires, i.e. needs to link against the 'message_driver' library
 * import_types_from: tells oroGen to import all types in the given file
 * task_context: everything within this block defines an Orocos task context
   model, including that it requires to be configured before startup,
   what input and output ports are required, and a default value
   for the runtime execution schema (every 1.0 second in this case)

The task has an output port called 'messages' of type 'message_driver/Message'.
This type is initially unknown to the component, but it can be found in the
'Message.hpp' header of the 'message_driver' library. the using_library
statement tells oroGen only to look for a library of the given name and link it
to any deployment.  In order to make types known to your component so that you
can use them in the specification, you have to do this explicitly with the
'import_types_from' statement.

### 

### Integration into the build system
To finalize the package creation, one has to run rock-create-orogen again, but
this time without arguments and in the folder that contains the oroGen file.

Then, you should add you component to the build system by adding the package to
autproj/manifest's layout section:

~~~ text
package_sets:
  - gitorious: rock-toolchain/package_set

# Layout. Note that the rock.base, rock.toolchain 
# and orocos.toolchain sets are imported 
# by other rock sets.
layout:
  - rock.base
  - rock.toolchain
  - tutorials/message_driver
  - tutorials/orogen/message_producer
~~~

And then call amake in the package's folder.

~~~ text
amake
~~~

If you get an error here, you most likely have a syntax error, then please
compare your files against the files in the tutorial package set.

### Writing the task
Now, that you have created the oroGen component you still have to embedd the functionality that message_driver provides, in order to achieve a proper message producing component. 

Calling 'rock-create-orogen' created several new files. For now, you only need to care about the files in the tasks/ subfolder and can safely ignore the templates folder for the moment. 

Within the subfolder 'tasks' of the created component you will find two files: 'Task.hpp' and 'Task.cpp'. They contain the skeleton for the Orocos component that has been created. Within 'Task.hpp' you will find the declarations of so-called hook methods: configureHook, startHook, stopHook, errorHook and cleanupHook. For this tutorial we will focus on the updateHook.
(More information about these methods can be found [here](../orogen/task_states.html))

To add the message_driver functionality, add a forward declaration for message_driver and add a message_driver::MessageDriver member to the Task.hpp:

~~~ cpp
namespace message_driver {
    class MessageDriver;
}

namespace message_producer {
    class Task : public TaskBase
    {   
        friend class TaskBase;
    protected:
        message_driver::MessageDriver* mpMessageDriver;
...
~~~

Add the the message driver creation to the task's constructor and deallocation to the destructor.

~~~ cpp
#include <message_driver/MessageDriver.hpp>
...

Task::Task(std::string const& name,
		 TaskCore::TaskState initial_state)
    : TaskBase(name, initial_state)
    , mpMessageDriver(0)
{
    mpMessageDriver = new message_driver::MessageDriver();
}

Task::Task(std::string const& name, RTT::ExecutionEngine* engine,
	 	TaskCore::TaskState initial_state)
    : TaskBase(name, engine, initial_state)
    , mpMessageDriver(0)
{
    mpMessageDriver = new message_driver::MessageDriver();
}

Task::~Task()
{
    delete mpMessageDriver;
}
~~~

Next, you implement the updateHook.
Within the update hook the messages port is accessed, which is identified by the name given in the specification and an '_' prefix. Since you specified the type for this port a 'message_driver::Message' can be written to the port. This update port is triggered at the rate that you specified in the the deployment section of the .orogen file.

~~~ cpp
void Task::updateHook()
{
    TaskBase::updateHook();

    message_driver::Message msg = mpMessageDriver->createMessage();
    _messages.write(msg);
}
~~~

To build your first component call:

~~~ text
amake tutorials/orogen/message_producer
~~~

Or, assuming that you are in the message_producer folder or in one of its
subfolders, you can use

~~~ text
amake
~~~

Run it
-----------

Now, that you have a component ready to run, but probably want to see it running. Rock offers a ruby scripting interface for that purpose: [orocos.rb](../runtime/index.html)
So create a subfolder scripts in the message producer component and create a file start.rb.

~~~ ruby
require 'orocos'
include Orocos

## Initialize orocos ##
Orocos.initialize

## Execute the task 'message_producer::Task' ##
Orocos.run 'message_producer::Task' => 'message_producer' do
  ## Get the task context##
  message_producer = Orocos.name_service.get 'message_producer'

  ## Configure the task
  message_producer.configure
  
  ## Start the task ##
  message_producer.start
  
  reader = message_producer.messages.reader
  
  while true
      if msg = reader.read_new
  	puts "#{msg.time} #{msg.content}"
      end
  
      sleep 0.1
  end
end
~~~

This script starts a process for the task 'message_producer' (the second argument behind Orocos.run gives the name to access it in the Orocos.run body). Once the message_producer has been created, the task can be accessed using 'Orocos.name_service.get'. Having the reference to the task context allows you to explicitly configure and then start the task. 
By convention we require all tasks to be explictly configured before they can be started, and we will go into more detail of configuration in the next tutorial.
Now, just run the script using Ruby.

~~~ text
ruby start.rb
~~~

The script prints only new messages that the producer provides. Since you set the periodicity to 1 second,  messages should show only every 1s. 

~~~ text
Tue Aug 02 16:43:48 +0200 2011 Message from MessageDriver
Tue Aug 02 16:43:49 +0200 2011 Message from MessageDriver
~~~

Stop the script with CTRL+C. The script will stop the component process by
itself, which would happen also if you had an error in the script itself.

Summary
----------------------------
In this tutorial you have learned to: 

 * create a simple oroGen component
 * how to embed a library into an oroGen component
 * how to use Ruby to start oroGen components

Now that you have a rough idea of what oroGen is and can do, we recommend that you have a look at the [oroGen cheat sheet](../orogen/orogen_cheat_sheet.pdf).

In the next tutorial you will learn more on configuring your task.

Progress to the [next tutorial](120_basics_configure_component.html).
