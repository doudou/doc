---
title: oroGen types and Ruby scripts
sort_info: 30
---

When you develop oroGen components, you declare C++ types. However, since the
system deployment in Rock is done in Ruby, we have to understand how the oroGen
C++ types are accessed on the Ruby side.

This page will explain:

 * the mapping between C++ and Ruby in Rock
 * how to customize that mapping to get more functionality out of your Ruby
   scripts

General API
-----------
To create a new value, one has to first get the type definition. Type
definitions available on the oroGen components are exported in the Types
namespace:

~~~ ruby
time = Types::Base::Time.new
~~~

Note that this mechanism takes into account custom Ruby-to-Typelib conversions
(see below). For instance, by default, /base/Time gets converted to and from
Ruby Time. Therefore, the class Types::Base::Time is the same as Time.

In most cases, accessing the types directly is not necessary:

 * when modifying a complex type in a property, [one should use the block form](properties.html)
   modify it and write it back
 * when writing to an input port, the InputPort#new_sample method creates a new
   value object suitable for this particular port

One big difference between C++ and Ruby is that, to copy a value on another,
one **CANNOT** do

~~~ ruby
value1 = value2 # THIS DOES NOT WORK
~~~

due to how variables behave in Ruby. Copying is done with

~~~ ruby
Typelib.copy(target, source)
~~~

Mapping between C++ and Ruby
----------------------------
In general, when an orocos.rb method returns a value of a certain C++ type, that
value will behave "as it should", i.e.:

### Structures

They are represented as structures. For instance values of the type

~~~ cpp
namespace base {
    class Time
    {
        int seconds;
        int microseconds
    };
}
~~~

can be accessed naturally with

~~~ ruby
puts time.seconds + time.microseconds
time.seconds *= 2
# and so on, and so forth
~~~

A structure can be initialized from a hash:

~~~ ruby
time_t.new(:seconds => 10, :microseconds => 20)
~~~

### Arrays

They behave like Ruby arrays:

~~~ ruby
array_of_time[4].seconds = 10
array_of_time.find { |v| v.seconds > 10 }
~~~

Arrays can be initialized from Ruby arrays:

~~~ ruby
array_of_time_t.new([time1, time2])
~~~

### std::vector

Values based on std::vector are mapped to an enumerable. You cannot access the
elements randomly, though

~~~ ruby
vector_of_time.each do |value|
  ...
end
~~~

if you want to access the elements by their index, convert the vector to an
array first

~~~ ruby
array = vector_of_time.to_a
~~~

Finally, the clear and insert methods allow you to modify the vector. Moreover,
vectors can be initialized from arrays of compatible types.

### Enums

They are accessed by the symbol name. The returned value is a symbol, and the
enum can be assigned from an integer value, a string or a symbol. For instance

~~~ cpp
namespace base {
    namespace actuators {
        enum DRIVE_MODE {
            DM_UNKNOWN = -1,
            DM_PWM = 0,
            DM_SPEED = 1,
            DM_POSITION = 2
        }

        struct Command {
            DRIVE_MODE mode;
        };
    }
}
~~~

   can be accessed with

~~~ ruby
command.mode = 'DM_PWM'
command.mode => :DM_PWM # beware, this is a Ruby symbol !!!
~~~

### Opaque Types (ADVANCED SUBJECT)

The opaque types are manipulated, on the Ruby side, through their intermediate
type. For instance, if a property of type
[base::Vector3d](http://rock-robotics.org/package_directory/orogen_types/_base_Vector3d.html) is created, it will be
accessed as a structure [of the corresponding
type](http://rock-robotics.org/package_directory/orogen_types/_wrappers_Matrix__double_3_1_.html)

Customization on the Ruby side
------------------------------
So, we now know how to manipulate the C++ types from within Ruby. However, the
types are pretty 'plain'. I.e., they offer no nice ways to be manipulated.

There are two ways to customize the C++ to Ruby mapping:

 * either by adding methods to the values. For instance, one could define the #+
   method on '/base/Time', which would add two times together
 * or by specifying convertions between some Ruby class and the
   oroGen-registered types. For instance, converting between /base/Time and the
   builting Time class in Ruby

To add methods to an oroGen-registered type, one does

~~~ ruby
Typelib.specialize '/base/Time' do
    def +(other_time)
       # add the two times together and return the result
    end
end
~~~

To allow convertion between a Ruby class and an oroGen-registered type, one does

~~~ ruby
# If we get a /base/Time, convert it to Ruby's Time class
Typelib.convert_to_ruby '/base/Time' do |value|
    Time.at(value.seconds, value.microseconds)
end
# Tell Typelib that Time instances can be converted into /base/Time values
Typelib.convert_from_ruby Time, '/base/Time' do |value, typelib_type|
    result = typelib_type.new
    result.seconds      = value.tv_sec
    result.microseconds = value.tv_usec
    result
end
~~~

See [the typelib_plugin.rb](https://gitorious.org/rock-base/types_ruby/blobs/master/lib/base/typelib_plugin.rb)
file from the base/types_ruby package as an example.
{: .note}

You can safely add a convert_to_ruby specification late in the
development process, without breaking the scripts that were accessing the
structures. Indeed, the converted value is wrapped in a way that makes possible
accessing the structure fields (seconds and microseconds) or accessing it as a
Time object.

**Note** when developing with Rock, it is recommended to put the typelib
C++-to-Ruby customization code in a scripts/typelib.rb in the oroGen components.
This file will get installed automatically along with the oroGen code, in a
place where it gets found and loaded automatically by typelib. Thus, the
convertion code is made available to all Ruby scripts that use orocos.rb/orogen
{: .note}

Direct Access to the Type Models
--------------------------------

The 'Types::' export interface provides an easy-to-use access to the types.
However, it one sometimes needs access to the "raw" typelib models.

In orocos.rb, all types loaded for the benefit of accessing oroGen components
are saved in the singleton Typelib::Registry instance saved in Orocos.registry.
Therefore, to get the typelib model for type '/base/XXX', one needs to do

~~~ ruby
Orocos.registry.get("/base/XXX")
~~~
