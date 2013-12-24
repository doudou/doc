---
title: Using Avahi to find the tasks
sort_info: 700
--- 

Abstract
----------------
In this tutorial you will learn how to use the Avahi name service that is available with Rock.
This will allow you to distribute your components over multiple physical systems without having to rely on a centralized name service.
The goal of this tutorial is thus: 

 * distributing two components, i.e. message_producer and message_consumer will be started independently
 * connecting two components using the Avahi name service

More details on this topic you find in the [general documentation](../runtime/setup.html).

For this tutorial you will reuse the components that you created during the
[basics tutorials](../tutorials/index.html#tutorials-outline).
You can also retrieve them directly by [installing the tutorial package
set](../tutorials/index.html#installing)

***IMPORTANT***:
For this tutorial to work you need to have an +active+ network device,
otherwise Avahi will not publish any information.
{: .warning}

Ruby scripts
----------------
Until now you might not have questioned how the Ruby scripts establish a connection in details to a task that runs in a deployment. 
Orocos.rb used CORBA as one of its transport layers, and it also uses the CORBA name service for finding components. 
For that reason, an orocos.rb script has an initialization section, i.e. the following statement are essential.

~~~ ruby
require 'orocos'
Orocos.initialize
~~~

By default this initialization sets up the CORBA communication layer, and if no
other statements are made, the CORBA name server on the localhost is used.

You rely on this name service as soon as you call Orocos.name_service.get. The call will
query all available name services to find the task of the given name.

~~~ ruby
Orocos.run 'message_producer_deployment' do 
    message_producer = Orocos.name_service.get 'message_producer'
    ...
end
~~~

If the task cannot be found, an exception will be raised, e.g. if you
misspelled the task name and used 'message_producr' instead of the correct
name 

The Avahi name service
-----------------------
Before you can use the Avahi name service you have to make sure the tools/service_discovery package 
is installed, since the support for service_discovery is optional.
Only when this package is installed orogen components will be generated with
support for service discovery via Avahi.
The minimal Rock installation already provides this package for you, so you can continue right away.

After being sure service_discovery has been installed and your component has been
build with service discovery support you can instantiate an Avahi name service in your ruby script
with a specific search domain as parameter. For the search domain you can use a
pattern of 'name'.'suffix', where the suffix must be either '._tcp' or '._udp'.
Here, use '_robot._tcp'.

~~~ ruby
require 'orocos'
Orocos.initialize

# remove the default CORBA name service
# as we do not want to use it for finding
# components
Orocos.name_service.clear
Orocos.name_service << Orocos::Avahi::NameService.new '_robot._tcp'
~~~

For the name resolution via Avahi to work, you have to start your deployment
within a service discovery domain, and since there exists a command line option
on the deployment to set the service discovery domain (sd-domain), you just
forward the command line option to the deployment.  Be reminded, that this
option is available to deployments +after+ the tools/service_discovery package
has been installed and +after+ (re)building components with the available
tools/service_discovery package.

~~~ ruby
Orocos.run 'message_producer_deployment', :cmdline_args => 
	{ 'sd-domain' => '_robot._tcp' }, :wait => 3 do |p|
...
end
~~~ 

Since the publishing of the service in the Avahi domain happens with delay once
you start the deployment, you have to allow for a waiting time, before querying
the name service for the name.  By setting the wait option you can pass a time
in second that the script should wait, until executing the block. Select 3
seconds until the actual block of the Ruby script starts to run. 

After enabling the message producer startup to use Avahi, also activate the
Avahi name service for the message consumer.  The message producer will be
started separately, thus remove the message_producer_deployment from the
start.rb in the message consumer component.

~~~ ruby
require 'orocos'
require 'readline'

Orocos.initialize
Orocos.name_service.clear
Orocos.name_service << Orocos::Avahi::NameService.new '_robot._tcp'

Orocos.run 'message_consumer_deployment', :cmdline_args => 
	{ 'sd-domain' => '_robot._tcp'}, :wait => 3 do  

     message_producer = Orocos.name_service.get 'message_producer'
     message_consumer = Orocos.name_service.get 'message_consumer'

     message_consumer.start

     message_producer.messages.connect_to message_consumer.messages

     Readline::readline("Press ENTER to exit\n") do
     end 
end
~~~

### Run it
First start the message producer, then the message consumer. The message consumer will output the message in 
the same way a before, however, this time both component found each other using the Avahi naming service. 

~~~ text
ruby message_producer/scripts/start.rb &
ruby message_consumer/scripts/start.rb
~~~

***NOTE***: You need to have a proper configuration of Avahi, and there are some known issue with using IPv4. 
Enabling IPv6 for the daemon in /etc/avahi/avahi-daemon.conf will help to make service discovery more robust.

{: .warning}

~~~ text
[server]
...
use-ipv6=yes
...

[publish]
publish-a-on-ipv6=yes
...
~~~


Summary
-----------
In this tutorial you have learned to:

 * enable the Avahi name service for finding running tasks
 * apply options to the Ruby script 
 * connect two components using the Avahi name service
