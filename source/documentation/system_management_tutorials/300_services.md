---
title: Going abstract - Data Services
sort_info: 300
---

The result of this tutorial can be found in bundles/tutorials_scripts if you
followed the instructions at the bottom of [this page](../tutorials/index.html)
{: .note}

Abstract
--------
In this tutorial, you will learn how to deal with _dependency injection_ in Rock's
system management layer. This feature allows you to specify
abstract compositions, where some (or all) of the parts are not actual
component instances but just component models (classes of components).

In a more concrete manner, this tutorial will show you:

 * how to change the RockControl composition so that it can use any component
   able to output a /base/MotionCommand2D type, instead of just a joystick
 * how to select which command source should be used

The next tutorial will then deal with the _runtime workflow_ when using
syskit, e.g., how to switch between different modalities / sources and how to
restart components that crashed.

Data Services
-------------
A data service describes two things:

 * the (minimal) expected interface, i.e. what input and output ports a component needs to have in order to support the service
 * the expected functionality, what the component does with this data. This particular information is contained in the data service name

For instance, a very common data service is the Base::PoseSrv service:

 * as its name implies, it generates poses
 * as its definition requires (not show here), it has a
   [base::samples::RigidBodyState](../base_types.html) output port

Other services (i.e. the Base::OrientationSrv service) would have the same output port,
but their names would reflect the fact that they do something different.

Abstracting the command generator
---------------------------------
In our case, we want to modify the result of the previous tutorial to allow the
selection of the command generator, i.e. being able to use different generators.

The first step is to define a generic data service and naming it 'CommandGeneratorSrv'. Copy the
scripts/01_joystick.rb to scripts/02_services.rb and add the following at the top:

~~~ ruby
# Load the types the data service requires
import_types_from 'base'
# Defines a data service model
module Tutorials
  data_service_type 'CommandGeneratorSrv' do
    output_port 'cmd', '/base/MotionCommand2D'
  end
end
~~~
This defines a data service model that can be accessed with
Tutorials::CommandGeneratorSrv. These data services can be used in place of
actual task contexts to signify that a composition needs (in this case) "some
component that generated a command". Let's use it in the composition:

~~~ ruby
module Tutorials
  # Declare the composition. The new model can be accessed with either
  # Compositions::RockControl or Cmp::RockControl
  class RockControl < Syskit::Composition
    # Any command generator. We can omit the Tutorials:: prefix as RockControl
    # is defined in the same namespace
    add CommandGeneratorSrv, :as => "cmd"
    # And one rock
    add RockTutorial::RockTutorialControl, :as => "rock"
    # Create any unique connection possible, by matching input and output ports
    # of the same data type. If ambiguities exist, an error is generated
    cmd_child.connect_to rock_child
  end
end
~~~

and let's make the instanciation _fail_:

syskit instanciate scripts/02_services.rb
{: .cmdline}

You'll get the following error, and you can see that some data services (red
boxes) are still present in the graphical representation of the network:

~~~
= cannot find a concrete implementation for 1 task(s)
| placeholder for DataServices::CommandGenerator
|   no candidates
|   child cmd of Compositions::RockControl:0x7fc2ff5df470{conf => [default]}[]
~~~

[![Instanciation error](300_instanciate_error_output_thumb.png)](300_instanciate_error_output.png)

Snapshot of __syskit instanciate__ (Click to zoom in)
{: .caption}

Remember: data services are _abstractions_ of components. They can therefore not
be executed (they are not actual components), and actual components must be
selected in their place.

The first part is to declare which components __provide__ the service,
i.e. are valid choices for the data service. Add the following after the
using_task_library 'controldev' statement:

~~~ ruby
Controldev::JoystickTask.provides Tutorials::CommandGeneratorSrv, :as => 'cmd'
~~~

This tells the system that an instance of controldev::JoystickTask
provides the service 'Tutorials::CommandGeneratorSrv'. The service thus declared
must be given a name through the :as option. Syskit will verify that there are
ports on the task that match the ports of the data service.

