---
title: Configure components
sort_info: 120
---

Abstract 
---------------------------------

This tutorial will give you some handson experience on:
 
 * how to add configuration support for your component
 * how to embed configuration into the Ruby script

Components and underlying libraries often need to be configured before starting them. This tutorial will teach you
how to use oroGen component's properties to map to your library configuration option, and how to add the functionality
to the oroGen component. 

At the end of this tutorial, the component will look like:

![Component Interface](120_producer_config.png)
{: .align-center}

Let's go back inside the message driver library

acd message_driver
{: .cmdline}

Configure a component 
---------------------------------
Some libraries will require configuration before you can use them, e.g. add a the following property to the MessageDriver library.
Therefore, add the configuration object code to src/Config.hpp in the message
driver library:

~~~ cpp
#ifndef _MESSAGE_DRIVER_CONFIG_HPP_
#define _MESSAGE_DRIVER_CONFIG_HPP_

namespace message_driver
{

/**
* This configuration struct is a simple example of what you
* can do in order to wrap multiple configuration properties
* into a single object
* 
* This way you can manage configuration properties by grouping
* them into struct, and you don't have to change the oroGen 
* components interface when your configuration object changes
*/
struct Config
{
        bool uppercase;

        Config()
            : uppercase(false)
        {   
        }   

};

}
#endif // _MESSAGE_DRIVER_CONFIG_HPP_
~~~

Then adapt the message driver class (in src/MessageDriver.cpp and
src/MessageDriver.hpp)

~~~ cpp
#include <message_driver/Message.hpp>
#include <message_driver/Config.hpp>
	...

        /**
        * MessageDriver configuration
        * \param config Configuration object
        */
        MessageDriver(const Config& config = Config());

	...
private:
        Config mConfig;

~~~

~~~ cpp
...
#include <algorithm>
...

Message MessageDriver::createMessage()
{
        Message msg("Message from MessageDriver");

        if(mConfig.uppercase)
            std::transform(msg.content.begin()
	    	 , msg.content.end()
	         , msg.content.begin()
	         , toupper);

        return msg;
}

...

MessageDriver::MessageDriver(const Config& config)
        : mConfig(config)
{
}

...
~~~

### Update the build configuration 

~~~ text
rock_library(message_driver
    SOURCES MessageDriver.cpp
    HEADERS MessageDriver.hpp Message.hpp Config.hpp
    DEPS_PKGCONFIG base-types)
~~~


### Embed the configuration property into the oroGen component

In order to embed the configuration property into the oroGen component, we will
have to do the following steps:

 1. __declare__ the property in message_producer.orogen specification file
 2. __enable__ the PRE\_OPERATIONAL state. This is done by adding
    needs\_configuration in the task description in the orogen file and by
    uncommenting both configureHook and cleanupHook in tasks/Task.hpp and
    tasks/Task.cpp
 3. __move__ the construction/destruction of the driver from the task's
    constructor and destructor into configureHook / cleanupHook

The final version of the component's code is in branch 'with_config' of basic_tutorials/orogen/message_producer (_git checkout with_config_). 

__(1)__ we modify the task description in the message_producer.orogen file.
We add a property of the configuration type as follows (see also [Task
Interface](../orogen/task_interface.html)). __(2)__ Since we want a specific configuration step, the new
task should not be started without configuration, which can be set by adding the
statement 'needs_configuration'.

~~~ ruby
import_types_from "message_driver/Config.hpp"

task_context "Task" do
  needs_configuration
    
  property "config", "message_driver/Config"

  ...
end
~~~

__(2)__ we edit task/Task.hpp and activate the configureHook and the cleanupHook by
uncommenting them:

~~~ cpp
bool configureHook();
void cleanupHook();
~~~

__(3)__ Finally, we remove the allocation and deallocation from the constructor and destructor, since it will be moved into the configureHook and the cleanupHook:

~~~ cpp
bool Task::configureHook()
{
    if (! TaskBase::configureHook())
        return false;

    message_driver::Config configuration = _config.get();
    mpMessageDriver = new message_driver::MessageDriver(configuration);

    return true;
}
~~~

~~~ cpp
void Task::cleanupHook()
{
    TaskBase::cleanupHook();

    delete mpMessageDriver;
}
~~~


### Build the task
Now, build the task, and be aware: it will fail!

Assuming that you are in the message_producer folder or in one of its
subfolders,

~~~ cpp
amake
~~~

Building the task fails, since some of the constructors need to be adapted to account for the configuration requirement. However, oroGen supports you with this tasks, since it always generates the latest task template *.hpp and *.cpp files into the templates folder. 
Thus copy the constructor from templates/task/Task.hpp and templates/task/Task.cpp to replace the current ones in tasks/Task.hpp and task.cpp. 

