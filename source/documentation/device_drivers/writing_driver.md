---
title: Writing a device driver
sort_info: 10
---

This page will detail guidelines, and means of implementation, for device
drivers. While doing so, it dives into the usage of [the
iodrivers_base::Driver](http://rock-robotics.org/api//drivers/iodrivers_base)
class, which is the generic driver implementation in Rock.

The following examples are examples from the implementation of [the DVL Teledyne driver](http://rock-robotics.org/stable/pkg/drivers/dvl_teledyne/index.html).

Guidelines
----------

 * drivers should access the I/O in a timeout-based manner. In no cases should
   the driver block forever on input or output.
 * error notification should in general be exception-based
 * reported measurements should be timestamped, either through a device-specific
   mean or by using base::Time::now(). As stated
   [here](../data_processing/timestamp_estimator_usage.html), the TimestampEstimator
   class should not be used at the library level.
 * multi-threading is in general not useful (and harmful as it adds a lot of
   complexity). See the type 2 device/driver interaction below.

Opening / Closing a device
--------------------------

A device is opened using its open method and closed using the close method. It
is in general a good policy to deinitialize the device itself (i.e. put it for
instance in a sleep state in close()).

 * close() should be without arguments and can call
   iodrivers_base::Driver::close() to close the file descriptor.
 * open can have an arbitrary number of arguments of any sort. In general, it is
   good policy to use iodrivers_base::Driver::openURI(std::string) to get the
   file descriptor, but that is not a strong requirement. Additionally, it is
   expected that the device is in a good initial state. Ideally, it would be
   left to a known state after open (i.e. where the configuration after the call to
   open should not depend on previous configurations).

Packet Extraction
-----------------
The iodrivers_base::Driver class implements a generic handling of packet-based
I/O. It does packet reassembly and packet extraction.

In order to keep hard realtime constraints within the drivers, the Driver class
does not do any memory allocation for its internal reassembly buffer. It is
therefore expected that the particular device drivers provide a maximum buffer
size. This size is supposed to be greater than the maximum packet size for the
device.

The first thing to do is therefore to initialize the Driver base class with that
value:

~~~ cpp
namespace dvl_rdi {
class Driver : public iodrivers_base::Driver {
public:
  Driver();
};
}
~~~

~~~ cpp
using namespace dvl_rdi;
Driver::Driver()
  : iodrivers_base::Driver(10000) {}
~~~

The second thing is to overload [the extractPacket
method](http://rock-robotics.org/api//drivers/iodrivers_base/classIODriver.html#a6574af5fbb06f9c8325933213d2a6a01).
This method parses a given data buffer and tries to find packets from the device
in it. See the API documentation linked above for a complete description.

Use Cases
---------
There are mainly two "types" of device/drivers interaction:
 
  1. the device is mostly request-based, i.e. the device sends a request and
     has to wait for a particular reply. More generically, the driver user
     (i.e. the code that is calling the driver) *knows* what message to
     expect.

  2. the device returns different kind of packets in a not-so-well-defined
     order (a GPS device with different reported NMEA sentences falls into
     that category for instance).

Type 1
------
The API design guideline in this case is to simply have one call per message.
The call should either return the received data structure or, if memory
allocation is to be avoided and the data structure contains std::vector, pass it
as argument

~~~ cpp
double speed = getSpeedMeasurement();
void setSpeedMeasurement(double);
~~~

Type 2
------
For these, one has to maintain an internal data structure an notify the caller
as to what information has been received. In general, this is done through
a read(base::Time timeout) method.

The notification algorithm might be done in different ways:

 * implicitly by saving timestamped information in the driver itself. The caller
   can then check whether the data has been updated or not.
 * explicitely by making read() return an enum that informs what message has been received.

Type 2 disguised as Type 1
--------------------------
For most usage of devices, one has a "command phase" and a "sensing phase".
Both phases, taken separately, are often of a type 1 interaction (synchronous
request/reply). However, it is theoretically possible to receive sensing data
while sending commands, making the whole system, in principle, of type 2.

To keep things simple, in this case, one can simply ignore sensing messages
while doing commands, and having a simple interface to read command-related
messages (since they don't have to be treated asynchronously).

Summary
-------

To summarize, a minimal driver class should look like:

~~~ cpp
using namespace dvl_rdi;
Driver::Driver()
  : iodrivers_base::Driver(10000) {}
  // The count above is the maximum packet size

void Driver::open(std::string const& uri)
{
    openURI(uri);
    // Do additional device setup
}

void Driver::read()
{
    uint8_t buffer[10000];
    int packet_size = readPacket(buffer, 10000);

    // parsePacket is a method that is specific to this driver.
    // It gets a packet, extracts the information from it and
    // updates the driver internal data structures
    parsePacket(buffer, packet_size);
}

// Reimplement close() only if you have specific things to do
// with your device before closing the I/O
void Driver::close()
{
    iodrivers_base::Driver::close();
}

int Driver::extractPacket(uint8_t const* buffer, size_t size) const
{
    // See the doxygen documentation of
    // iodrivers_base::Driver::extractPacket
    // to know what this method should do
}

// Finally, if you have to send commands to the device, always
// use writePacket (from iodrivers_base::Driver)
~~~
