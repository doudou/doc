---
title: Error messages
sort_info: 300
---

failed to contact the name server (Orocos::CORBAError)
------------------------------------------------------
The CORBA layer needs a name service to find out what components are available,
and how to contact them. This message appears when this  name service cannot be
contacted. There can be the following reasons:

 * the Orocos::CORBA.name_service attribute, used to specify the hostname of the
   name service machine, is set to a wrong value.
 * there is a firewall blocking TCP port 2809
 * the name service is not running on the machine you think it is. You can check
   that with

   sudo netstat -tl

   If the service is running, there should be a line starting with 'tcp' and
   ending with 2809/omniNames.

**On Debian and Ubuntu**, the OmniORB nameserver startup script does **not**
report an error if the name service startup failed. If you have checked (as
above) that the name service is not running, you can start it by hand to see why
it is not starting with

sudo omniNames
{: .commandline}

Sometimes, the service's log file gets corrupted. In that case, the above
command will yield an error looking like:

<pre>
Error: parse error in log file '/var/lib/omniorb/omninames-mercury.log' at line 1.
</pre>

The best solution then is to simply delete all omninames log files with

sudo rm -f /var/lib/omniorb/*
{: .commandline}

