---
title: oroGen Integration
sort_info: 50
---

Once you [have written a driver based on
iodrivers_base::Driver](writing_driver.html), you can think about integrating it
in an oroGen component.

Rock contains a generic integration of such a component: the iodrivers_base
oroGen package. This page is going to describe the usage of this class first,
and then describe the component's interface design.

Guidelines
----------

 * the oroGen project should have the same name than the corresponding library
   package.
 * if the device is periodic, the component should use [the
   TimestampEstimator](../data_processing/timestamping.html) to correct the
   timestamps
 * use as much [base data types](../base_types.html) as possible
 * common type names have also common port names. In general, it is good to
   check devices of the same type and follow the same naming conventions.
 * ports that output types in the /base/samples namespace must end with
   _samples, as e.g.

       position_samples
       orientation_samples

Usage
-----

To create a new driver component, first create the corresponding package using
the [rock-create-orogen tool](../tutorials/110_basics_create_component.html).
This component should depend on the <tt>drivers/orogen/iodrivers_base</tt>
package.

At the top of the oroGen file, add:

~~~ ruby
using_task_library "iodrivers_base"
~~~

Then, make your task a subclass of the iodrivers_base::Task task context:

~~~ ruby
task_context "Task" do
  subclasses "iodrivers_base::Task"
end
~~~

There is two things left to do:

 * __configureHook__: create the device driver, open the device and call the
   setDriver() method. The device's "name" (i.e. device file, IP for network-based access, ...) is
   provided in the io_port property. Note that it is legal for this property to
   be empty (see the next section for explanations).

~~~ cpp
setDriver(driver)
~~~

 * process the incoming data in a "void processIO()" method that is going to be
   called by the base class from updateHook().

 * __cleanupHook__: the device's close() method is going to be called
   automatically by the base class. The pointer is *not* going to be deleted
   though, so you should take care of it if you want to recreate the object in
   cleanup/configure cycles.

For instance, one could have a setup looking like:

~~~ cpp
bool Task::configureHook()
{
  Driver* driver = new Driver();
  if (!_io_port.get().empty())
    driver->openURI(_io_port.get());
  setDriver(driver);

  // This is MANDATORY and MUST be called after the setDriver but before you do
  // anything with the driver
  TaskBase::configureHook();

  // If some device configuration was needed, it must be done after the
  // setDriver and call to configureHook on TaskBase (i.e., here)
}
void Task::processIO()
{
  mDriver->processSamples();
  _samples.write(mDriver->getOrientationSample());
}
~~~

In addition, you might want to start data acquisition in the startHook and stop
it in the stopHook. Whether the acquisition start/stop should be in
startHook/stopHook or configureHook/cleanupHook is governed by the following
factor:

 * if starting/stopping acquisition is done a lot quicker than the whole device
   configuration, then do it in startHook/stopHook as you will not waste
   ressources doing acquisition while the data is not needed
 * if it is slow (some people would even say: not deterministically fast, but
   YMMV), do it in the configureHook/cleanupHook to ensure the responsiveness of
   the system when start/stop cycles are needed but reconfiguration is not needed.

By default, the standard runtime management of oroGen tasks entails that you
will have a full stop/cleanup/configure/start cycle if reconfiguration is
needed. You should therefore not care about dynamic reconfiguration in first
implementations.

Details about the iodrivers_base::Task interface
------------------------------------------------
This interface provides two means of communication between the device and the
driver.

 * direct I/O access. This is done by setting io_port to a non-empty string.
   Acceptable values for io_port if the driver uses openURI (which it should do)
   are listed in the property's documentation.
 * port-based access. In this mode, the data is flowing through the io_raw_in
   and io_raw_out ports. The transfer of data between the ports and the Driver
   object is made by the iodrivers_base::Task class.

Other properties control the behaviour of the system in both modes (read
timeout) and write statistics about the I/O. Some properties are specific to one
mode, in which case this is documented in the property documentation directly.

