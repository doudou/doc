---
title: Creating libraries
sort_info: 100
---

Abstract
--------------

This tutorial will give you some handson experience on:

 * how to create libraries in Rock
 * how to embed them into the build system of Rock

If you don't want to execute the following steps by yourself, the result can
also be found in the package 'tutorials/' after you [installed the tutorial package set](/documentation/tutorials/index.html#installing).

For this tutorial it is assumed that your autoproj installation can be found in ~/dev.

Creating libraries
-----------
Before you start developing components, you will need to think about the functionality that is required for your component. This tutorial teaches you how to write a message producer and a message consumer component, which will pass timestamped messages inbetween each other.
For the message producer and the consumer we will create a message library to provide message creation and message printing functionality. This library will make use of the existing package base/types which simplifies creation of timestamps.

Now, that it is clear what functionality is needed you can start writing the library. 
Note, that Rock strongly suggests to encapsulate your main functionality in libraries. Thus, your library code remains independent of the actual framework in use, and can be easily reused and maintained separately from any framework that wraps this functionality.

Rock allows you to create a C++ library from an existing template. Calling the
command 'rock-create-lib' starts a command line dialog to create a library
called 'tutorials/message_driver'. Remember: ~/dev is here the path to the Rock installation. It might differ on your machine.

~~~ text
~/dev$ rock-create-lib tutorials/message_driver
~~~

Once called the create script a command line dialog is started, that will request basic information to configure the template for you. The following output is the output of the script AND the expected answers. Do not copy/paste the whole block at once !

~~~ text
Initialized empty Git repository 
in ~/dev/tutorials/message_driver/.git/
Do you want to start the configuration of
the cmake project: message_driver
Proceed [y|n]
y
------------------------------------------
We require some information to update the manifest.xml
------------------------------------------
Brief package description (Press ENTER when finished):
A message_driver for the basic Rock tutorial
Long description: 
This is a library that allows message production
and message handling for the the basic Rock tutorial
Author: 
New user
Author email: 
new-user@rock-robotics.org
Url (optional):

Enter your dependencies as a comma separated list.
Press ENTER when finished:
base/types
Initialized empty shared Git repository 
in ~/dev/tutorials/message_driver/.git/
[master (root-commit) 37aa552] Initial commit
8 files changed, 108 insertions(+), 0 deletions(-)
create mode 100644 CMakeLists.txt
create mode 100644 INSTALL
create mode 100644 LICENSE
create mode 100644 README
create mode 100644 manifest.xml
create mode 100644 src/CMakeLists.txt
create mode 100644 src/Dummy.cpp
create mode 100644 src/Dummy.hpp
create mode 100644 src/Main.cpp
create mode 100644 src/dummyproject.pc.in
Done.
~~~

The newly created package comes in a ready to run after a fashion: you can build and install it right away using the build tool [autoproj](/documentation/autoproj/basic_usage.html)

~~~
amake tutorials/message_driver
~~~

***NOTE***: The template project will generate several file for you in the src/ and
test/ directories. This is meant to give you an example, but these files are
usually deleted as soon as you start developing the library. Don't forget to
remove the corresponding references from src/CMakeLists.txt and
test/CMakeLists.txt as well.
{: .warning}

### Adding the required functionality
The library does not contain message handling capabilities yet. So, we create
three new files, i.e. a header file Messages.hpp which will contain the message
type that is used to transport message between components, and a header and
source file for the MessageDriver. Put all files into the src/ folder of the
newly created package.

***NOTE***: Rock recommends to stick to use CamelCase for new structures, and to
name the files after the class it defines (i.e. Message.hpp defines the Message
structure, MessageDriver.hpp declares the MessageDriver class and
MessageDriver.cpp defines it). However, due to historic reasons not all packages
of Rock conform to this style. See [these guidelines](http://rock.opendfki.de/wiki/WikiStart/Standards/RG4)
for more information
{: .warning}

In Rock, common C++ types are defined [in the base/types package]({% pkg base/types %}).
If some type you need is defined here, it is __highly recommended__
to use the common type. In our case, we want to timestamp the message that our
library will manipulate.  If we have a look at the base/types API documentation
(follow the API documentation link from the package page above), we can see that
it defines a base::Time type that suits our needs.

First things first, we need to declare the dependency on the base/types package.
Edit manifest.xml and make sure that the following line is there (it should
already be):

~~~ xml
<depend package="base/types" />
~~~

The message class definition will be contained in a header called
src/Message.hpp, to follow Rock naming guidelines (a Message class should be
declared in the src/Message.hpp header). It should contain the following code:

~~~ cpp
#ifndef _MESSAGE_DRIVER_MESSAGE_HPP_
#define _MESSAGE_DRIVER_MESSAGE_HPP_

#include <string>
#include <base/time.h>

namespace message_driver
{
    struct Message
    {   
        // The message content 
        std::string content;

        // The timestamp when the message was created
        base::Time time;

	// Default Constructor -- required
        Message()
                : content()
                , time(base::Time::now())
        {   
        }   

        Message(const std::string& msg)
                : content(msg)
                , time(base::Time::now())
        {   
        }   
    };  

}
#endif // _MESSAGE_DRIVER_MESSAGE_HPP_
~~~

To follow the Rock guidelines, the MessageDriver class should be declared in
src/MessageDriver.hpp and defined in src/MessageDriver.cpp.
src/MessageDriver.hpp should therefore contain:

~~~ cpp
#ifndef _MESSAGE_DRIVER_HPP_
#define _MESSAGE_DRIVER_HPP_

#include <message_driver/Message.hpp>

namespace message_driver 
{

class MessageDriver
{

public: 
    /**
     * Create a timestamped message
     * \return A timestamped message
     */
    Message createMessage();
    
    /**
     * Print a message to stdout
     * \param msg Message to be printed
     */
    void printMessage(const Message& msg);
};

}

#endif // _MESSAGE_DRIVER_HPP_
~~~

And, finally, the driver implementation creates the timestamped message, and is
in src/MessageDriver.cpp:

~~~ cpp
#include "MessageDriver.hpp"
#include <iostream>

namespace message_driver
{

Message MessageDriver::createMessage()
{
        Message msg("Message from MessageDriver");
        return msg;
}

void MessageDriver::printMessage(const Message& msg)
{
        std::cout << "[" << msg.time.toString() 
                  << "] " << msg.content
                  << std::endl;
}

}
~~~


### Build

Once you created a library in Rock integrate it into the build system autoproj.
The first step towards integration into the build system is adding the newly
created files to the src/CMakeLists.txt file, since Rock default C++ libraries
use CMake for the build process. Rock also comes with some CMake macros that
facilitate setting up libraries, and resolving any required dependencies (have
a look [here](../packages/cmake_macros.html) for details).

~~~
rock_library(message_driver
    SOURCES MessageDriver.cpp
    HEADERS MessageDriver.hpp Message.hpp
    DEPS_PKGCONFIG base-types)

# Do not forget to remove the rock_executable line that 
# compiles Main.cpp, as it is not used anymore
~~~

After adapting the CMakeLists.txt add the package to the build configuration, so
that eventually you can embedded the library into oroGen components. The easiest
way to adapt the build configuration is by adding the package to the manifest's
layout section. Thus, edit ~/dev/autoproj/manifest and add the package to the
layout section. Package management in detail is discussed in [Adding
packages](/documentation/autoproj/adding_packages.html)
{: #add-to-manifest}

***NOTE***: When adding the package, make sure you use the same indentation as
the previous line, here '- rock.toolchain'. The manifest file is parsed as
.yaml, and thus relies on proper indentation.
{: .warning}

~~~
package_sets:
  - gitorious: rock-toolchain/package_set

# Layout. Note that the rock.base, rock.toolchain
# and orocos.toolchain sets are imported 
# by other rock sets.
layout:
   - rock.base
   - rock.toolchain
   - tutorials/message_driver
~~~

### Build it
Just verify that your component builds and you finished your first Rock tutorial.

~~~
amake
~~~

Summary
----------------------------
In this tutorial you have learned to: 

 * create a C++ library from the Rock template
 * embed new packages into the build system

In the next tutorial you will learn how to create an oroGen component and embed you library into it.

Progress to the [next tutorial](110_basics_create_component.html).

