---
title: Properties
sort_info: 140
---

As for ports, properties are accessed with task#property_name and
task#property_name=. For instance, the "port" property of the hokuyo task is
read with

~~~ ruby
task = Orocos.name_service.get 'hokuyo'
puts task.port
~~~

and written with

~~~ ruby
task = Orocos.name_service.get 'hokuyo'
task.port = "/dev/ttyACM0"
~~~

A VERY important note is that the value returned by reading a property is a
_copy_ of the property's value. In practice, it means that, for structures,

~~~ ruby
task.config.value = 10
~~~

will change the field "value" of the _copy_ of the property to 10. Not the
property itself. (__Note__ using a property in this manner will soon be
forbidden)

The preferred way to update complex properties in Ruby is to use a block form

~~~ ruby
task.config do |p|
  p.value = 10
end
~~~

