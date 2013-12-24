---
title: Simulate a Robot
sort_info: 500
---
Abstract
-----------
This tutorial is the basis for the followup tutorials in this section. Before you try this tutorial, 
you should have worked through the basic tutorials. 

In this tutorial, we will create a library for simulating a 'Rock'-Robot. 
Further we will wrap it into an orocos task and fire it up. 

Implementation
-----------

### Create a new library
We start by entering the tutorials folder and creating a library named 'rock-tutorial' by using the 'rock-create-lib' command. 

~~~ text
cd tutorials
rock-create-lib rock_tutorial
~~~

This should give us an folder containing the following files :

~~~ text
CMakeLists.txt  INSTALL  LICENSE  manifest.xml  README  src
~~~

Make sure you add the required dependencies to the manifest.xml, i.e. here 'base/types' and 'gui/vizkit'.

~~~ text
<depend package="base/types" />
~~~

Afterwards, create a new class in the src folder named 'RockControl'.

This class will contain the (very basic) simulation logic for our Rock-Robot. Therefore it will calculate new positions
of our robot given movement commands and a time step. 

~~~ cpp
#ifndef ROCKCONTROL_H
#define ROCKCONTROL_H

#include <base/motion_command.h>
#include <base/samples/rigid_body_state.h>

namespace rock_tutorial {

class RockControl
{

public:
    RockControl();
    virtual ~RockControl();
    
    base::samples::RigidBodyState computeNextPose(const double &deltaTime, 
      const base::MotionCommand2D &command);

private:
    /**
    * Makes sure that angles are between PI and -PI.
    */
    void constrainAngle(double& angle);
    
    /**
    * This method constrains the relativ rotation and 
    * translation of a 2d motion command.
    * Rotation should be between PI an -PI.
    * Translation should be between 10 and -10.
    */
    void constrainValues(base::MotionCommand2D& motionCommand);
    
    /**
    * Current Position and orientation of the rock
    **/	
    base::samples::RigidBodyState currentPose;

    /**
    * Current heading of the rock
    **/	

    double currentHeading;
    /**
    * Current speed of the rock
    **/	
    double currentRoll;

};

}

#endif // ROCKCONTROL_H
~~~


The implementation is rather straight forward and for readability reasons only relevant parts will be explained:

The type base::MotionCommand2D contains a demanded translation and a rotation speed. Translation is measured in m/s and 
rotation in rad/s. The parameter deltaTime defines, how much time advanced since the last call. The function 
+computeNextPose+ computes the new position and and rotation of our rock, in respect to the last pose.

~~~ cpp
base::samples:RigidBodyState RockControl::computeNextPose(
  const double &deltaTime, 
  const base::MotionCommand2D &inputCommand)
{
  //limit the input values. 
  base::MotionCommand2D command = inputCommand;
  constrainValues(command);

  //calculate acceleration
  double delta_translation  = command.translation * deltaTime;
  double delta_rotation  = command.rotation * deltaTime;

  //apply new acceleration to rock state
  currentHeading += delta_rotation;
  currentRoll += delta_translation * -2;

  //limit the maximum speed and turn rate to sane values
  constrainAngle(currentHeading);
  constrainAngle(currentRoll);

  //calculate new absolut values for position and orientation
  currentPose.position += 
    Eigen::AngleAxisd(currentHeading, Eigen::Vector3d::UnitZ()) 
    * Eigen::Vector3d(0, delta_translation, 0);
  currentPose.orientation = 
    Eigen::AngleAxisd(currentHeading, Eigen::Vector3d::UnitZ()) 
    * Eigen::AngleAxisd(currentRoll, Eigen::Vector3d::UnitX());
  currentPose.orientation.normalize();

  return currentPose;
}
~~~


## Wrapping it up
So, now that we are equipped with our library, we can go to the second step and wrap the code into an orocos task.
Therefore we create a new orocos component we use the command 'rock-create-orogen'. 

~~~ text
cd tutorials/orogen/
rock-create-orogen rock_tutorial
~~~

### Define task

Again we start by adding the build dependencies in the mainfest.xml. In this case we only depend on 'rock_tutorial', as 
rock_tutorial already depends on 'base/types' and the dependencies are resolved recursive.

In the rock_tutorial.orogen we will define the orocos task. For this tutorial we replace the existing entries by our definitions:

~~~ ruby
name "rock_tutorial"
version "0.1"

import_types_from "base"
using_library "rock_tutorial"

task_context "RockTutorialControl" do
  # Declare input port motion_command
  input_port "motion_command", "base::MotionCommand2D"
  # Declare output port pose
  output_port "pose", "base::samples::RigidBodyState"
  # Set runtime behaviour
  periodic(0.01)
end
~~~

The task RockTutorialControl has an input port called 'motion_command' of type base::MotionCommand2D and an output port called 'pose' 
of type base::samples::RigidBodyState. This task will compute a new position and orientation each time the update hook will triggered, given 
the translation and rotation speed it receives on its input port. The latest motion command will be used if there is no new one.
The update hook of this task will triggered periodically.

[As with all oroGen packages](110_basics_create_component.html), we call
rock-create-orogen to finalize the package creation, and can then write the
component implementation in tasks/RockTutorialControl.cpp.

The implementation is simple, as the task only calls the library and passes on the result.

~~~ cpp
bool RockTutorialControl::startHook()
{
  //delete last instance in case we got restarted
  if(control)
    delete control;

  //create instance of the controller
  control = new RockControl();

  //figure out the period in which the update hook get's called
  taskPeriod = TaskContext::getPeriod();

  return RockTutorialControlBase::startHook();
}

void RockTutorialControl::updateHook()
{    
  //read new motion command if available
  base::MotionCommand2D motionCommand;
  _motion_command.readNewest(motionCommand);

  //compute new position based on the input command
  base::samples::RigidBodyState rbs = 
    control->computeNextPose(taskPeriod, motionCommand);
 
  //set time stamp 
  rbs.time = base::Time::now();

  //write pose on output port
  if(_pose.connected())
    _pose.write(rbs);
}
~~~


Run it
-----------

Now we should run it to see if it works. Create a scripts/ folder and create a
new <tt>rockTutorial1.rb</tt> script containing:

~~~ ruby
require 'orocos'
require 'readline'
include Orocos

## Initialize orocos ##
Orocos.initialize

## load and add the 3d plugin for the rock
Orocos.run 'rock_tutorial::RockTutorialControl' => 'rock_tutorial_control' do


  rockControl = Orocos.name_service.get 'rock_tutorial_control'    

  ## Create a sample writer for a port ##
  sampleWriter = rockControl.motion_command.writer
  
  ## Start the tasks ##
  rockControl.start
  
  ## Write motion command sample ##
  sample = sampleWriter.new_sample
  sample.translation = 1
  sample.rotation = 0.5
  sampleWriter.write(sample)

  Readline::readline("Press Enter to exit\n") do
  end
end
~~~

and run it with

ruby rockTutorial1.rb
{: .commandline}

As in the basics tutorial, the Ruby commands lead to a start of the task, i.e. calling the 
startHook() of the task. 
Afterwards we use a port writer to write a motion command to the 'motion_command' port.

In another console start the task inspector with

rock-display rock_tutorial_control
{: .commandline}

Right-klicking the output port *pose* gives you the option to use *RigidBodyStateVisualization*
to show the rock's state. It will be presented by coordinate axes showing position and orientation of
the rock.

If you want to steer the rock using a joystick, progress to [the next
tutorial](510_joystick.html). If you don't have a joystick
go [to steer using a graphical interface](/documentation/tutorials/520_virtual_joystick.html)
