---
title: Control through a Virtual Joystick
sort_info: 520
---
Tutorial Info
-----------

This tutorial will give you some handson experience on:

 * how to use a graphical widget to control the rolling rock.

TODO Rewrite the tutorial using the task inspector

Finding the right widget
-----------

TODO Add as soon as it is integrated into the package directory


Integrating it
-----------
Now that we found the widget we want to use, we need to integrate it.
Again we therefore modify the runscript from the first tutorial in this
section. 

We start by adding the VirtualJoystick widget before the Orocos.run block:

~~~ ruby
# load vizkit package
require 'vizkit'

# create a widget that emulates a joystick
joystickGui = Vizkit.default_loader.create_widget('VirtualJoystick')

#show it
joystickGui.show
~~~

This will open the desired widget and give us a handle to it.
Using the handle we can register a code block in the run-loop that get's
executed whenever the widget emits a QT-Signal. Since this code needs a handle
to the rockControl task, it must be inserted after the Orocos.name_service.get line that
initializes rockControl.

~~~ ruby
rockControl = Orocos.name_service.get 'rock_control'
~~~

The "Orocos.run do .. end" block can then be modified with:

~~~ ruby
  ## Create a sample writer for a port ##
  sampleWriter = rockControl.motion_command.writer
  
  # get a sample that can be written to the port
  # If you know the sample type (here, base::MotionCommand2D),
  # an alternative syntax is
  #   sample = Types::Base::MotionCommand2D.new
  sample = sampleWriter.new_sample
  
  ## glue the widget to the task writer
  joystickGui.connect(SIGNAL('axisChanged(double, double)')) do |x, y|
    sample.translation = x
    sample.rotation = - y.abs() * Math::atan2(y, x.abs())
    sampleWriter.write(sample)
  end	
~~~

So, what does this do ? Whenever the signal 'axisChanged' is emitted by the widget the
code inside the 'do / end' is executed. One can think of it like a callback function. We use this 'callback' 
to modify a MotionCommand2D in respect to the axis values and write it to our rockControl task. Thus we
provide the 'glue'-code between the widget and the Task and also show the power of the scripting interface.

Run it
-----------
If you execute 

~~~ text
ruby rockTutorial3.rb
~~~

two windows should pop up. One with our virtual joystick the other one should be the well known visualization of the rock. 
Clicking and dragging the joystick should also make the rock move.

