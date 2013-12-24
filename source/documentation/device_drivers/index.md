---
title: Introduction
menu_title: Device Drivers
sort_info: 10
group: addons
---

This section will discuss some of the aspects of writing device drivers in Rock.

Unfortunately, the guidelines exposed here are seldom followed in current Rock
packages themselves. The reason is that these guidelines grew from experience,
and from some requirements in some domains (namely, underwater).

Anyway, what this section will talk about is:

 * general driver structure, naming, separation between driver library
   and driver oroGen component.
 * usage of the
   [iodrivers_base](http://rock-robotics.org/package_directory/packages/drivers/drivers_iodrivers_base/index.html)
   package
 * integration in oroGen components

Structure
---------
Ideally, a device driver should be split into two parts:

 * a __driver__ part that talks to the device using the device's protocol. This
   driver has two functions. First, to provide access to the device's raw
   functions (i.e. "talk the device language"). Second, translate the "device
   language" into more high-level representations (as for instance translating
   encoder ticks into angles in radians). This translation is not always
   possible, but should be done whenever applicable.
 * an __oroGen component__ that integrates the driver into a task context, allowing
   to be used in the rest of the toolchain. Note that Rock happily integrates
   drivers that have no oroGen components, it is just recommended to provide
   one.

Naming conventions
------------------

From a package point of view, there should be at least two packages: one for the
protocol/driver part and one for the oroGen part.

The naming convention for the library package is
__sensor_type__\___manufacturer_and_or_sensor_name__. For instance, cameras of the
"prosilica" brand share all the same protocols. The corresponding package is
therefore called camera_prosilica. All driver packages should be in drivers/
(i.e. drivers/camera_prosilica).

There is no standardization of the sensor types. __Check existing packages__
first, and ask around (i.e. on the mailing list) if your category does not
exist.

In the library package, the following guidelines should be followed:

 * namespace should be the same than package name
 * if the package contains only one driver is to be defined, the driver class
   should be called Driver. Otherwise, SpecificNameDriver (if applicable,
   SpecificName should match between driver and protocol)

Once a package name is selected for the library, the oroGen package should be
located in drivers/orogen/ and have the same base name than the library package.

Let's now dive into [writing a driver class](writing_driver.html)


