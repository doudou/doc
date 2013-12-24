---
title: Vizkit 3D
sort_info: 450
---

This page deals with using Vizkit3D for 3D data visualiztion, the creation of custom C++ Vizkit3DPlugins and
how to make them available on the Ruby side to integrate them into the Rock tooling 
(rock-replay, rock-display,etc.) 

Using Vizkit3D
-------------------
Vizkit can be used in two way. Either one can create C++ only applications or
one may use the ruby bindings to create applications. 

As the ruby bindings allow greater flexibility in terms of integration into the
work flow of the rock world it is the preferred way. 

~~~ ruby
require 'vizkit'
Orocos.initialize

## create a widget for 3d display
view3d = Vizkit.vizkit3d_widget

#show it
view3d.show()

## load and add the 3d plugin for the rock
rbs_plugin = Vizkit.default_loader.RigidBodyStateVisualization
rbs = Types::Base::Samples::RigidBodyState.new

rbs.position = Eigen::Vector3.new(0, 5.0, 0)
rbs.orientation = Eigen::Quaternion.new(0, 0, 0, 1)

rbs_plugin.updateRigidBodyState(rbs)

#execute the main GUI loop
Vizkit.exec()

~~~

Writing Vizkit3D Plugins
----------------------
**Note:** If you want to create a visualization for an existing library you can also call rock-add-vizkit on 
the command line from the library folder to add a ready to run dummy visualization.
{: .note}

For writing a custom Vizkit3DPlugin one needs to derive from the template 
class vizkit3d::Vizkit3DPlugin&lt;T&gt;, where the template argument T is the data type
that should be visualized. 

~~~ cpp
#include <Eigen/Geometry>
#include <vizkit3d/Vizkit3DPlugin.hpp>

namespace vizkit3d 
{

class TrajectoryVisualisation 
	: public Vizkit3DPlugin<Eigen::Vector3d>
{
    public:
	TrajectoryVisualisation();    

    protected:
	virtual osg::ref_ptr<osg::Node> createMainNode()
	{
	    // create a new osg::Node object here, which 
	    // contains all the relevant structure that is needed
	    // e.g.
	    return new osg::Group();	
	}
	virtual void updateMainNode( osg::Node* node )
	{
	    // access to internal data is guarded in this method
	    // The node parameter is of the type that was 
	    // created in the createMainNode method.
	    
	    // update the node object to reflect the changes in 
	    // the internal data model
	}

	void updateDataIntern( const Eigen::Vector3d& data )
	{
	    // access to internal data is guarded in this method
	    path.push_back( data );
	}
};
    private:
	std::vector<Eigen::Vector3d> path;
}
~~~

Using the Vizkit3DPlugin template class, there is code that prevents that
updateDataIntern and updateMainNode are called at the same time.  
The Vizkit3DPlugin class provides an _updateData(const &Data)_ method, that can be called from the outside to update
the internal model of the node (e.g. set a new point in the trajectory). This
will in turn call the _updateDataIntern_ method, in which you can store updates to
your internal model (in this case a list of points). 

The updateMainNode is
called from within the visualization thread, when it is safe to access both your
internal model (e.g. the path vector) and the osg::Node that represents your
visualization. In this method, you need to modify the osg::Node to reflect the
internal state of the visualization (e.g. create the osg structures to visualize
the path). See the TrajectoryVisualization class in the base/types package for an
actual implementation.

When writing plugins that don't visualize data types that are base data
types, they do not go into the base/type package, but usually into the package
that defines the datatype to be visualized. Follow the convention and
 add a directory in that package with the name viz, that builds
optionally depending on weather gui/vizkit3d is available or not.

Therefore, the following needs to added to the package:
To the manifest:

~~~ xml
<package>
    ...
    <depend package="gui/vizkit3d" optional="1" />
</package>
~~~

In the viz subdirectory an additional shared library needs to be created, that is
called the same way as the project, with the -viz suffix. So the CMakeLists.txt
file in the viz subdirectory should contain something like this:

~~~ text
rock_vizkit_plugin(trajectory-viz
    TrajectoryVisualization.cpp 
    HEADERS TrajectoryVisualization.hpp)
~~~


Adding Properties
-----------
There is the possibility to add QT-Properties to each Vizkit plugin. The properties will be accessible in a property tree on the Vizkit3DWidget GUI and also in ruby.
For doing this you have to add the following qt macros to your plugin:

~~~ cpp
Q_OBJECT
Q_PROPERTY(double current_depth READ getCurrentDepth WRITE setCurrentDepth)
~~~
Documentation about the Qt Property System can be found [here](http://doc.qt.nokia.com/stable/properties.html).

If the value of the property changes, in particular by calling setCurrentDepth, you have to emit the SIGNAL 'propertyChanged' with the name of the property that has changed. So the property tree on the Vizkit3DWidget GUI takes notice about the change.

~~~ cpp
emit propertyChanged("current_depth");
~~~

Because of the Qt macros in the visualization class the meta-object compiler has to handle the header file. When using the 'rock_vizkit_plugin' cmake macro, this can be done by adding the line 'MOC YourVisualization.hpp':

~~~ cmake
rock_vizkit_plugin(trajectory-viz
    TrajectoryVisualization.cpp 
    HEADERS TrajectoryVisualization.hpp
    MOC TrajectoryVisualization.hpp)
~~~

Ruby
-----------
To make the plugin loadable from Ruby you have to add a macro to the end of your cpp file which 
adds a factory class to the library and exports it to be accessible from the qt loader.

~~~ cpp
//Macro that makes this plugin loadable in ruby, this is optional.
VizkitQtPlugin(TrajectoryVisualisation)
~~~

You also have to add an invokable qt method to your plugin calling the updateData method of the base class 
(do not forget to add the header to the MOC section of the CMakeLists file - see Adding Properties).

~~~ cpp
#include <Eigen/Geometry>
#include <vizkit3d/Vizkit3DPlugin.hpp>

namespace vizkit3d
{

class TrajectoryVisualisation 
	: public Vizkit3DPlugin<Eigen::Vector3d>
{
    public:
        Q_OBJECT
        Q_INVOKABLE void updateData(const Eigen::Vector3d &data)
        {Vizkit3DPlugin<Eigen::Vector3d>::updateData(data);}
	TrajectoryVisualisation();    
...
~~~


Furthermore to integrate the plugin into the Rock tooling you have to register your plugin with 
a small ruby file called vizkit_plugin.rb which must be located in the same folder like the 
c++ code.

~~~ ruby
Vizkit::UiLoader.register_3d_plugin('TrajectoryVisualisation',
        'trajectory', 'TrajectoryVisualisation')
Vizkit::UiLoader.register_3d_plugin_for('TrajectoryVisualisation',
        "/base/Vector3d", :updateData )
~~~

Now you can access the updateData method and all properties from ruby.

~~~ ruby
require 'vizkit'
plugin = Vizkit.default_loader.TrajectoryVisualisation
plugin.current_depth = 5.0
Vizkit.exec
~~~

