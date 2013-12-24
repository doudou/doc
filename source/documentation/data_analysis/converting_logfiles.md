---
title: Updating log files 
sort_info: 600
---

In robotics log files are very valuable. To secure that all log files can be
accessed even if the logged sample types were modified or no longer exist in the
current software stack all log files created by the generic orogen logger are
selfcontained and all samples can be read field by field. However they cannot be replayed to
orocos ports if the sample type does not exactly match the port type.  This
happens for example if a type was modified by adding a new field after samples
of that type were logged because from the computer's point of view the old type and the
modified type are two different types. To replay these samples to a port the samples
have to be updated . 

Updating base-type samples
---------
The conversion between the different type versions is usually specified by the rock maintainer,
and samples whose type is part of the rock base-types can be updated by calling the command line tool
rock-convert.

rock-convert logfile.log 


Updating custom samples
---------
To update custom sample types to a new version the ruby class Orocos::Log::Convert can be 
used to specify the conversion between the old version and the current version. A step 
by step guide how to write a ruby script for updating log files is given below.

~~~ ruby

#load converter class
require 'orocos/log/converter'

#initialize orocos ruby
Orocos.initialize 

#load the current type specification 
Orocos::CORBA.load_typkit 'custom_type'
registry = Orocos.registry

#create a new converter
converter = Converter.new

#register a set of conversions which will be
#applied if the sample is older than time
time = Time.new(2011,6,21, 13,30,0, "+09:00")
converter.register "description",time,registry do 
  #add a conversion for CustomType
  #dest is the new version of CustomType and  
  #src the old version which must be converted
  conversion "CustomType" do |dest,src|
    #update sample field
    dest.field_name = src.field_name * 10
  end

  #add a conversion from CustomType2 
  #to CustomType3 which is basically a renaming
  conversion "CustomType2", "CustomType3" do |dest,src|
    #deep copy the hole sample
    deep_copy(dest,src)
  end
end

#convert the given log file 
converter.convert("logfile.0.log")
~~~

So far it is only possible to register one set of conversions. Later on it will be possible
to use n sets of conversions to specify intermediate changes between types which will be automatically
chained to convert all possible intermediate versions to the current version.
{: .warning}

