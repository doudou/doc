---
title: Advanced - Opaque types
sort_info: 550
--- name:content pipeline:tags,markdown,blocks

The opaque type support is not yet available to the users of typeGen
{: .warning}

What are they ?
---------------
Opaque types are a way to enable oroGen to handle types that it cannot handle
completely automatically. The general idea is that you provide oroGen with a
"marshalling structure" that (1) [it can understand](type_definitions.html) and
(2) can hold all the data that the "real type" holds. Then, you have to
implement two convertion functions: one that converts from the marshalling type,
and one to the marshalling type.

So, it involves doing one copy. What is the gain ?

Unlike handwritten typekits, another solution to this problem, opaque types
provide you with the advantage that other types that use opaque types (i.e.
structures with fields that are from opaque types, std::vector, arrays) will be
automatically handled by oroGen. I.e. you write the convertion function for the
types that oroGen can't handle and let it do the rest of the work.

Moreover, oroGen will be able to generate typekits for all the transports it can
handle.

Finally, the convertion to and from the marshalling type is only done in
transports. Thanks to RTT's use of plain C++ structures to implement its
dataflow, there is no need for convertions in intra-process dataflow.

How to use them
---------------

You first have to create a wrapper type (a.k.a. "intermediate type") for the
opaque. In the case of Eigen::Vector3d, a suitable wrapper would be

~~~ cpp
namespace wrappers
{
    struct Vector3d
    {
        double x, y, z;
    };
}
~~~

This wrapper then needs to be loaded with #import_types_from. Finally, one can
use #opaque_type to declare the opaque.

~~~ ruby
import_types_from "wrappers/my_opaque_wrapper.h"
opaque_type '/Eigen/Vector3d", "/wrappers/Vector3d"
~~~

where wrappers::Vector3d is defined in the my_opaque_wrapper.h header. Moreover,
if getting the definition of the opaque type requires new include directories
that are not yet added to the typekit through the [using_library
mechanism](cross_project.html#using_library), you will have to detect them in
the Ruby code and add them with the :include option

~~~ ruby
import_types_from "wrappers/my_opaque_wrapper.h"
opaque_type '/Eigen/Vector3d", "/wrappers/Vector3d", :includes => eigen_prefix
~~~

Once you have re-generated the project, a typekit/ directory is created with
Opaques.cpp and Opaques.hpp in it. These files hold the convertion functions
that should be used by oroGen to convert the opaque to the wrapper and the
wrapper to the opaque.

As usual, if you add new opaques to an orogen project that already has some, you
will need to copy the new toIntermediate/fromIntermediate convertion functions
from templates/typekit/Opaques.cpp
{: .warning}

The m-types: automatically generated intermediate types
-------------------------------------------------------
As explained, once you have defined an opaque type, oroGen will take care of
other types that _use_ this opaque. For instance

~~~ cpp
struct Position
{
    base::Time time;
    Eigen::Vector3d position;
};
~~~

can be used in your task interfaces without any modifications. This works for
structures, std::vector and static-size arrays.