Finally your header and source file should contain the following constructors:

~~~ cpp
Task(std::string const& name = "message_producer::Task");
Task(std::string const& name, RTT::ExecutionEngine* engine);
~~~

~~~ cpp
Task::Task(std::string const& name)
    : TaskBase(name), mpMessageDriver(0)
{
}

Task::Task(std::string const& name, RTT::ExecutionEngine* engine)
    : TaskBase(name, engine), mpMessageDriver(0)
{
}
~~~

### Embedding configuration into the ruby script

Now, copy 'start.rb' to a new file 'configure.rb' -
you will reuse 'start.rb' at a later stage. 
Modify 'configure.rb' according to the following 
code block:

~~~ ruby
require 'orocos'

include Orocos
Orocos.initialize

Orocos.run 'message_producer::Task' => 'message_producer' do  

    message_producer = Orocos.name_service.get 'message_producer'

    # 'config' is the name of the property
    message_producer.config do |p|
        p.uppercase = true
    end

    # Call to configure is required for this component
    # since it has been generated with 'needs_configuration'
    message_producer.configure
    message_producer.start

    reader = message_producer.messages.reader

    while true
        if msg = reader.read_new
            puts "#{msg.time} #{msg.content}"
        end 

        sleep 0.5 
    end 
end
~~~

### Run it

Now you can run the script. 

~~~ cpp
ruby configure.rb
~~~

Again, you should see something similar to the following. You can switch
between uppercase and mixed case printing by using your newly defined configuration options. With the script above you should see something like the following:

~~~ text
Wed Aug 03 09:40:28 +0200 2011 MESSAGE FROM MESSAGEDRIVER
Wed Aug 03 09:40:29 +0200 2011 MESSAGE FROM MESSAGEDRIVER
~~~

You can also try running the start.rb script. You will see, however, that the component will fail to start. Since you specified 'needs_configuration' in the component specification, it cannot be started without being configured beforehand.

### Use a configuration file
Property values can be read from a file, what is especially handy in case of more properties to set. The configuration file is a yaml-file which organises the properties in a structured way. For the present example create a file e.g. _message_producer_config.yml_ with the
following content:

~~~ yaml
\--- name:default
config:
    uppercase: True
~~~

Note that yaml uses indentation for organizing the data. The script can now be changed to use this file. Instead of

~~~ ruby
    # 'config' is the name of the property
    message_producer.config do |p|
        p.uppercase = true
    end
~~~

put

~~~ ruby
    # load property from configuration file
    message_producer.apply_conf_file("message_producer_config.yml", ["default"])
~~~

The result when running the script should be the same as above. It is possible to
have one configuration file per task context and then load the properties for each task
from the corresponding file. Of course the properties in the file have to match the
properties given in the orogen definition. A good way to create a proper configuration
file is to generate such a file from the task model definition. To do so run the 
following command from the shell:

~~~ sh
oroconf extract message_producer::Task --save message_producer.yml
~~~

_oroconf_ is the command to access the configuration of tasks. It can do more then 
extracting configruation files (_--help_) but we will stick to the command _extract_
for now. The first argument after extract gives the task model which is the orogen
name plus double colon plus task name. Behind _--save_ the file is given to which the
data should be written. You might note that there are some variations to the hand 
written file:

~~~ yaml
\--- name:default
# no documentation available for this property
config: 
  uppercase: 0
~~~

In this file __uppercase__ is 0 which of course is _False_ which is the default
setting of the property (see configuration constructor). The comment in the second line
would be the documentation string if the property would have one e.g. (brackets
are necessary here since the doc is attached with a dot)

~~~ ruby
    property("config","message_driver/Config")
        .doc("Configuration for the message driver.")
~~~

The first line is the name for the configuration. It is possible to have multiple 
configurations in one file which can be distinguished by their name. Think of a
file called 'message_producer_multi.yml':

~~~ yaml
\--- name:default
# no documentation available for this property
config: 
  uppercase: 0

\--- name:uppercase
# no documentation available for this property
config: 
  uppercase: 1
~~~

Then one can apply the uppercase configuration with
    

~~~ ruby
    # load property from configuration file
    message_producer.apply_conf_file("message_producer_multi.yml", 
        ["uppercase"])
~~~

For more information on configuration files have a look [here](../runtime/configuration.html).

Summary
----------------
In this tutorial you have learned to: 

 * how to embed configuration into an oroGen component
 * how to use the templates/ subfolder of an oroGen component
 * how to set configuration properties for your component in a ruby script
 * how to generate and use configuration files

In the next tutorial you will learn how to create a data driven component and how to connect it
with an existing component.

Progress to the [next tutorial](130_basics_connect_components.html).

