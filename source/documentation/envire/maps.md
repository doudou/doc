---
title: Maps 
sort_info: 300
---

Maps
-------------

While frames relate cartesian frames to each other, maps are the objects in
which the actual information about the environment is stored. 

All maps in envire are of the base class `Layer`. The layer class provides
information on the dirty status of a map, so if a map has been modified or not,
and can store generic metadata. See the API doc for a class hierarchy of the
Layer.

Layers itself do not contain any spatial information, so they can in principle
store both cartesian as well as non-cartesian (topological) maps. The derived
class `CartesianMap` does provide the ability to associate a layer with a frame.
This is done through either 

~~~ cpp
env->setFrameNode( map, frameNode );
~~~

alternatively you can use the convenience method on the map directly, if it is
already attached.

~~~ cpp
env->attachItem( map );
map->setFrameNode( frameNode );
~~~

Each CartesianMap is associated with a frame, and the information it has is
given in that frame. Further down the inheritance chain, there is the `Map`
class, which is templated for the map dimension. Currently only `Map<2>` and
`Map<3>` are used. 

Metadata
------------

Each Layer can have associated metadata, which may or may not be used by the
processing algorithms (operators). 

~~~ cpp
if( map->hasData( key ) )
{
    DataType &d = map->getData<DataType>( key );

    ... // do stuff on d
}
~~~

a call to `getData<Type>` will create the metadata if it is not yet created.
Metadata on maps is used to specify optional information that can be available
for specific maps, but which might not be available for all forms of that
particular map. This was chosen instead of inheritance to simplify handling of
different permutations of available data.

Some maps may provide additional features for metadata, like e.g. in a
`Pointcloud`. Here vertices are stored as a vector of `Vector3` objects. However,
these vertices may also have associated normals. 

~~~ cpp
if( pc->hasData( Pointcloud::VERTEX_NORMALS ) )
{
    std::vector<Eigen::Vector3d> normals =
	pc->getVertexData<Eigen::Vector3>(
		Pointcloud::VERTEX_NORMALS );

    // both vectors should be of the same length
    assert( pc->vertices.size() == normals.size() );

    // perform a calculation on vertex normal pairs
    for( size_t n=0; n<pc->vertices.size(); n++ )
	doCalc( pc->vertices[n], normals[n] );
}
~~~

Examples of Maps
------------

There is a large number of maps available in envire, the best is to have a look
at the API docs. In principle, one can distinguish between dense and sparse
maps. E.g. a `Pointcloud` is a sparse map, while a `Grid` is a dense 2d map.

