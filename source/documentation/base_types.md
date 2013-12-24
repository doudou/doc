---
title: Base Types
sort_info: 0
group: core
---

Introduction
----------------

The package `base/types` contains a collection of C++ types that are shared
between modules. The general policy is that if there is more than one library
that generates a certain datatype, that type should go into the `base/types`
library. In general, types in base should be [compatible to
oroGen](orogen/type_definitions.html), so that they can be used as interface
types between tasks. 

Further, there is a distinction between basic shared types and types that
represent sensor samples. In general sensor information should always be
timestamped. The convention is that types in samples always have a `time`
member, which is of type `base::Time`. All types in base are in the `base`
namespace. Samples are in the `base::samples` namespace.

Having shared types is very important to maintain interoperability between
libraries. Whenever new types are generated, it should be considered if not one
of the existing types in base can be used, or related types in other packages
can be generalized and moved into base.

Basic Types
-----------------

Following is a list of basic types and how they should be used. For more
information please refer to the api docs of the `base/types` package.

### Time ###

`base::Time` is one of the most used types. It internally represents the time as
microseconds since UNIX epoch. It can be used to represent both absolute and
relative time. 

~~~ cpp
#include <base/time.h>

// initialize time to 0
base::Time t0 = base::Time();              
// get the current time
base::Time tnow = base::Time::now();
// get a time of 2.5 seconds 
base::Time t1 = base::Time::fromSeconds( 2.5 );
// tpast would be the time 2.5 seconds ago
base::Time tpast = tnow - t1;
~~~

Use `toString()` to get a human readable form. Also, there is a stream operator
for the Time class.

### TimeMark ###

Small convenience class to simplify benchmarking. It will record the time on
generation, and has a simple stream method for the output.

~~~ cpp
#include <base/timemark.h>
#include <iostream>

base::TimeMark mark("Complex Stuff");
// do complex stuff
...
std::cout << mark << std::endl;
~~~

### Angle ###

The `base::Angle` class represents an angle and can be used as a convenience
class instead of a float. An angle object has a canonical interpretation within
-M_PI and M_PI. It can also perform converting between radians and degrees.

~~~ cpp
#include <base/angle.h>

// storing angles and the canonical form
base::Angle a = base::Angle::fromDegree(540.0);
base::Angle b = base::Angle::fromRad(M_PI);
a.isApprox( b ); // is true

// converting from degree to rad 
needsRad( base::Angle::deg2Rad( 180.0 ) );
~~~

### Matrix / Vector ###

The base types use the [Eigen3](http://eigen.tuxfamily.org) library for
handling and representing matrices and vectors. Eigen types have special
constraints regarding alignment, which require special template parameters to be
used for using Eigen types as interface types. To simplify this, `base` declares
a number of typedefs, which are equivalent to the corresponding Eigen types, but
having alignment switched off.

 * `base::Vector2d`
 * `base::Vector3d`
 * `base::Matrix2d`
 * `base::Matrix3d`
 * `base::Matrix4d`
 * `base::Quaterniond`
 * `base::Affine3d`

Also have a look at the
[wiki](http://rock.opendfki.de/wiki/WikiStart/Toolchain/EigenTypes) page on the
subject. Also, for the eigen types, the [opaque](orogen/opaque_types.html)
mechanism is used.

### Pose ###

For the base types, the `base::Pose` type is considered a type, which has a 3d
`orientation` and `position` member. The pose is used to represent the position
and orientation of the robot. There is also `base::Pose2D`, which is the
equivalent for the 2D case. Note, that both `base::Pose` and `base::Affine3d`
represent the same type of data. The Affine3d class is more verbose, but also
more effective to compute with. In general, the base::Pose should be used for
interfacing, while Affine3d is likely to be used in places where a lot of
transformations are involved.

### Motion Command ###

Is a collection of different types, that are used for interfacing generic
control commands. The types are mostly generic to certain domains (e.g.
underwater, UGV a.s.o).

### Odometry ###

The base/odometry.h header contains interface classes, which can be implemented
by odometry models. There is a distinction between 2d and 3d, as well as
Gaussian and sampling models.

### Waypoint ###

Contains a class which represents a waypoint, which consists of a point, a
heading as well associated uncertainties. 

### Samples ###

As mentioned above, samples are types time tagged types, which all contain a
time field of type `base::Time`. Samples are usually used to represent sensor or
state information. The following files are in the samples directory of the base
package. 

 * frame - is the basic class to represent image frames.
 * imu - contains imu sensor readings, which is a combination of accelerometer,
   magnetometer and gyros
 * laser_scan - sample from a laser range finder (line)
 * pointcloud - basic datatype for representing point cloud information
 * rigid_body_state - is used to represent position and velocity information
   between to reference frames including uncertainty.
 * sonar_scan - sample from a sonar range image (underwater)

### Actuators ###

TODO
