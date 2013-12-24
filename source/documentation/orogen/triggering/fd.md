---
title: FD-driven tasks
sort_info: 300
--- name:content

The IO triggering mechanism, if enabled, will make sure that updateHook() is
called whenever new data is made available on a file descriptor. It allows to
very easily implement drivers, that are waiting for new data on the driver
communication line(s).

Declaration
-----------
The IO-driven mechanism is a deployment choice, and therefore it is not required
to declare a task context as IO-driven. Nonetheless, since some actions are
required from the task context's implementation (namely listing the IOs the task
is listening to), declaring them as IO-driven can help deployment and usage of
the said tasks (since people will know that they may be used as IO-driven).

To declare a task context as IO-driven, one adds the following statement to the
task context definition block:

~~~ ruby
fd_driven
~~~

In this case, the io-driven triggering mechanism is declared as optional. If it
is required, then do

~~~ ruby
required_activity :fd_driven
~~~

Note that deploying a task with [a periodic activity](periodic.html) will
disable the fd-driven behaviour. However, the fd-driven activity can be overlaid
on top of the [port-driven triggering](ports.html)

Mandatory setup in the C++ task
-----------------------------

On the C++ side, the triggering mechanism relies on a specific activity type,
i.e. it puts the component in its own thread.

To access more detailed information on the trigger reason, and to set up the
trigger mechanism, one must access the underlying activity. Two parts are
needed, one in startHook() to tell the activity which file descriptors to watch
for, and one in stopHook() to remove all the watches (**that last part is
mandatory**)

First of all, include the header in the task's cpp file:

~~~ cpp
#include <rtt/extras/FileDescriptorActivity.hpp>
~~~

Second, set up the watches in startHook

~~~ cpp
bool MyTask::startHook()
{
    // Here, "fd" is the file descriptor of the underlying device
    // it is usually created in configureHook()
    RTT::extras::FileDescriptorActivity* activity =
        getActivity<RTT::extras::FileDescriptorActivity>();
    if (activity)
        activity->watch(fd);
    return true;
}
~~~

This only works *if the activity is required*. Indeed, with another activity,
the component will crash as getFileDescriptorActivity() returns NULL;

If the use of an io-driven activity is optional, simply test for activity:

~~~ cpp
bool MyTask::startHook()
{
    // Here, "fd" is the file descriptor of the underlying device
    // it is usually created in configureHook()
    RTT::extras::FileDescriptorActivity* activity =
        getActivity<RTT::extras::FileDescriptorActivity>();
    if (activity)
        activity->watch(fd);
    return true;
}
~~~

It is possible to list multiple file descriptors by having multiple calls to
watch(). 

It is possible to set a timeout in milliseconds with

~~~ cpp
    activity->setTimeout(100);
~~~

Finally, you **must** clear all watches in stopHook():

~~~ cpp
void MyTask::stopHook()
{
    RTT::extras::FileDescriptorActivity* activity =
        getActivity<RTT::extras::FileDescriptorActivity>();
    if (activity)
        activity->clearAllWatches();
}
~~~

Runtime use in updateHook()
---------------------------

The FileDescriptorActivity class offers a few ways to get more information
related to the trigger reason (data availability, timeout, error on a file
descriptor). These different conditions can be tested with:

~~~ cpp
RTT::extras::FileDescriptorActivity* fd_activity =
    getActivity<RTT::extras::FileDescriptorActivity>();
if (fd_activity)
{
  if (fd_activity->hasError())
  {
  }
  else if (fd_activity->hasTimeout())
  {
  }
  else
  {
    // If there is more than one FD, discriminate. Otherwise,
    // we don't need to use isUpdated
    if (fd_activity->isUpdated(device_fd))
    {
    }
    else if (fd_activity->isUpdated(another_fd))
    {
    }
  }
}
~~~

