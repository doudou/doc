---
title: Periodic Triggering
sort_info: 100
--- name:content

This is the most simple triggering method. When a task is declared periodic, the
task context's <tt>updateHook()</tt> method will be called with a fixed time
period.

Declaration
-----------

To do this, simply add the <tt>periodic(period)</tt> statement to the task
declaration in your deployments:

~~~ ruby
deployment "example" do
  task('Task').
    periodic(0.01)
end
~~~

The period is given in seconds. Deploying with a periodic triggering disables
[port-based triggers](ports.html) as well as [fd-based triggers](fd.html)

C++ task implementation
-----------------------

This triggering mechanism does not require any specific change to the C++ task
implementation. 

Nonetheless, if a periodic activity is used, then
<tt>TaskContext::getPeriod()</tt> will return the period in seconds.

