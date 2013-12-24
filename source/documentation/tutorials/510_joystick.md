---
title: Adding a Joystick into the Mix
sort_info: 510
---
Tutorial Info
-----------

This tutorial will give you some handson experience on:

 * how to find a 'standard' Rock package that provides a port X
 * how to install the package.
 * how to create a small control loop by attaching a Joystick to our rolling rock task.


Finding a standard task that provides a port X.
-----------

We are using here an existing task of the rock-robotics framework and the task from the previous 
tutorial, so we don't have to implement anything.

In order to get our control we need a task that supplies us with 'base::MotionCommand2D'. 
For that it is recommended to take a look into the [package directory](/package_directory.html).
You will have two options there:

 * look for a specific orogen package in the Packages section. For instance, you can search for
   "joystick orogen"
 * look for tasks that produce the type you require (here /base/MotionCommand2D) by going into
   the oroGen types section, selecting the type and looking at the Produced by section at the
   top of the page.

The package directory gives you a general overview of available 'standard' packages and types.
For our purpose we need to look into the subcategory 'oroGen Types'. This category shows all
available types that are exported by any task in the standard rock packages. As we are interested
on 'base::MotionCommand2D' we open the page about this type. Apart from the general description of
the type there is a section 'produced by' and 'consumed by', which gives us the list of all tasks
producing 'base::MotionCommand2D'. As we want to integrate a joystick, we pick controldev::JoystickTask
from the list, which is defined in 'drivers/orogen/controldev'.  

In order to install the package to your installation, either do 

~~~ text
amake drivers/orogen/controldev
~~~

which will install the current version of the package, but not update / build it
later. To permanently integrate it into your whole installation, you have to [edit the
manifest file](100_basics_create_library.html#add-to-manifest).

Integration of the task
----------

Now that we have found a task, that supplies the needed motion commands we need to integrate it into
our run script. Therefore we modify the last runscript. By adding a joystick driver to it.
As we know from the package directory, the controldev package provides a tasks for our purpose. To find
out which exact task we can use we call 

~~~ text
oroinspect -t controldev
~~~

This returns us an output of every installed task that is defined controldev.
The interesting part of the output is in our case this :

    ==========================================================
    Task name:  controldev::JoystickTask
    defined in controldev
    ----------------------------------------------------------
    
    ------- controldev::JoystickTask ------
    A Task that provides a joystick driver
    subclass of controldev::GenericTask (the superclass elements are displayed below)
    Ports
      [out]four_wheel_command:/controldev/FourWheelCommand
      [out]motion_command:/base/MotionCommand2D
      [out]raw_command:/controldev/RawCommand
      [out]speed_command:/base/SpeedCommand6D
      [out]state:/int32_t
    No dynamic ports
    Properties
      device:/std/string: Path to the joystick device
      maxRotationSpeed:/double: Maximum rotation speed in rad/s
      maxSpeed:/double: Maximum translation speed in m/s
      minRotationSpeed:/double: Minimum rotation speed in rad/s
      minSpeed:/double: Minimum translation speed in m/s
    No attributes
    No operations

This output tells us that there is a task controldev::JoystickTask, which has a
output port with the name 'motion_command' of the type '/base/MotionCommand2D'.
So it fits exactly our needs.

Knowing this, we can now modify the script from the previous tutorial (copy it
to scripts/rockTutorial2.rb):

~~~ ruby
require 'orocos'
require 'readline'
include Orocos

## Initialize orocos ##
Orocos.initialize

## Execute the task ##
Orocos.run 'rock_tutorial::RockControlTutorial' => 'rock_tutorial_control',
     'controldev::JoytickTask' => 'joystick' do
  
    ## Get the specific task context ##
    rockControl = Orocos.name_service.get 'rock_tutorial_control'
    joystick = Orocos.name_service.get 'joystick'

    ## Connect the ports ##
    joystick.motion_command.connect_to rockControl.motion_command

    ## Set some properties ##
    joystick.device = "/dev/input/js0" # this might be another port

    ## Configure the tasks ##
    joystick.configure

    ## Start the tasks ##
    joystick.start
    rockControl.start

    Readline::readline("Press Enter to exit\n") do
    end
end

~~~

This script is quite the same as the script from rock tutorial 1, but with some improvements. As you can see
we execute a second Taskt named 'joystick', besides the 'rock_tutorial' task.

Also we acquire a handle to the JoystickTask. Then we connect the output port 'motion_command'
of the task 'joystick' with the equal named input port of the task 'rockControl'. The task 'joystick' of course uses the 
joystick input to generate motion commands. In the next step we could set a property named 'device' of the task 'joystick'. 
With that we can set a string which is the local device of the joystick on your machine. Next we configure the 'joystick' 
task by issuing the command 'joystick.configure'. At last we will start all the Tasks. 

Run it
----------
You can now simply run it by executing

~~~ text
    ruby rockTutorial2.rb
~~~
And in another console:

~~~ text
    rock-display rock_tutorial_control
~~~
Again with a right-click on the *pose* port you can start the visualization and enjoy commanding around the robot with the joystick.
