---
title: Writing a 3D Vizkit plugin
sort_info: 600
---
Abstract
-----------

In this tutorial you will learn how to create your own Vizkit plugin. Vizkit plugins are used for the 3d-data visualization. 
The 3d-data visualization in Rock is based on OpenSceneGraph. For more informations and tutorials about OSG visit the [OSG website](http://www.openscenegraph.org/projects/osg/wiki/Support).
All examples created in this tutorial can be found in the /tutorials/vizkit3d_plugin_tutorial library.

![Overview2](600_vizkit3d.png)

Implementation
-----------

Normally you add a Vizkit plugin to an existing library to visualize data of this library.
For this tutorial we create a new library (using the command 'rock-create-library') and name it vizkit3d_plugin_tutorial.
In the manifest.xml we have to add some dependencies:

~~~ xml
...
<!-- rock library dependencies -->
<depend package="gui/vizkit3d" />
<depend package="base/types" />

<!-- os dependencies -->
<rosdep name="osg" />
...
~~~
Vizkit is the 3d-data visualization part of Rock and it depends on OpenSceneGraph (osg). And we are going to use some base types of Rock.

The next step is to create the viskit plugin inside the folder of this library using the following command:

~~~ text
rock-add-vizkit
~~~
You will be asked for the name and type of the plugin. The name should be a simple name as 'PathVisualization'; it has to be without namespaces. The type is the type of data we want to display, e.g. base::Time (with namespace). In our case we create a plugin named 'SphereVisualization' which will visualize data of type base::Vector3d.
After that all files we need for the plugin are created in a separated folder named 'viz'.

In the header file we can see that this plugin inherits from vizkit3d::Vizkit3DPlugin< base::Vector3d >. From Vizkit3DPlugin it has a method updateData of parameter base::Vector3d. This method will be called later from orocos components or ruby scripts to update its internal state. But we only have to take care of the three virtual methods.
In the header file it self we have to add some includes and a pointer, base/Eigen.hpp because of the base::Vector3d we use and osg/PositionAttitudeTransform for the pointer spherePos. We add this pointer here to change later easily attributes of this object. With a osg::PositionAttitudeTransform we can modify the relative position and orientation of all child objects.

~~~ cpp
#include <boost/noncopyable.hpp>
#include <vizkit3d/VizPlugin.hpp>
#include <osg/Geode>
#include <osg/PositionAttitudeTransform>
#include <base/Eigen.hpp>

namespace vizkit3d
{
    class SphereVisualization
        : public vizkit3d::Vizkit3DPlguin<base::Vector3d>
        , boost::noncopyable
    {
    public:
        SphereVisualization();
        ~SphereVisualization();

    protected:
        virtual osg::ref_ptr<osg::Node> createMainNode();
        virtual void updateMainNode(osg::Node* node);
        virtual void updateDataIntern(base::Vector3d const& value);
        
    private:
        osg::ref_ptr<osg::PositionAttitudeTransform> spherePos;
        struct Data;
        Data* p;
    };
}
~~~

In createMainNode we have to create an OSG node (e.g. osg::Geode, osg::Group, osg::Node), add to it all geometries we want to display and return it.
In our case want draw a simple sphere. Here we use the PositionAttitudeTransform as main node, to which we add a Geode as child. To this Geode we add a drawable Sphere.

~~~ cpp
osg::ref_ptr<osg::Node> SphereVisualization::createMainNode()
{
    // create a sphere with radius 0.5
    osg::ref_ptr<osg::Sphere> sp = new osg::Sphere(osg::Vec3d(0,0,0), 0.5);
    osg::ref_ptr<osg::ShapeDrawable> sd = new osg::ShapeDrawable(sp.get());
    // set a color
    sd->setColor(osg::Vec4(0.0f, 0.59f, 0.59f, 1.0f));
    osg::ref_ptr<osg::Geode> spGeode = new osg::Geode();
    spGeode->addDrawable(sd.get());
    // attach it to a parent which is a osg::PositionAttitudeTransform
    spherePos = new osg::PositionAttitudeTransform();
    spherePos->addChild(spGeode);

    return spherePos;
}
~~~

The updateMainNode is an update callback of OSG, it will be triggered if the internal states of the geometries can be updated.
So what we have to do here is to update our nodes using the data in p->data. We use our pointer spherePos to modify the position of our sphere.

~~~ cpp
void SphereVisualization::updateMainNode ( osg::Node* node )
{
    // Update the main node using the data in p->data
    osg::Vec3d position(p->data.x(), p->data.y(), p->data.z());
    spherePos->setPosition(position);
}
~~~

This method will be executed by the updateData method and updates the internal state of our type base::Vector3d.
We don't need to change here anything.

~~~ cpp
void SphereVisualization::updateDataIntern(base::Vector3d const& value)
{
    p->data = value;
}
~~~
Vizkit runs in a separated task context but it is assured that updateMainNode and updateDataIntern won't be triggered at the same time.

Now you are done with your first Vizkit plugin. There are two different ways to execute the plugin, using an orocos task or only with a ruby script.
How you start it using a ruby script is part of the Advanced Vizkit-Plugin Tutorial.


Displaying more than one type with a single plugin
--------------------------------------------------

If you want to have more than one type to represent the internal state of your plugin you can inherit additionally from VizPluginAddType< SecondType >.

~~~ cpp
namespace vizkit3d
{
  class SphereVisualization
    : public vizkit3d::Vizkit3DPlugin<base::Vector3d>
    , public vizkit3d::VizPluginAddType<int>
    , boost::noncopyable
  {
  public:
    SphereVisualization();
    ~SphereVisualization();
  
  protected:
    virtual osg::ref_ptr<osg::Node> createMainNode();
    virtual void updateMainNode(osg::Node* node);
    virtual void updateDataIntern(base::Vector3d const& value);
    virtual void updateDataIntern(int const& value);
      
  private:
    struct Data;
    Data* p;
  };
}
~~~

Then of course you have to add the method updateDataIntern with the new type as parameter too.

Configuration Interface
-----------------------
To add configuration parameters, one should use [the Qt Property
system](http://qt-project.org/doc/qt-4.8/properties.html). This makes sure that
the properties are accessible on the left configuration pane of the Vizkit3D
main window. For instance, to make the color configurable:

~~~ cpp
namespace vizkit3d
{
  class SphereVisualization
  {
  [...]
    Q_OBJECT
    Q_PROPERTY(QColor color READ getColor WRITE setColor);
  public:
    void setColor(QColor const& color);
    QColor getColor() const;
  }
}
~~~

Interfacing with Ruby scripts
-----------------------------
There is the need for slightly more work to make this new plugin available on
the Ruby side. This is done by using Qt's dynamic invocation system (the same
one that is used for Qt signals/slots).

To make your plugin available in Ruby, one has to do two things:

 * export the methods that one wants to have accessible on the Ruby side using
   the Q_INVOKABLE Qt macro.
 * register the plugin on the Vizkit ruby side

The following limitations apply:

 * the method cannot have a return value
 * the method can have only up to 10 arguments

**Exporting C++ methods** In the SphereVisualization vizkit plugin above, the
updateData method would be exported by doing:

~~~ cpp
namespace vizkit3d
{
  class SphereVisualization
  {
  [...]
    // This is required manually as Qt does not know about templates and
    // updateData is a templated method
    Q_INVOKABLE void updateData(base::Vector3d const& v)
    { vizkit3d::VizPluginBase::updateData(v) }
  };
}
~~~

Any method can be exported this way. It is for instance customary to mark the
setters and getters for configuration parameters with Q_INVOKABLE.

**Registering the plugin on the vizkit side**. When using the Rock CMake macros,
one would edit a file called viz/vizkit_plugin.rb in the package and add

~~~ ruby
# The first argument is arbitrary. It is used in the next calls
#    to refer to the plugin
# The second argument is the name of the shared object (without the
#    -viz suffix). With Rock CMake macros, this is the base name of
#    your package (e.g. corridor_planner for planning/corridor_planner)
# The third argument is the name of the class, without namespaces
Vizkit::UiLoader.register_3d_plugin 'SphereVisualization',
    'mypackage', 'SphereVisualization'

# The first argument is the same as the first argument
#    to register_3d_plugin
# The second argument is the typelib type name of the type you want to
#    visualize. It is usually the same as the C++ type name, only with
#    a leading slash and :: replaced by /
# The third argument is the name of the method that should be called to
#   display the requested samples
Vizkit::UiLoader.register_3d_plugin_for 'SphereVisualization',
    '/base/Vector3d', :updateData
~~~

**Using the plugin**. Once you've successfully completed these steps, your new
plugin will be automatically be made available on the rock-replay and
rock-display GUIs. Moreover, it can be accessed in Ruby scripts directly:

~~~ ruby
require 'vizkit'
viz = Vizkit.default_loader.SphereVisualization

# create an instance of the base type Vectro3d
position = Types::Base::Vector3d.new

# a global index
i = 0.0
# initialize timer
timer = Qt::Timer.new
timer.connect(SIGNAL('timeout()')) do
    i += 1.0
    j = i / 200.0
    position.x = Math::cos(j) * j
    position.y = Math::sin(j) * j
    position.z = 0.5
    viz.updateData(position)
end

# start the timer with a timeout of 10 ms
timer.start(10)
Vizkit.exec
~~~

