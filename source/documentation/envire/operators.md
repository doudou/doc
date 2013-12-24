---
title: Operators 
sort_info: 400
---

Operators
-------------

Operators provide the logic to transform map information, taking frame relations
into account. Every operator has input and output layers. The basic usage of an
operator would be the following:

~~~ cpp
// create a new Merge operator that combines the given maps and
// fills an output map with the merged information
MergeOperator *mo = new MergeOperator();

// assign input and output. operator and maps will automatically
// be attached if they are not yet.
env->addInput( mo, pc1 );
env->addInput( mo, pc2 );
env->addOutput( mo, pcOut );

// perform the update operation on the full maps
// (partial updates not yet supported)
mo->updateAll();
~~~

