---
title: Writing Vizkit Widgets  
sort_info: 600
---

This page deals with creating C++ widgets and registering them on the Ruby side to make
them available to Rock tooling (rock-replay, rock-display, ...)

You might also want to follow the [related tutorials](../advanced_tutorials/300_vizkit_widget.html).

Writing Custom ruby Widgets
-------------------
Vizkit can easily be extended with custom ruby widgets. To do so follow the steps below:

  * write a new ruby class which is implementing the custom behaviour
  * register the widget so that Vizkit can find it 

For registering a new ruby widget call: Vizkit::UiLoader.register_ruby_widget
"name_of_widget", factory_method

Parameters:

  * name_of_widget = any name which is used to access the widget 
  * factory_method = method which shall be used to create a new instance 
  
For registering a new widget for a specific data type call: 
Vizkit::UiLoader.register_widget_for "name_of_widgte", "data_type", callback

Parameters:

  * name_of_widgte = name of the widget which shall be used for data display 
  * data_type = typlib data type for example "/base/samples/frame/Frame"
  * callback = function which shall be called on the widget to display the sample

After the widget is registered for a specific data type, a port which is of that
data type can be displayed by calling Vizkit.display port

Writing Custom C++ Widgets 
-------------------
Vizkit can easily be extended with custom c++ qt widgets. To do so follow the steps below:

 * write the custom qt c++ widget
 * all setter and getter methods must be implemented as slots or signals with qt data types as parameters
 * implement the QDesignerCustomWidgetInterface for the widget
 * install the widget as shared library (install/lib/qt/designer/)
 * write a ruby script to make the widget usable for Vizkit and require it after Vizkit is loaded

Example: ruby script which integrates a c++ widget into vizkit

~~~ ruby
require 'eigen'

#the widget is automatically extended with the 
#following methods if it is loaded via 
#Vizkit.default_loader.widget_name

name = "ArtificialHorizon"
Vizkit::UiLoader.extend_cplusplus_widget_class name do 
  #function which is called when new data are available
  def update(sample,port_name)
      # pose and rigid body state
      if sample.respond_to?(:orientation) 
        sample = sample.orientation
      end

      if !sample.kind_of?(Eigen::Quaternion)
          # The base typelib plugin is not loaded, 
          # do the convertions by ourselves
          sample = Eigen::Quaternion.new(sample.re, 
                                         *sample.im.to_a)
      end

      angles = sample.to_euler(2,1,0)
      #call c++ slots to set the new orientation
      setPitchAngle(angles.y)
      setRollAngle(angles.z)
  end
end

#register widget to be automatically picked up when 
#Vizkit.display is called
Vizkit::UiLoader.register_widget_for(name,
                  '/wrappers/Orientation',:update)
Vizkit::UiLoader.register_widget_for(name,
                  '/wrappers/RigidBodyState',:update)
Vizkit::UiLoader.register_widget_for(name,
                  '/wrappers/samples/RigidBodyState',:update)
Vizkit::UiLoader.register_widget_for(name,
                  '/wrappers/Pose',:update)
~~~

***NOTE***:
For convenience, you can use the script *rock-create-vizkit-widget* which 
basically does the steps listed above. Moreover, it generates all the necessary
code and build files for you and registers your widget with Qt Designer. 
See [here](../advanced_tutorials/300_vizkit_widget.html) for a detailed example.