Note that the port type are important for matching connections and port names do
not necessarily need to match between the service and the task. Syskit will map
the names automatically _if the mapping by type is unambiguous_. If multiple
ports could be used, it will check if there is one with the same name. If it is
not the case, an error is generated and you will have to specify the mapping
manually.
{: .note}

and try again

syskit instanciate scripts/02_services.rb
{: .cmdline}

[![Instanciation error](300_instanciate_output_thumb.png)](300_instanciate_output.png)

Syskit knows only one component that provides the CommandGeneratorSrv service,
so it picked it up automatically and generated the expected network

Adding a random-motion generator
--------------------------------
The rock.tutorials package set contains a random-motion generator
(tutorials/orogen/tut_brownian) that we will now use as an alternative to the
joystick. 

First and foremost, when multiple oroGen projects start to be involved,
deployments quickly become hard to manage. The accepted workflow when you are
starting to build a complete system is to create a dedicated "deployment
project" that creates all the deployments that your system needs. In the case of
these tutorials, it is the tutorials/orogen/tut_deployment oroGen project. Have
a look at it, and make sure that it is built in your installation by either
adding manually to autoproj/manifest or [by building the whole rock.tutorials
package set once and for all](../tutorials/index.html#installing)

Let's now integrate the random motion generator. Modify scripts/02_services.rb
to get this new random movement generator task:

~~~ ruby
using_task_library 'controldev'
using_task_library 'rock_tutorial'
using_task_library 'tut_brownian'
~~~

And change the use_deployment lines to match:

~~~ ruby
Syskit.conf.use_deployment 'rock_tutorial'
Syskit.conf.use_deployment 'joystick'
Syskit.conf.use_deployment 'brownian'
~~~

We also have to declare that the random motion generator does provide the
CommandGeneratorSrv service. Add the following after the using_task_library
statements:

~~~ ruby
TutBrownian::Task.provides Tutorials::CommandGeneratorSrv, :as => 'cmd'
~~~

and let's make the instanciation fail again:

syskit instanciate scripts/syskit3.rb
{: .cmdline}

This time, there is another error:

~~~ text
= cannot find a concrete implementation for 1 task(s)
| placeholder for Tutorials::CommandGeneratorSrv
|   2 candidates
|     Controldev::JoystickTask,
|     TutBrownian::Task
|   child cmd of Tutorials::RockControl:0x7f6ff64c0780{conf => [default]}[]
~~~

There are now two concrete tasks providing the
CommandGeneratorSrv service: the joystick and the random motion generator. Because
the selection is ambiguous, Syskit refuses to proceed and
bails out.

We therefore need to select it before the component network can be generated. In
order to do that, we need to give more details when adding the composition, i.e.
due to the two existing options for the CommandGeneratorSrv service, the
'add_mission' line at the end of the file is not specific enough anymore. We
additionally have to tell which task should be used in specific for the given
composition: 

~~~ ruby
# Read this as: deploy a RockControl composition, using
# the TutBrownian::Task in places where it makes sense
add_mission Tutorials::RockControl.use(TutBrownian::Task)
~~~

The ambiguity is now resolved and instanciating the component network will work just fine:

syskit instanciate scripts/02_services.rb
{: .cmdline}

[![Composition using TutBrownian](300_instanciate_brownian_thumb.png)](300_instanciate_brownian.png)

Running the final network
-------------------------

syskit run scripts/02_services.rb
{: .cmdline}

Conclusion
----------
In this tutorial, you got started with using data services, i.e. description of
abstract components, and how to resolve ambiguities of different data sources at
requirement time (when calling 'add') instead of doing it at modelling time
(when creating the compositions)

The [next tutorial](400_runtime_workflow.html) deals with the _runtime workflow_ when using the
supervision: how to switch between different modalities / sources, how to
restart components that crashed, ...

