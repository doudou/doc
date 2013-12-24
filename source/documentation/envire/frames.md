---
title: Frame Tree 
sort_info: 200
---

Frame Tree
------------

The frame tree stores information about cartesian reference frames that are
available in the environment. Every environment has a root frame, which can be
retrieved from an environment object using the `getRootNode()` method. 

Additional frames can be added to the frame tree using one of the two methods

~~~ cpp
FrameNode *childFrame = new FrameNode(
    Eigen::Transform3d( Eigen::Translation3d( 0, 0, 1.0 ) ) );

env->addChild( env->getRootNode(), childFrame )
~~~

or alternatively

~~~ cpp
env->getRootNode()->addChild( childFrame );
~~~

The second method obviously only works if the parent framenode is already
attached to the environment.

Transformation 
--------------

The transformation given in the constructor of the FrameNode denotes the
transformation from the given frame to the parent frame. For the above example,
a point with (0, 0, 0) in childFrame would be (0, 0, 1.0) in the parentFrame (in
this case the root Frame).

The transformation can be accessed using the `getTransform` and `setTransform`
methods of the FrameNode. 

In order to obtain the transformation between two arbitrary frames (both of
which need to be connected to the same frame tree) the `relativeTransform`
method can be used. 

~~~ cpp
Transform3d C_a2b = env->relativeTransform( frameA, frameB );
~~~

Will return the transform C_a2b, which given a vector v in frame A would provide
v' = C_a2b * v, the same vector in frame B.

Uncertainty
--------------

The frame tree also supports uncertainty, but special methods have to be used
for that. Using the `setTransformWithUncertainty` method of the frame allows you
to provide a gaussian uncertainty of the transformation. The class for that is
`TransformWithUncertainty`, which additionaly to the transformation stores the
covariance of the position and rotation (as a scaled axis rotation) as a 6x6
matrix.

Chaining of transformations with uncertainty is also available, so you can see
how the uncertainty propages through the frames. A simple example would be the
following

~~~ cpp
// create a point with uncertainty.
// we provide sigma values of 0.01 m, which have to be squared, 
// since the class is expecting a covariance
PointWithUncertainty p(
	Eigen::Vector3d( 0.0, 0, 0 ),
	Eigen::Vector3d( 0.01, 0.01, 0.01 )
	    .array().square().matrix().asDiagonal() );

// create a 6x6 covariance matrix
Eigen::Matrix<double,6,1> lt1; 
lt1 <<
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0;

// create a transform with uncertainty from the given 
// diagonal of sigma values
TransformWithUncertainty t1(
	Eigen::Affine3d(
	    Eigen::Translation3d(Eigen::Vector3d(r,0,0))),
	lt1.array().square().matrix().asDiagonal() );

// and a second one 
Eigen::Matrix<double,6,1> lt2; 
lt2 << 
    0.0, 0.0, 0.1, 0.0, 0.0, 0.0;

TransformWithUncertainty t2(
	Eigen::Affine3d(
	    Eigen::Affine3d::Identity()),
	lt2.array().square().matrix().asDiagonal );

// The point transformation is the same as without uncertainty, 
// but the uncertainty information is also propagated
PointWithUncertainty pp = t2 * t1 * p;
~~~

The same works when storing the `TransformationWithUncertainty` in the frame
tree. Instead of `relativeTransform`, the `relativeTransformWithUncertainty`
can be used.


