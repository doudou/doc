---
title: Type definitions
sort_info: 50
--- name:content pipeline:tags,markdown,blocks

One of the first thing that a component designer has to think about is defining
the data structures that will be used in the component's interfaces:

* in the communication between components (ports)
* in the configuration of the component (properties)
* in the control of the component (operations)

From your component definitions, oroGen will generate the necessary RTT plugins
to support:

* XML marshalling as .xml or .cpf
* CORBA marshalling to use with the CORBA transport
* Typelib marshalling to use with the data logger
* the classes needed for the Ruby bindings

In principle, if you are using oroGen, all the tools that are offered by the
Rock toolchain should work seamlessly. If they don't, it's because you
found a bug !

The type-handling part of oroGen is available as a standalone tool for people
that want to develop RTT components directly. This tools is called typeGen and
presented at the end of this page.

Defining types
--------------
In oroGen, the types are described in C++. However, not all C++ types can be
used in the data flow. To be usable in the data flow, a type must:

* be default constructible and copyable (i.e. have a constructor that have no
  arguments and can be copied).
* have no private fields
* have no parent class (this might be removed in a future version of oroGen)

Moreover, oroGen has a special support for the std::string and std::vector
standard classes, so you can use them freely.

Example: defining a Time class

~~~ cpp
namespace base {
  struct Time
  {
    uint64_t microseconds;
    static Time fromMilliseconds(uint64_t ms);
    Time operator +(Time const& other);
  };
}
~~~

Note that, for now, all types that are defined in the orogen project must be
defined inline: orogen does not support separating the implementation from the
definition. Types that are defined in separate libraries are fine, though.

Known Limitations
-----------------

 * structures and classes with private members are not handled (a warning is
   issued)
 * structures and classes that have a parent class are not handled (a warning is
   issued)
 * char, short, 64 bit integers and float are forbidden as argument types for an
   operation. Use int instead of char or short, and double instead of
   float. Unfortunately there is no equivalent for 64 bit integers. This is due
   to limitations in the RTT default typekit.
 * structs that contain 64 bit integers won't be marshallable as XML. This is
   because the CPF file format does not have 64bit integer support either.
 * there is no typelib marshalling - and hence no logging - for base types (int,
   float, ...). They work fine if used as fields in a structure though.

What to do if your type cannot be understood by oroGen ?
--------------------------------------------------------
For types that can't be directly managed by oroGen, a special mechanism allows
to give a way for oroGen to manipulate the data. This is unfortunately only
available to the users of oroGen -- not to the users of typeGen -- for now. See the [opaque
types](opaque_types.html) section for more information.

Defining types in an oroGen project
-----------------------------------
In an oroGen project, one adds one or many following statement to load a C/C++
file that defines the project's types:

~~~ ruby
import_types_from "myproject.h"
~~~

Be aware that <tt>myproject.h</tt> must be self-consistent, i.e. that it must
include all the headers that are necessary to define the types that it wants to
define.

Moreover, only the types that are _directly_ defined in myproject.h will be
exported in the typekit. It means that the include order actually matters
(that's a bug, not a feature).

In other words, if <tt>other_header.h</tt> is included in <tt>myproject.h</tt>
**and** you want the types of <tt>other_header.h</tt> to be exported in the
typekit, then you need to do

~~~ ruby
import_types_from "other_header.h"
import_types_from "myproject.h"
~~~

and not

~~~ ruby
import_types_from "myproject.h"
import_types_from "other_header.h"
~~~


Finally, one can directly use types defined in a library, provided that this
library gives a pkg-config file for dependency discovery.

Let's consider a 'drivers/hokuyo' package that would define a hokuyo::Statistics
structure. Assuming that this package (1) installs a hokuyo.pc file, and (2)
installs the relevant header as "hokuyo.hpp", it is possible to do

~~~ ruby
using_library "hokuyo"
import_types_from "hokuyo.hpp"
~~~

The issue of loading types from other oroGen projects is handled [in
here](cross_project.html)

The special case of templates
-----------------------------
Templates are not directly understood by oroGen. Howver, explicit instanciations
of them can be used.

Unfortunately, typedef'ing the type that you need is not enough for gccxml --
the tool that parses C++ for oroGen. You have to use the instanciated template
directly in a structure. To work around this, you can define a structure whose
name contains gccxml_workaround to get the template instanciated, and then
define the typedefs that you will actually use in your typekits and oroGen task
interfaces.

For instance, with

~~~ cpp
template <typename Scalar, int DIM>
struct Vector {
  Scalar values[DIM];
};

struct __orogen_workaround {
  Vector<3> vector3;
  Vector<4> vector4;
};
~~~

one can use Vector&lt;3&gt; in its orogen interface, and in other structures.

Standalone typekits
-------------------

If you don't want to use oroGen. The orogen package offers the typegen tool to
generate the typekits for people that want to write their components themselves.

To generate a typekit using typegen, do the following:

* write your types as described in this page
* save all of them under the same subdirectory, and put only these types there
* run
  
  typegen _typekit_name_ _inputs_
  {: .commandline}

  where _inputs_ is the input directory.

typeGen will generate a typekit/ directory which includes both the typekit code and
the cmake code that is needed to compile it.

All the caveats described in the oroGen section apply:

* import order might matter. If you are in a situation where it does matter, you
  will have to list the header files one by one on the command line. Note that
  it is fine to do

  typegen _typekit_name_ _header_file_ _input_directory_

  to ensure that _header_file_ will be loaded before all the other files in the
  directory.

* it is possible to load headers from libraries that define pkg-config files and
  from other typegen/orogen project. Use the <tt>-i</tt> option instead of using
  using_library and import_types_from.

