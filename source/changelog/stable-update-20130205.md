---
title: "2013-02-05"
sort_info: 994
---

<script type="text/javascript">
$(document).ready(function () {
    $("tr.from_commits").hide()
    $("tr.to_commits").hide()
    $("a.commit_event_toggler").click(function (event) {
            var eventId = $(this).attr("id");

            $("#commits_" + eventId).toggle();
            event.preventDefault();
            });
});
</script>

<h1>Release highlights</h1>
Apart from the new packages, this is mostly a bugfix release

<h1>New packages</h1>
<ul>

    <li>base/numeric</li>

    <li>drivers/camera_ids</li>

    <li>drivers/laser_filter</li>

    <li>drivers/laserscanner_sick</li>

    <li>drivers/orogen/camera_ids</li>

    <li>drivers/orogen/camera_v4l</li>

    <li>drivers/orogen/laser_filter</li>

    <li>drivers/orogen/laserscanner_sick</li>

    <li>drivers/orogen/qualisys</li>

    <li>drivers/orogen/sonar_tritech</li>

    <li>drivers/orogen/vicon</li>

    <li>drivers/qualisys</li>

    <li>drivers/sonar_tritech</li>

    <li>drivers/vicon</li>

    <li>planning/orogen/corridor_navigation</li>

    <li>slam/graph_slam</li>

    <li>slam/odometry</li>

    <li>slam/orogen/odometry</li>

    <li>slam/orogen/tilt_scan</li>

    <li>slam/quater_ukf</li>

</ul>

<h1>Package status</h1>
<p>661 new commits in 48 packages<br/>
Affected packages: 
  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/scripts">base/scripts</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#bundles/rock">bundles/rock</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#drivers/camera_firewire">drivers/camera_firewire</a>

  <a href="#drivers/camera_interface">drivers/camera_interface</a>

  <a href="#drivers/camera_prosilica">drivers/camera_prosilica</a>

  <a href="#drivers/camera_usb">drivers/camera_usb</a>

  <a href="#drivers/canbus">drivers/canbus</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/dynamixel">drivers/dynamixel</a>

  <a href="#drivers/fog_kvh">drivers/fog_kvh</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/orogen/aggregator">drivers/orogen/aggregator</a>

  <a href="#drivers/orogen/camera_base">drivers/orogen/camera_base</a>

  <a href="#drivers/orogen/camera_firewire">drivers/orogen/camera_firewire</a>

  <a href="#drivers/orogen/camera_prosilica">drivers/orogen/camera_prosilica</a>

  <a href="#drivers/orogen/camera_usb">drivers/orogen/camera_usb</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/dvl_teledyne">drivers/orogen/dvl_teledyne</a>

  <a href="#drivers/orogen/dynamixel">drivers/orogen/dynamixel</a>

  <a href="#drivers/orogen/gps">drivers/orogen/gps</a>

  <a href="#drivers/orogen/taskmon">drivers/orogen/taskmon</a>

  <a href="#drivers/orogen/transformer">drivers/orogen/transformer</a>

  <a href="#drivers/orogen/xsens_imu">drivers/orogen/xsens_imu</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#image_processing/jpeg_conversion">image_processing/jpeg_conversion</a>

  <a href="#multiagent/fipa_acl">multiagent/fipa_acl</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#rtt">rtt</a>

  <a href="#slam/envire">slam/envire</a>

  <a href="#slam/orogen/envire">slam/orogen/envire</a>

  <a href="#slam/orogen/graph_slam">slam/orogen/graph_slam</a>

  <a href="#slam/pose_ekf">slam/pose_ekf</a>

  <a href="#tools/log_tools">tools/log_tools</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#tools/service_discovery">tools/service_discovery</a>

  <a href="#tutorials/orogen/tut_deployment">tutorials/orogen/tut_deployment</a>

  <a href="#typelib">typelib</a>

  <a href="#utilrb">utilrb</a>
</p>


<table class="package_status">


       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           6c65bd2 4 months ago Alexander Duda add log_export.rb for saving Frames as png or jpg<br/>
         
           fe5144f 4 months ago Javier Hidalgo Carrio corrected bug (coma)<br/>
         
           08f2abf 4 months ago Javier Hidalgo Carrio added a temperature sensor<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           81af3d7 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           895d692 4 months ago Sylvain Joyeux don't use .set_bla methods in Ruby, use bla=<br/>
         
           922f572 4 months ago Sylvain Joyeux fix wrong translation of the URL manifest entry into HTML<br/>
         
           c48a0d0 5 months ago Felix Rehrmann method for setting the name of transfromer configuration file<br/>
         
           2ee8668 5 months ago Alexander Duda Merge branch 'next'<br/>
         
           6461c26 6 months ago Thomas Roehr Fix for ticket #191: display help, for parameter --help and -h<br/>
         
         </td></tr>
       
       













       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 24 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           2985e8a 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           a6673f0 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           b0f30df 4 months ago Alexander Duda add ROCK_LOG_EXPORT cmake macro<br/>
         
           9db516c 4 months ago Sylvain Joyeux cmake,ruby: separate what needs ruby from what needs ruby extensions<br/>
         
           48574cf 4 months ago Sylvain Joyeux cmake: fix FindRuby code to use RbConfig instead of Config<br/>
         
           e4fec76 4 months ago Marc Hildebrandt merged.<br/>
         
           cba85e3 4 months ago Marc Hildebrandt removed warning due to type conversion<br/>
         
           2e4f98b 4 months ago Javier Hidalgo Carrio base/Temperature without base::Time field<br/>
         
           ee1db97 4 months ago Javier Hidalgo Carrio added a timestamp in the Temperature class<br/>
         
           1e6e042 4 months ago Javier Hidalgo Carrio added base/Temperature<br/>
         
           ab02d11 5 months ago Janosch Machowinski frame: fix compile warning<br/>
         
           fb70af8 5 months ago Sylvain Joyeux install the cmake macros in share/cmake/rock<br/>
         
           155f459 5 months ago Sylvain Joyeux dist: set ROCK_CMAKE_MACROS ourselves since the macros are part of the package<br/>
         
           234f4aa 5 months ago Thomas Roehr Fix daylight saving effects: tell mktime to determine if daylight saving is in effect<br/>
         
           ec1c79a 5 months ago Christian Rauch NULL is not defined. NULL is defined in cstring, which is not included as it is not used otherwise. NULL will be replaced by 0.<br/>
         
           b00f789 5 months ago Matthias Goldhoorn Fixed bug #194, not all members for the SonarScan copy contructor was handelt<br/>
         
           58147b0 5 months ago Janosch Machowinski frame: moved cv conversion functions to FrameHelper package<br/>
         
           e4bf2da 6 months ago Janosch Machowinski Spline: Added default stream operator for ostream<br/>
         
           4681f33 6 months ago Janosch Machowinski Spline: Added const version of getCurveLength()<br/>
         
           8bc3dfd 6 months ago Thomas Roehr Fix string validation in fromString<br/>
         
           6642aed 6 months ago Thomas Roehr Fix style<br/>
         
           1f10584 6 months ago Elmar Berghöfer docu added<br/>
         
           6031c44 6 months ago SeekurJr fix<br/>
         
           e9575d3 6 months ago Elmar Berghöfer fromTimeValues added in Time<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           a4dfc82 6 months ago Janosch Machowinski Spline: Bugfix for get on empty spline.<br/>
         
           29183a6 6 months ago Janosch Machowinski Spline: Added pretty print for splines<br/>
         
           694fbcb 6 months ago Janosch Machowinski Spline: Complefix for new const version of getCurveLength<br/>
         
         </td></tr>
       
       



       <tr class="name" id="bundles/rock">
         <th>bundles/rock</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           30008d9 4 months ago Javier Hidalgo Carrio odometry does not have orientation inport and roby does not like it<br/>
         
           801c3b7 4 months ago Javier Hidalgo Carrio added stim300 roby task<br/>
         
           030797c 4 months ago Sylvain Joyeux fix odometry-related loading mess<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           9808e6b 4 months ago Felix Rehrmann getters for posCommand, Kvff, Kpp<br/>
         
         </td></tr>
       
       















       <tr class="name" id="drivers/camera_firewire">
         <th>drivers/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           ac10a39 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           1693320 4 months ago Sylvain Joyeux update Doxyfile.in using the template from Rock's cmake lib<br/>
         
           dc27e57 4 months ago Sylvain Joyeux add missing include for sleep()<br/>
         
           7c8fac4 8 months ago Jan Frädrich fixed computation of packet size for format 7<br/>
         
           84722d6 8 months ago Jan Frädrich fixed bug in camera feature detection<br/>
         
           908f078 9 months ago Janosch Machowinski added additional error checking<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_interface">
         <th>drivers/camera_interface</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           91faa2c 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           bcebd8f 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           b568a0c 3 months ago Sylvain Joyeux add missing Requires: in the pc file<br/>
         
           723f1e2 5 months ago Alexander Duda add enum attribute for setting auto exposure algorithm<br/>
         
           4bfe3af 6 months ago Matthias Goldhoorn Compiler fix for GCC 4.7.1<br/>
         
         </td></tr>
       
       


       <tr class="name" id="drivers/camera_prosilica">
         <th>drivers/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           90960e8 5 months ago Alexander Duda add support for ExposureAutoAlg<br/>
         
           4997391 6 months ago Matthias Goldhoorn Marked prosilica as stable and fixed gcc 4.7.1 errors<br/>
         
         </td></tr>
       
       


       <tr class="name" id="drivers/camera_usb">
         <th>drivers/camera_usb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           18040de 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           cf9fafb 5 months ago Stefan Haase Adds a fast initialization method and a possibility to store frames to CamUsb.<br/>
         
           cdbed30 5 months ago Stefan Haase Handles the restart-problem of a GStreamer pipeline.<br/>
         
           d54f617 6 months ago Stefan Haase Changes some documentation.<br/>
         
           cc6e098 6 months ago Stefan Haase Adds an optional name parameter to isV4L2AttribAvail().<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/canbus">
         <th>drivers/canbus</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           654009a 6 months ago DAGON PC 1 added a commented-out debug line (C.G.)<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           19ead0a 8 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/dynamixel">
         <th>drivers/dynamixel</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 7 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           922167b 8 months ago =Alexander.Duda fix including header<br/>
         
           0f4400d 8 months ago Stefan Haase Replaces old logging with base-logging.<br/>
         
           6522d53 8 months ago Stefan Haase Rearrange files according to rock standard layout.<br/>
         
           7a0047d 8 months ago crex Merge branch 'master' of git://gitorious.org/rock-drivers/dynamixel<br/>
         
           001eda3 8 months ago crex Working version.<br/>
         
           27e3084 8 months ago crex Tries to get it to work.<br/>
         
           6c63848 8 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/fog_kvh">
         <th>drivers/fog_kvh</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           5cbb9cb 6 months ago Matthias Goldhoorn marked as stable<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 7 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           605a468 4 months ago Javier Hidalgo Carrio added 921600 baudrate in IO Serial<br/>
         
           e115cd5 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           a0d62dc 4 months ago Sylvain Joyeux iodrivers_base::Driver is polymorphic, make its destructor virtual<br/>
         
           5d2771b 6 months ago Matthias Goldhoorn Compiler fix for GCC 4.7.1<br/>
         
           9998e5d 7 months ago Matthias Goldhoorn hassockedOpen for TCP driver should be const<br/>
         
           84fb24e 7 months ago Matthias Goldhoorn Added check if TCP Driver has an open socked<br/>
         
           23c9354 7 months ago Matthias Goldhoorn Fixed invalid handling of return value for signals in TCPDriver, this caused if multiple instances were use to throw an exception, even everything works<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/aggregator">
         <th>drivers/orogen/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           c9d2577 5 months ago Jakob Schwendner orogen: added optional time_field parameter to align_port method<br/>
         
           90e29a1 5 months ago Jakob Schwendner fix orogen code generation for templated types<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_base">
         <th>drivers/orogen/camera_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           6510de8 6 months ago Felix Rehrmann Changed processImage to be void.<br/>
         
           91f047f 6 months ago Felix Rehrmann Put some code from updateHook into separate functions.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_firewire">
         <th>drivers/orogen/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           e25c759 9 months ago iMoby compile as release<br/>
         
           7918a59 9 months ago iMoby fail in configure hook if dc1394 device could not be created<br/>
         
           edf392d 9 months ago iMoby firewire cam need configuration<br/>
         
           547839a 9 months ago Janosch Machowinski check return values from camera driver<br/>
         
           c2dac20 9 months ago iMoby fixed double free exception in destructor<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_prosilica">
         <th>drivers/orogen/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           922def6 6 months ago Matthias Goldhoorn Marked camera as stable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_usb">
         <th>drivers/orogen/camera_usb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           9f2b271 5 months ago Stefan Haase Changes just two lines of comments and the run_microsoftLifeCam.rb.<br/>
         
           0dc5c41 6 months ago Stefan Haase Uses private control names now.<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           9ab2a97 7 months ago Matthias Goldhoorn Added value for additional axis, that was never used in the controldev before<br/>
         
           937dbe6 8 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/dvl_teledyne">
         <th>drivers/orogen/dvl_teledyne</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="25"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_25"><td>
         
           1d52f29 8 months ago Alexander Duda set initial period for TimestampEsimator<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/dynamixel">
         <th>drivers/orogen/dynamixel</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           83b92f1 8 months ago Alexander Duda fix including dynamixel.h<br/>
         
           89a55d8 8 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/gps">
         <th>drivers/orogen/gps</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           b2b49b3 6 months ago Matthias Goldhoorn Task needs to be periodic<br/>
         
           59b7b7d 6 months ago DAGON PC 1 updated gpsd_test.rb<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/taskmon">
         <th>drivers/orogen/taskmon</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           0470899 4 months ago Sylvain Joyeux add missing std:: prefix<br/>
         
           d7d952f 10 months ago Sylvain Joyeux be forward-compatible with libprocps0-dev in Debian<br/>
         
           7975af0 10 months ago Sylvain Joyeux rewrite taskmon using libproc<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/transformer">
         <th>drivers/orogen/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           6fcf06e 4 months ago Sylvain Joyeux make sure we get FindRuby from Rock's cmake macros instead of from the default<br/>
         
           13ee112 4 months ago Janosch Machowinski bugfix: return nil if no transform for port could be found<br/>
         
           63298ba 6 months ago Alexander Duda raise if task is already configured<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/xsens_imu">
         <th>drivers/orogen/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="30"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_30"><td>
         
           9d8b452 4 months ago Sylvain Joyeux added way to set the frame names<br/>
         
           f82511a 7 months ago DAGON PC 1 cg added reset of ts estimator in startHook<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="31"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_31"><td>
         
           2998575 4 months ago Janosch Machowinski fixed support for callbacks on changes of transformations.<br/>
         
           afd0227 4 months ago Sylvain Joyeux install the ruby library part<br/>
         
         </td></tr>
       
       



















       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="32"> 89 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_32"><td>
         
           d1b1fc3 4 months ago Matthias Goldhoorn Meet rock-x-axis-forward conventions for ArfificialHorizon<br/>
         
           7d764dc 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           15a40b1 4 months ago Sylvain Joyeux update Doxyfile.in to conform to the one from the cmake template<br/>
         
           54cb3f2 5 months ago Alexander Duda ImageView: add getHeight, getWidth<br/>
         
           fa9aac3 6 months ago Allan E. Conquest image_view: documentation<br/>
         
           093ec7f 6 months ago Allan E. Conquest image_view: hide gst related properties and functions with preprocessor<br/>
         
           4b32aa9 6 months ago Allan E. Conquest image_view: improve addText: now with margin. also the timestamp overlay does not get set from widget anymore. you have to call the addText slot yourself. this enables you to position the overlay where you want.<br/>
         
           e19223f 6 months ago Allan E. Conquest image_view: test gui: debugging addPolygon<br/>
         
           0c83af0 6 months ago Allan E. Conquest image_view: addPoints now in text script<br/>
         
           a83d8e8 6 months ago Allan E. Conquest image_view and old_image_view: documentation + set old widget deprecated<br/>
         
           eab8a34 6 months ago Allan E. Conquest image_view: update points test script<br/>
         
           76f0673 6 months ago Allan E. Conquest cleanup designer plugins: added icons, appended widgets in alphabetical order<br/>
         
           8c6eaf9 6 months ago Allan E. Conquest gst_image_view_rename: update test script and gui<br/>
         
           9fb0271 6 months ago Allan E. Conquest gst_image_view_rename: renamed files. gst_image_view/GstImageView is now called image_view/ImageView.<br/>
         
           da0753f 6 months ago Allan E. Conquest gst_image_view_rename: The GstImageView widget replaces the old ImageView widget, soon. -- Renamed classes.<br/>
         
           6492c96 6 months ago Allan E. Conquest gst_image_view: cmake: only look for QtGStreamer libs and includes if option is on<br/>
         
           f8cb7f4 6 months ago Allan E. Conquest image_view_retirement: bugfix in old designer plugin: renamed in domXml also<br/>
         
           354e97e 6 months ago Allan E. Conquest gst_image_view: removed currently unnecessary FrameAppSrc class<br/>
         
           2958ba4 6 months ago Allan E. Conquest removed unnecessary script<br/>
         
           ad0f4bb 6 months ago Allan E. Conquest image_view_retirement: renamed files<br/>
         
           da812f1 6 months ago Allan E. Conquest image_view_retirement: renamed classes<br/>
         
           4e9642b 6 months ago Allan E. Conquest gst_image_view: minor changes<br/>
         
           327b00d 6 months ago Allan E. Conquest gst_image_view: slight doc<br/>
         
           aea61f0 6 months ago Allan E. Conquest gst_image_view: improve test gui and script: more test functionality, add gst_image_view widget to testgui, fix addCircle call<br/>
         
           d2f7bb6 6 months ago Allan E. Conquest gst_image_view: use monospace font for text overlays by default<br/>
         
           db01434 6 months ago Allan E. Conquest gst_image_view: emit signal when image scene is clicked. the signal contains the clicked image coordinates.<br/>
         
           e2a0db6 6 months ago Allan E. Conquest gst_image_view: context menu: add 'use smooth transformation'; use default values for checkable actions.<br/>
         
           4e879c1 6 months ago Allan E. Conquest gst_image_view: fixed bug where 'transparent' progress indicator  produced artifacts<br/>
         
           49096be 6 months ago Allan E. Conquest gst_image_view: text overlay now more performant -&gt; fixed flickering bug. not allocating and deleting text labels for each frame anymore.<br/>
         
           3c6d65f 6 months ago Allan E. Conquest gst_image_view: progress_indicator now in the middle of the widget<br/>
         
           3b3d4cd 6 months ago Allan E. Conquest progress_indicator: added different color for pen (outline) to improve visibility on different bgcolors<br/>
         
           365fb78 6 months ago Allan E. Conquest gst_image_view: changed slots for draw items: int instead of double for pen width<br/>
         
           11c9ee9 6 months ago Allan E. Conquest gst_image_view: avoid dynamic scene growth. image scene size is now fixed to image size<br/>
         
           2194842 6 months ago Allan E. Conquest gst_image_view: fix point overlay<br/>
         
           a025ae3 6 months ago Allan E. Conquest Merge branch 'image_view_redesign' of git://gitorious.org/rock-gui/rock_widget_collection into image_view_redesign<br/>
         
           b029f7b 6 months ago Allan E. Conquest Merge branch 'image_view_redesign' of git://gitorious.org/rock-gui/rock_widget_collection into image_view_redesign<br/>
         
           e4712d1 6 months ago Alexander Duda add test script for adding points to GslImagView<br/>
         
           c6ad2d3 6 months ago Allan E. Conquest gst_image_view: use of progress indicator now optional. default timeout reduced to 2500ms<br/>
         
           f31f423 6 months ago Alexander Duda add method addPoints, addPolygon<br/>
         
           99726f9 6 months ago Allan E. Conquest gst_image_view: workaround for using TextLocation enums from qtruby: add wrapper method to vizkit cpp extension<br/>
         
           5db97cf 6 months ago Allan E. Conquest gst_image_view: fix saveImage with overlays<br/>
         
           74d4719 6 months ago Allan E. Conquest gst_image_view: missing include to ContextMenuGraphicsWidget.h<br/>
         
           7594255 6 months ago Allan E. Conquest progress_indicator: missing icon<br/>
         
           07a7511 6 months ago Allan E. Conquest gst_image_view: context menu works again (problem caused by graphics layout. add custom QGraphicsWidget with context menu signal)<br/>
         
           e055795 6 months ago Allan E. Conquest gst_image_view: improve text overlay: - use layout on outer graphicsscene to realize a 3x3 alignment grid - use QLabel instead of own solution with QGraphicsSimpleTextItem and background - *** still a little buggy ...<br/>
         
           8ac8a01 6 months ago Allan E. Conquest gst_image_view: overlay color and width now variable (circle, line)<br/>
         
           134c1c5 6 months ago Allan E. Conquest gst_image_view: removed delete calls in destructor. these elements get deleted automatically by Qt because they all have this widget as (indirect) parent (now)<br/>
         
           a99db33 6 months ago Allan E. Conquest gst_image_view: variable color and position<br/>
         
           f2a9980 6 months ago Allan E. Conquest gst_image_view: cleanup and remove some rotation actions<br/>
         
           b20589a 6 months ago Allan E. Conquest gst_image_view: add property for smooth image transformation<br/>
         
           a16cc46 6 months ago Allan E. Conquest gst_image_view: use png compression again (80)<br/>
         
           5406daf 6 months ago Allan E. Conquest gst_image_view: - now use two graphicsscenes: one outer scene for text overlays etc. being immune to rotation and scaling, and one inner scene (whose view is nested in the outer scene) containing the image and image-related overlays like lines, circles etc. the old "scene" got renamed to imageScene while the new outer scene is called fixedOverlayScene. - white-transparent background for text overlay<br/>
         
           7d5c775 6 months ago Allan E. Conquest progress_indicator: add icon for designer<br/>
         
           06dd941 6 months ago Allan E. Conquest gst_image_view: workaround to fix correct fitToView of first frame<br/>
         
           54b96e1 6 months ago Allan E. Conquest cleanup<br/>
         
           64c64f3 6 months ago Allan E. Conquest - add context menu - add image export to file (and graphicsscene export)<br/>
         
           e2fe9d9 6 months ago Allan E. Conquest remove old approaches for the image view redesign: new_image_view and phonon_image_view<br/>
         
           128a555 6 months ago Allan E. Conquest deleted src/ProgressIndicator (accidentally commited)<br/>
         
           45c57dc 6 months ago Allan E. Conquest gst_image_view: make use of GStreamer (QGst) optional and deactivate it by default. using a preprocessor define instead of a qt property for handling the includes.<br/>
         
           8f8b994 6 months ago Allan E. Conquest gst_image_view: workaround for dislocated start image bug<br/>
         
           86f72f3 6 months ago Allan E. Conquest cmake: gst_image_view: use hard coded qt-gstreamer include for now.<br/>
         
           e9cc04c 6 months ago Allan E. Conquest gst_image_view: fix include<br/>
         
           87badb5 7 months ago Allan E. Conquest gst_image_view: further development incl. progress_indicator integration<br/>
         
           e6a08b4 7 months ago Allan E. Conquest added process_indicator widget<br/>
         
           0885441 7 months ago Allan E. Conquest removed phonon_image_view from build<br/>
         
           51b216e 7 months ago Allan E. Conquest gst_image_view: update test script to changes on master (port proxy)<br/>
         
           a65a970 7 months ago Allan E. Conquest cleanup and documentation<br/>
         
           045c064 7 months ago Allan E. Conquest gst_image_view: add bgcolor<br/>
         
           a3fd73b 7 months ago Allan E. Conquest cleanup<br/>
         
           3d5ac47 7 months ago Allan E. Conquest default property values set by parameter list<br/>
         
           b0bd1f4 7 months ago Allan E. Conquest Merge branch 'master' into image_view_redesign<br/>
         
           ec58e16 8 months ago Allan E. Conquest GstImageView: Merge NewImageView with GstImageView. Goal: Develop generic overlay functionality on QGraphicsScene. The user shall have choice whether to use GStreamer or simple image rendering.<br/>
         
           eab815e 8 months ago Allan E. Conquest graphicsview included<br/>
         
           5351ff5 8 months ago Allan E. Conquest further development of gst image view widget.<br/>
         
           2ceff1c 8 months ago Allan E. Conquest use find_package instead of referring directly to cmake config file. TODO: use pkg-config or similar instead of hard coded path<br/>
         
           c98f0f9 8 months ago Allan E. Conquest remove obsolete Q_EXPORT_PLUGIN2 macro call<br/>
         
           b9c2e18 8 months ago Allan E. Conquest add initial gst_image_view widget. work in progress.<br/>
         
           525bc00 10 months ago Allan E. Conquest Debugging, frame gets copied to image buffer now.<br/>
         
           3209299 10 months ago Allan E. Conquest further development. translation of base frame does not work yet.<br/>
         
           7b1541c 10 months ago Allan E. Conquest started developing of image view prototype using Phonon (via Qt)<br/>
         
           6608f5f 10 months ago Allan E. Conquest Merge branch 'image_view_redesign' of git://gitorious.org/rock-gui/rock_widget_collection into image_view_redesign<br/>
         
           34607be 10 months ago Allan E. Conquest test gui<br/>
         
           1add143 10 months ago Allan E. Conquest - improved overlays, now persistent or volatile - rotate view - test gui<br/>
         
           9e815a2 10 months ago Allan E. Conquest Text overlay prototype<br/>
         
           86eb6ba 10 months ago Allan E. Conquest Starting redesign of ImageView widget, temporary name: NewImageView. Can display base::samples::frame::Frame.<br/>
         
           8074ca6 11 months ago Allan E. Conquest test gui<br/>
         
           7f87b9e 11 months ago Allan E. Conquest - improved overlays, now persistent or volatile - rotate view - test gui<br/>
         
           9d00796 11 months ago Allan E. Conquest Text overlay prototype<br/>
         
           7c9fce8 11 months ago Allan E. Conquest Starting redesign of ImageView widget, temporary name: NewImageView. Can display base::samples::frame::Frame.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="33"> 22 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_33"><td>
         
           70091b4 4 months ago Alexander Duda Merge branch 'master' into next<br/>
         
           ca92ab8 4 months ago Alexander Duda add vizkit integration for new ImageView widget<br/>
         
           be13d7e 4 months ago Alexander Duda uiloader: add exception for cases where the widget cannot be loaded<br/>
         
           0d15007 4 months ago Felix Rehrmann auto_scrolling_x and _y for plot2d<br/>
         
           f030ce4 5 months ago Janosch Machowinski fix Qt init side effects on non English systems<br/>
         
           1b205ca 5 months ago Sylvain Joyeux replay: add the --time-source option to rock-replay to allow aligning on rt or sample time<br/>
         
           58c770f 5 months ago Malgorzata Goldhoorn Extended port_proxy for bool types and added getter function for the vizkitViewer.<br/>
         
           1181a45 5 months ago Matthias Goldhoorn sonar_view can't handle sonar_scan scince sonar_scan ist an multi ray version, removed support for this<br/>
         
           3497ccd 6 months ago Janosch Machowinski WaypointViz: Use spheres not cycles for visualization<br/>
         
           d4e8fd8 6 months ago Janosch Machowinski Added missing includes for rtt test branch<br/>
         
           49f0563 6 months ago Janosch Machowinski register WaypointViz in ruby<br/>
         
           d7e5fd0 6 months ago Janosch Machowinski Viz3dPlugin: Make setPose a slot<br/>
         
           6eab608 6 months ago Janosch Machowinski Viz3dPlugin: added clearVisualization method<br/>
         
           7e38f87 6 months ago Matthias Goldhoorn Compiler fix for older osg versions (e.g. on lower ubuntu versions)<br/>
         
           0c1a515 6 months ago Matthias Goldhoorn Added ABS as support for the spacemouse (older revisions of the mouse are outputting only ABS values not REL values)<br/>
         
           0f0266d 6 months ago Matthias Goldhoorn Save processing power if space- mouse is not moved<br/>
         
           81fa9d6 6 months ago Matthias Goldhoorn Added missing files<br/>
         
           b1f6ce9 6 months ago Matthias Goldhoorn Added support for spacemouse, if spacemouse is availible the normal mouse support is deactivated, otherwise everything is kept as it is<br/>
         
           b6a1e95 6 months ago Alexander Duda Merge branch 'next'<br/>
         
           d1bd098 6 months ago Alexander Duda vizkit plugin: add support for resolving opaque types from intermedia types<br/>
         
           47e0e7c 6 months ago Alexander Duda vizkit plugin: bugfix related to m types<br/>
         
           328b99e 6 months ago Matthias Goldhoorn Plot2D: make the maximum allowed points in one plot configureable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="34"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_34"><td>
         
           20dd78c 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           d3b2f2a 4 months ago Alexander Duda add ruby bindings for FrameHelper<br/>
         
           0d6f16f 4 months ago Alexander Duda fix indentation for grayscale<br/>
         
           3275127 4 months ago Alexander Duda add conversions for Bayer -&gt; BGR , RGB -&gt; BGR<br/>
         
           b5755a7 4 months ago Alexander Duda add support for loading and saving frames<br/>
         
           f904033 5 months ago Stefan Haase Adds a simple Bayer to JPEG conversion and some formatting.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/jpeg_conversion">
         <th>image_processing/jpeg_conversion</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="35"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_35"><td>
         
           a4d4d08 4 months ago Thomas Roehr Use do_from_file for from_file implementation<br/>
         
           cb50819 5 months ago Thomas Roehr Fix loading jpeg via ruby<br/>
         
           2f96412 5 months ago Matthias Goldhoorn This depends on rice<br/>
         
         </td></tr>
       
       











       <tr class="name" id="multiagent/fipa_acl">
         <th>multiagent/fipa_acl</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="36"> 64 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_36"><td>
         
           305d2a4 3 months ago Sylvain Joyeux Merge branch 'stable' into next<br/>
         
           7b78844 4 months ago Thomas Roehr Fix interface of statemachine_reader utility<br/>
         
           f3257ed 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           0ba1d45 4 months ago Sylvain Joyeux update Doxyfile.in to have the output directories match the cmake template<br/>
         
           1a7818b 4 months ago Thomas Roehr Add missing protocol 'inform'<br/>
         
           95232b0 4 months ago Thomas Roehr Add exception to getCurrentState when statemachine is not properly initialized<br/>
         
           a70b7d6 5 months ago Thomas Roehr Update message construction<br/>
         
           711b219 5 months ago Thomas Roehr Fix guard<br/>
         
           6a134b3 5 months ago Thomas Roehr Make testParser.sh execution independant of current dir<br/>
         
           f5215e7 5 months ago Thomas Roehr Merge branch 'conversation_monitor'<br/>
         
           cbe25e8 5 months ago Thomas Roehr Revert "Allow for regex expressions in interaction protocol descriptions"<br/>
         
           69054c2 5 months ago Thomas Roehr Revert "test: improve error message"<br/>
         
           057ea43 5 months ago Thomas Roehr Revert "test: fix missing namespace"<br/>
         
           235a00c 5 months ago Thomas Roehr Change output of convertToTimeImpl to debug only<br/>
         
           a081a2f 5 months ago Thomas Roehr Update licence file<br/>
         
           8ac147f 5 months ago Thomas Roehr Fix base time comparison<br/>
         
           ad0071e 5 months ago Thomas Roehr Update version, but remove doxygen version information in individual files<br/>
         
           874f07e 5 months ago Thomas Roehr Remove enum typing<br/>
         
           f51fc5d 5 months ago Thomas Roehr Allow setting of multiple resource directories for protocols<br/>
         
           6c1075f 5 months ago Thomas Roehr Try regex matching for role with agent id first and continue with role mapping only if required<br/>
         
           00c2c51 5 months ago Thomas Roehr Add general failure state and transition<br/>
         
           f093a17 5 months ago Thomas Roehr Add statemachine tests<br/>
         
           544f4ed 5 months ago Thomas Roehr Add transitioning to statemachine<br/>
         
           557958b 5 months ago Thomas Roehr Change function name from setSelfAgentID to setSelf<br/>
         
           51a4f76 5 months ago Thomas Roehr Update statemachine test<br/>
         
           0556e4c 5 months ago Thomas Roehr Make setProtocolResourceDir public<br/>
         
           129a484 5 months ago Thomas Roehr Improve debug messages<br/>
         
           ef37908 5 months ago Thomas Roehr Use performative field of transition for validation<br/>
         
           69e7be7 5 months ago Thomas Roehr Add update roles<br/>
         
           fec06b6 5 months ago Thomas Roehr Add transitioning to statemachine<br/>
         
           b1db4d9 5 months ago Thomas Roehr Make default transition not understood bidirectional<br/>
         
           6555358 5 months ago Thomas Roehr Add message archive<br/>
         
           83f9bd6 5 months ago Thomas Roehr Fix dutchAuction definition<br/>
         
           0c5b5ef 5 months ago Thomas Roehr Fix benchmark and test<br/>
         
           1260a49 5 months ago Thomas Roehr Fix linking for base<br/>
         
           3540c80 5 months ago Thomas Roehr Adapt tests<br/>
         
           54998a9 5 months ago Thomas Roehr Review output parser<br/>
         
           16a9d48 5 months ago Thomas Roehr Account for new replyBy datatype<br/>
         
           55de193 5 months ago Thomas Roehr Review userdefined parameters<br/>
         
           5feb027 5 months ago Thomas Roehr Review agent id and cleanup<br/>
         
           577d99d 5 months ago Thomas Roehr Cleanup acl message - introduce base::Time for ReplyBy<br/>
         
           be4dadf 5 months ago Thomas Roehr Update statemachine tests<br/>
         
           7a294db 5 months ago Thomas Roehr Update conversation monitor header<br/>
         
           02e1708 5 months ago Thomas Roehr Cleanup statemachine<br/>
         
           3678d9a 5 months ago Thomas Roehr Split statemachine builder into factory and reader<br/>
         
           99ced82 5 months ago Thomas Roehr Add toString to state<br/>
         
           aaf47fa 5 months ago Thomas Roehr Add default states<br/>
         
           a38eb15 5 months ago Thomas Roehr Fix linking and cleanup old default transition signature<br/>
         
           ec15fa3 5 months ago Thomas Roehr Throw on validation of transition when no receivers is set for a message<br/>
         
           3cc034c 5 months ago Thomas Roehr Add equals operator to Transition<br/>
         
           77731a4 5 months ago Thomas Roehr Add toString to Transition<br/>
         
           45137ae 5 months ago Thomas Roehr Add debug statements to Transition<br/>
         
           a365f42 5 months ago Thomas Roehr Add default transitions<br/>
         
           917c97e 5 months ago Thomas Roehr Fix naming in transition<br/>
         
           19ae6b1 5 months ago Thomas Roehr Change consumeMessage to transitionTarget<br/>
         
           0e62501 5 months ago Thomas Roehr Update addTransition in state<br/>
         
           1195aee 5 months ago Thomas Roehr Add copy constructor and operators to Role<br/>
         
           a2c034f 5 months ago Thomas Roehr Add clearing and resetting of expected agents to Role<br/>
         
           d8d2e58 5 months ago Thomas Roehr Add state test<br/>
         
           91bff25 5 months ago Thomas Roehr Starting library review with focus on conversation monitor<br/>
         
           5684dc2 5 months ago Thomas Roehr Change build type to release with debug info<br/>
         
           2ed9256 5 months ago Thomas Roehr test: fix missing namespace<br/>
         
           ecc40cc 5 months ago Thomas Roehr test: improve error message<br/>
         
           71921f6 5 months ago Thomas Roehr Allow for regex expressions in interaction protocol descriptions<br/>
         
         </td></tr>
       
       



       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="37"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_37"><td>
         
           210fda4 4 months ago Sylvain Joyeux in #using_task_library, only assume that +name+ is an orogen file if it ends in .orogen<br/>
         
           b8a7feb 5 months ago Janosch Machowinski fixed compile warning in template for generated deployments<br/>
         
           d801532 5 months ago Felix Rehrmann Throws an error when trying to do two multiple subclasses.<br/>
         
         </td></tr>
       
       





       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="38"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_38"><td>
         
           157e02c 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           3a1abad 4 months ago Sylvain Joyeux update Doxyfile.in from Rock's CMake template<br/>
         
           125cba2 5 months ago Sylvain Joyeux fix errors reported by recent versions of GCC<br/>
         
         </td></tr>
       
       









       <tr class="name" id="rtt">
         <th>rtt</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="40"> 71 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_40"><td>
         
           2e6ccef 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           60af466 4 months ago Matthias Goldhoorn Fixed cmake 2.8.9 bugg during include, Cmake only acceps true if find_package is used<br/>
         
           ff92680 4 months ago Sylvain Joyeux extras: define ReadOnlyPointer&lt;T&gt;::get to return T const*, to have an interface compatible with boost::shared_ptr<br/>
         
           2f63e80 4 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           912dce9 4 months ago Sylvain Joyeux Revert "truncate duplicate protocol error to warning"<br/>
         
           3c74667 4 months ago Sylvain Joyeux Revert "types: add the DataFlowTypeInfo between the TemplateTypeInfo and PrimitiveTypeInfo"<br/>
         
           3e794fb 4 months ago Peter Soetens Merge branch 'toolchain-2.5'<br/>
         
           8667d06 4 months ago Peter Soetens dataflow: implement circular buffer connections.<br/>
         
           7b9671e 4 months ago Peter Soetens ports: applied fixup of signalling ports from Georg Bremer.<br/>
         
           a0e2b28 4 months ago Peter Soetens types: make TypeInfoRepository thread-safe<br/>
         
           1f9aaf2 4 months ago Peter Soetens extras: Use char instead of int for FileDescriptorActivity::CMD_xxx values.<br/>
         
           a0ef29a 4 months ago Peter Soetens typo fixed (OuputPort -&gt; OutputPort)<br/>
         
           9deb6a0 4 months ago Peter Soetens tests: fixup propertyloader unit tests due to API change.<br/>
         
           18f8c58 4 months ago Peter Soetens marsh: enable PropertyLoader to operate on services directly<br/>
         
           c98a571 4 months ago Peter Soetens rtt: delete target property on failure during property composition<br/>
         
           42395d1 4 months ago Peter Soetens Merge branch 'master-typeinfo-redux'<br/>
         
           4ee694c 4 months ago Peter Soetens types: memleak fix + log cleanups.<br/>
         
           4c9ac10 5 months ago Sylvain Joyeux truncate duplicate protocol error to warning<br/>
         
           ff7c031 7 months ago Peter Soetens master: fixup re-enable mech uploading.<br/>
         
           7f90a95 7 months ago Peter Soetens scripts: re-enable mech doc uploading.<br/>
         
           84ec0f0 7 months ago Peter Soetens useorocos: various fixes for ros environments<br/>
         
           a03ed29 7 months ago Peter Soetens useorocos: various fixes for ros environments<br/>
         
           57e8fd6 7 months ago Peter Soetens fixup struct type info<br/>
         
           c60ad3e 7 months ago Peter Soetens ports: move ConnFactory out of PortInterface<br/>
         
           54d7c5f 7 months ago Peter Soetens typeinfo: updated api docs and test bugfix.<br/>
         
           6e5ec14 7 months ago Peter Soetens types: persistent TypeInfo refactoring.<br/>
         
           1fb69a0 7 months ago Peter Soetens types: rename TypeBuilder to TypeConstructor.<br/>
         
           55addf0 7 months ago Peter Soetens Merge branch 'toolchain-2.5'<br/>
         
           ed0840b 9 months ago Steven Bellens config: fix cmake logic for cmake 2.8.8<br/>
         
           1580e8e 9 months ago Peter Soetens fixed: collecting status of async operation with 5 arguments<br/>
         
           64acd01 9 months ago Peter Soetens internal: fix incomplete type error when compiling with clang<br/>
         
           17f94fd 9 months ago Peter Soetens os: cleanup mk's patch for cap-ng.<br/>
         
           dc34359 9 months ago Peter Soetens gnulinux capabilities(7) support<br/>
         
           6be3201 9 months ago Peter Soetens fix bug #941: FindXenomaiPosix.cmake disregards XENOMAI_POSIX_ROOT_DIR env variable<br/>
         
           7674852 9 months ago Peter Soetens mqueue: provide compatibility with boost 1.46 or newer<br/>
         
           6980356 9 months ago Peter Soetens mqueue: fix serious bug where slow serialization was used on arrays.<br/>
         
           6826555 9 months ago Peter Soetens doc: updated some doc images.<br/>
         
           486c320 9 months ago Peter Soetens doc: update copyright statement.<br/>
         
           1c219a7 9 months ago Peter Soetens doc: fixup figure display in pdf version.<br/>
         
           f65c087 9 months ago Peter Soetens rtt_cheat_sheet: fix typo in addOperation for class member functions<br/>
         
           39286d9 9 months ago Peter Soetens xenomai: minor affinity changes + code formatting<br/>
         
           ecb7e3c 10 months ago Eli Reekmans fosi: don't set cpu affinity if 'all' is specified.<br/>
         
           81b3c54 10 months ago Peter Soetens cmake: fix linking order of Xenomai libraries<br/>
         
           189ba33 11 months ago Peter Soetens activity: initialize default thread with lowest priority instead of '0'<br/>
         
           bcb7ccc 11 months ago Steven Bellens StructTypeInfo: commenting out debug output<br/>
         
           596ff8d 11 months ago Steven Bellens types: fixing std::string syntax in EnumTypeInfo<br/>
         
           0e538ec 12 months ago Peter Soetens exception : propagate exceptions thrown while calling an operation. exception : set the owner taskcontext or the engine executing the operation in the exception state corba : add the exception handling through the corba exception CCallError tests : add tests for exceptions handling<br/>
         
           12d0d38 12 months ago Peter Soetens rtt : remove "using namespace std" from headers to avoid name clash while using third party libraries<br/>
         
           dff05ca 12 months ago Peter Soetens scripting: fix parsing of alias values.<br/>
         
           ec68634 12 months ago Peter Soetens taskcontext: add loadService operation to every TC.<br/>
         
           e29e476 1 year ago Peter Soetens Merge branch 'toolchain-2.5'<br/>
         
           fd7b24f 1 year ago Peter Soetens os: add support for PID/TID reporting of threads.<br/>
         
           4226139 1 year ago Peter Soetens marsh: fixup marshalling/demarshalling of some primitives<br/>
         
           248b827 1 year ago Peter Soetens properties: fix the introspection such that no properties are dropped<br/>
         
           a191e1f 1 year, 1 month ago Steven Bellens types: turn of debug info in StructTypeInfo<br/>
         
           ef829df 1 year, 2 months ago Peter Soetens doc: cleanup thread docs after comments on ml.<br/>
         
           e5affca 1 year, 2 months ago Peter Soetens cmake: only set OROCOS_SUFFIX if not defined<br/>
         
           b0f57d4 1 year, 2 months ago Peter Soetens base: fix documentation for TaskState enumerator<br/>
         
           68a9ba7 1 year, 2 months ago Peter Soetens EnumTypeInfo(string)<br/>
         
           753ab44 1 year, 2 months ago Peter Soetens cmake: fixup (again) install link creation for cmake 2.8.0<br/>
         
           78240e2 1 year, 2 months ago Peter Soetens cmake: work around faulty cmake symlink checks<br/>
         
           83a0e00 1 year, 2 months ago Peter Soetens doc: minor clarification on starting the deployer.<br/>
         
           966e0fa 1 year, 2 months ago Peter Soetens doc: clarification about use of import/load etc.<br/>
         
           e05bf32 1 year, 2 months ago Peter Soetens os:xenomai: patch for xenomai 2.6.0<br/>
         
           a5e1e5c 1 year, 2 months ago Peter Soetens Fix circular inclusion that prevent defining rt_mutex_t<br/>
         
           bf3a857 1 year, 3 months ago Peter Soetens scripting: fix keyword clashes with user identifiers.<br/>
         
           54ec22a 1 year, 3 months ago Peter Soetens types: even better checking of type_id functions.<br/>
         
           7805b4f 1 year, 3 months ago Eli Reekmans rtt: fix comparison of std::info_type if info_type pointer is null<br/>
         
           0f0ba95 1 year, 3 months ago Peter Soetens * rtt: do not compare std::type_info address<br/>
         
           5244754 1 year, 4 months ago Peter Soetens operations: check impl pointer before using it<br/>
         
           d6f1ef6 1 year, 4 months ago Peter Soetens service: refuse to add an operation without an implementation.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="slam/envire">
         <th>slam/envire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="42"> 103 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_42"><td>
         
           1ea4e92 4 months ago Jakob Schwendner added missing include<br/>
         
           acfe658 4 months ago Jakob Schwendner added dependency on base/numeric<br/>
         
           f024395 4 months ago Jakob Schwendner Merge remote-tracking branch 'autobuild/master'<br/>
         
           ea57214 4 months ago Jakob Schwendner numeric/Stats renamed<br/>
         
           479b6b6 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           2682792 4 months ago Sascha Arnold added missing include<br/>
         
           819e610 4 months ago Marc fixed bug in loading/saving code<br/>
         
           d2ce2d4 4 months ago Marc added store and load functionality to KeyPoint class<br/>
         
           d5b1622 4 months ago Jakob Schwendner Merge branch 'eslam'<br/>
         
           f6e54e1 5 months ago Jakob Schwendner elevationGrid: added convenience methods also taking position type<br/>
         
           83d03b7 6 months ago Sascha Arnold maps: added optinal offsets to the elevation grid<br/>
         
           7d4f1d6 6 months ago Sascha Arnold viz: added improved and optional color cycling to the elevation grid. and set the height of the unused part of the grid to the minimum height<br/>
         
           bc19f69 6 months ago Sascha Arnold viz: moved color conversion in a seperated class<br/>
         
           efa6f7e 6 months ago Sascha Arnold projection op: interpolate only points between existing measurements and check if a full polygon was found<br/>
         
           6d9ab09 6 months ago Martin Fritsche allow writing ply files with data type float instead of double<br/>
         
           55483ac 6 months ago Sascha Arnold added the possibility to set to color cycle interval<br/>
         
           e363c55 6 months ago Alexander Duda add typedef for BinaryEvents<br/>
         
           0bee90f 6 months ago Alexander Duda remove register widget for ReadOnlyPointer<br/>
         
           028473f 6 months ago Alexander Duda Environment: add method for pulling binary events<br/>
         
           3350367 6 months ago Jakob Schwendner mlsmap: align to grid cells also<br/>
         
           a7a66b7 6 months ago Jakob Schwendner mlsmap: option to have new grids aligned<br/>
         
           d3c15b1 6 months ago Jakob Schwendner mlsmap: added method for selecting/creating a new active grid<br/>
         
           b56ed48 6 months ago Jakob Schwendner added a maxRange option to scanmeshing operator<br/>
         
           b3bc069 6 months ago Jakob Schwendner traversability: added option to perform obstacle growing<br/>
         
           658dc01 6 months ago Jakob Schwendner fixed closeNarrowPassages, which would not work if no band is given<br/>
         
           4868a51 6 months ago Jakob Schwendner mlsgrid: fixed matching function for degraded case<br/>
         
           c808077 6 months ago Jakob Schwendner mlsgrid: added matching function to match two mls grids<br/>
         
           4106276 6 months ago Jakob Schwendner mlsgrid: added a merge method, which merges two grids<br/>
         
           6903699 6 months ago Jakob Schwendner mlsgrid: getIndex is const now<br/>
         
           c11ea29 7 months ago Jakob Schwendner improved error message<br/>
         
           c744f99 7 months ago Jakob Schwendner ElevationGrid: added methods to estimate slope and interpolate elevation<br/>
         
           a3489fa 7 months ago Jakob Schwendner grids: check if gdal geotransform information is available<br/>
         
           25fb7e3 8 months ago Janosch Machowinski bugfix for raster_map_view<br/>
         
           7713405 8 months ago Janosch Machowinski bugfix for closeNarrowPassages.<br/>
         
           b369ca8 8 months ago Jakob Schwendner core: fixed wrong function forward for fromMap call<br/>
         
           55e99fb 8 months ago Jakob Schwendner core: fixed wrong function forward for fromMap call<br/>
         
           d546bd1 8 months ago Jakob Schwendner added two small tools<br/>
         
           8fe9d56 8 months ago Jakob Schwendner Show uncertainty for framenodes with uncertainty<br/>
         
           546e256 8 months ago Jakob Schwendner mapsegment: provide trajectory for best pose<br/>
         
           de43cbe 8 months ago Jakob Schwendner small fix to mlsmap<br/>
         
           87b5108 9 months ago Jakob Schwendner mapsegment: use single gaussian for now instead of gmm<br/>
         
           72274dd 9 months ago Jakob Schwendner hack: MapSegment adapted specifically for eslam filter (still using gmm)<br/>
         
           e2081c4 9 months ago Jakob Schwendner viz: add a visualizer for the MapSegment class<br/>
         
           fe4520e 9 months ago Jakob Schwendner mlsmap: all clone products of mlsmap also keep the same id prefix<br/>
         
           b31a220 9 months ago Jakob Schwendner core: added function to return reference count<br/>
         
           d0527e9 9 months ago Javier Hidalgo Carrio Merge branch 'master' of http://git.gitorious.org/rock-slam/envire<br/>
         
           e5af377 9 months ago Javier Hidalgo Carrio added std::ostream operator &lt;&lt; in TransformWithUncertainty<br/>
         
           bbfa5e8 9 months ago Sascha Arnold fixed removeSelectedItems method<br/>
         
           6f7c4d8 9 months ago Jakob Schwendner fixed some issues that came up in the code review<br/>
         
           fe11d0e 9 months ago Sascha Arnold viz: add a key event for both draggers<br/>
         
           dbd0b4a 9 months ago Sascha Arnold keep scale for translation and rotation matrix and reduce size of rotation dragger<br/>
         
           e612914 9 months ago Sascha Arnold added new operator cut pointcloud<br/>
         
           0cab6b2 9 months ago Jakob Schwendner mapsegment: added getBestMap method<br/>
         
           42b555e 9 months ago Jakob Schwendner mapsegment: fixed include<br/>
         
           4657e53 9 months ago Jakob Schwendner added Ptr typedef to Operator<br/>
         
           9d8b56b 9 months ago Jakob Schwendner implemented MapSegment class (untested).<br/>
         
           7b6d887 9 months ago Jakob Schwendner first version of MapSegment class<br/>
         
           57cab12 9 months ago Jakob Schwendner env_mls: added support for manually providing extents<br/>
         
           4edc195 9 months ago Jakob Schwendner moved GMM and EM implementation from eslam to envire<br/>
         
           338d2d2 9 months ago Janosch Machowinski bugfix: Fix orientation of TraversabilityGrid Viz<br/>
         
           9fa78a8 9 months ago Janosch Machowinski removed debug output and dead code.<br/>
         
           dc7020d 9 months ago Jakob Schwendner viz: emit itemModified in case a lenient add overwrites an item<br/>
         
           c45414f 9 months ago Jakob Schwendner simplifypointcloud: reduced memory footprint by removing normals from cgal structure<br/>
         
           029eefc 9 months ago Sascha Arnold viz: importCsv: avoid copy of the last sample and generate color vector only if needed<br/>
         
           cc9e354 9 months ago Sascha Arnold viz: added new dialog for csv file import<br/>
         
           ee7efd8 9 months ago Jakob Schwendner core: fixed terminology on exception<br/>
         
           b39d06a 9 months ago Jakob Schwendner simplifyPointcloud: fixed to handle colors properly<br/>
         
           45a4b3c 9 months ago Jakob Schwendner env_simplify: fixed so that resulting env doesn't contain intermediate steps<br/>
         
           a6926f2 9 months ago Jakob Schwendner mergepointcloud: fixed error in case of multiple use of operator<br/>
         
           36c6024 9 months ago Jakob Schwendner cgal: more optional compile fixing<br/>
         
           a8e0d6d 9 months ago Janosch Machowinski fix warning that osg::Vec3d Triangle Functor is not supported<br/>
         
           8bfa961 9 months ago Janosch Machowinski bugfix clear data map after all items are deleted<br/>
         
           5d94073 9 months ago Janosch Machowinski added Visualizer for TraversabilityGrid<br/>
         
           fae0abc 9 months ago Janosch Machowinski added function to show grids as images<br/>
         
           6495b96 9 months ago Janosch Machowinski code readability change<br/>
         
           b72cead 9 months ago Janosch Machowinski throw proper error if non existing band is accesed<br/>
         
           f366c41 9 months ago Jakob Schwendner tools: env_slam6d now has option to specify order of pointclouds<br/>
         
           c3f9dfa 9 months ago Jakob Schwendner tools: added option for voxel based sampling to asc2ply<br/>
         
           026edb9 9 months ago Jakob Schwendner tools: fixed env_dem compilation<br/>
         
           07b9e82 9 months ago Jakob Schwendner tools: fixed env_simplify<br/>
         
           7c23ec3 9 months ago Jakob Schwendner updated SimplifyPointcloud to use ENVIRONMENT_ITEM macros<br/>
         
           991953c 9 months ago Jakob Schwendner mergepointcloud: added assertion to prevent input == output<br/>
         
           f7dc455 9 months ago Jakob Schwendner cgal: seems to require libgmp now<br/>
         
           1f22723 9 months ago Jakob Schwendner fixed compile for OSG major version &lt; 3<br/>
         
           d06f186 10 months ago Jakob Schwendner tools: added tool for converting ascii files to ply<br/>
         
           a064e6b 10 months ago Jakob Schwendner maps: updated text import for pointcloud data<br/>
         
           df99110 10 months ago Sylvain Joyeux ... and add missing header<br/>
         
           36c4903 10 months ago Sylvain Joyeux fix boost version problem<br/>
         
           b9d4019 10 months ago Sylvain Joyeux add missing include for std::cout<br/>
         
           d438aec 10 months ago Jakob tools: env_slam6d added sorting by numerical id<br/>
         
           b2fc729 10 months ago Jakob Schwendner tools: added env_slam6d, which performs conversion from and to the slam6d format<br/>
         
           d17f934 10 months ago Sascha Arnold tests: perform a copy of the items in the test case with two different environments<br/>
         
           b203d21 10 months ago Jakob Schwendner viz: fixed FrameNodeManipulator for two way update<br/>
         
           34281e4 10 months ago Sylvain Joyeux viz: add missing include<br/>
         
           f8a557e 10 months ago Sylvain Joyeux viz: protect some OSG3-specific stuff between #if ... #endif<br/>
         
           4967e5a 10 months ago Jakob Schwendner removed debug output<br/>
         
           5410782 10 months ago Jakob Schwendner core: fixed setFrameNode<br/>
         
           b272ced 10 months ago Jakob Schwendner core: fixed getFrameNode<br/>
         
           f8c042a 10 months ago Jakob Schwendner core: removed cout<br/>
         
           4b6fbd0 10 months ago Jakob Schwendner enview: support giving an environment on the command line to load<br/>
         
           18ca976 10 months ago Jakob Schwendner enview: fixed framenodemanipulator<br/>
         
           39532bf 10 months ago Jakob Schwendner viz: initialize selection to null<br/>
         
           0cbf630 10 months ago Jakob Schwendner updated loading of csv<br/>
         
         </td></tr>
       
       







       <tr class="name" id="slam/orogen/envire">
         <th>slam/orogen/envire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="43"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_43"><td>
         
           ce3ba31 8 months ago Janosch Machowinski compile with optimizations<br/>
         
         </td></tr>
       
       



       <tr class="name" id="slam/orogen/graph_slam">
         <th>slam/orogen/graph_slam</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="44"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_44"><td>
         
           b123c0c 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           c9ad573 9 months ago Jakob Schwendner fixed initialisation of rootnode in posegraph<br/>
         
           e91e7be 9 months ago Jakob Schwendner moved PoseGraph.hpp into separate graph_slam library<br/>
         
         </td></tr>
       
       





       <tr class="name" id="slam/pose_ekf">
         <th>slam/pose_ekf</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="45"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_45"><td>
         
           1514195 4 months ago Marc Hildebrandt removed debug output<br/>
         
           f79d662 1 year, 3 months ago DAGON PC 1 comment style change (trivial)<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/log_tools">
         <th>tools/log_tools</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="46"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_46"><td>
         
           81e60ea 4 months ago Alexander Duda exporter: add leading zeros to index<br/>
         
           3cec181 4 months ago Alexander Duda add rock-export<br/>
         
           3b88a13 6 months ago Alexander Duda add option to shift samples in time<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="47"> 15 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_47"><td>
         
           f71ae52 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           4631dd9 4 months ago Sylvain Joyeux remove dependency on rtt_typelib<br/>
         
           cd0bd25 4 months ago Sylvain Joyeux make the dependency on pocolog optional<br/>
         
           dc7b9a2 4 months ago Sylvain Joyeux Revert "rtt-typelib has moved and changed pc filename, fix extension compilation"<br/>
         
           22d1add 4 months ago Sylvain Joyeux add missing dependency on rtt_typelib<br/>
         
           2862cf0 4 months ago Sylvain Joyeux rake: move the component-generation code out of orocos/test into orocos/rake<br/>
         
           f8c237c 4 months ago Sylvain Joyeux explicitly load the typekit for property and operation types if they are not yet loaded<br/>
         
           5ec5e76 4 months ago Sylvain Joyeux rtt-typelib has moved and changed pc filename, fix extension compilation<br/>
         
           9fbdbec 4 months ago Thomas Roehr When multiple avahi services are available don't throw, but warn, since this is situation is valid.<br/>
         
           83ddb06 4 months ago Thomas Roehr Fix avahi resolve function<br/>
         
           1d986e4 4 months ago Thomas Roehr Document default values for Orocos::CORBA::call_timeout and connect_timeout<br/>
         
           5b84809 5 months ago Sylvain Joyeux replay: allow defining the time source policy on the Replay object<br/>
         
           d11b9bc 5 months ago Jakob Schwendner removed debug leftover<br/>
         
           e9800d9 5 months ago Jakob Schwendner add option to pass Array to Process.run, in order to have multiple instances of a single model<br/>
         
           95f9baf 5 months ago Jakob Schwendner added dependency on tools/pocolog<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="48"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_48"><td>
         
           31c09a6 4 months ago Sylvain Joyeux fix error message if no magic is found and/or if the provided file is empty<br/>
         
           7923b67 5 months ago Alexander Duda stream.seek(time): add out of boundary check<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="49"> 109 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_49"><td>
         
           b386c87 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           048e626 4 months ago Sylvain Joyeux dependency: fix #fullfilled_model modifying an explicitly given fullfilled model<br/>
         
           dca4119 4 months ago Sylvain Joyeux test: in Test#setup, make sure we raise the original error when #setup fails<br/>
         
           64bb4e0 4 months ago Sylvain Joyeux doc: fix a link to API<br/>
         
           c613d49 4 months ago Sylvain Joyeux doc: fix href link to rock<br/>
         
           5c4f1da 4 months ago Sylvain Joyeux doc: fix numerous errors<br/>
         
           9ccdb7c 4 months ago Sylvain Joyeux dist: fix hoe definition<br/>
         
           af5ca0e 4 months ago Sylvain Joyeux doc: fix link to instance methods for the dependency relations<br/>
         
           10ab403 6 months ago Matthias Goldhoorn Removed -module from compilerflags, since the gcc 4.7.1 doesn't understand this and it compiles without this flag<br/>
         
           18d3da6 6 months ago Matthias Goldhoorn Compiler fix for GCC 4.7.1<br/>
         
           80bf175 8 months ago Chris Mueller core: the current "script" call in ScriptEngine is currently broken by using a simple execute do ... end block. It seems script#ScriptEngine.prepare can be only executed if the task (composition) is running. Therefore we reverted this changes and uses the old method, adding prepare and execute calls into an on(:start) hook.<br/>
         
           b3800d3 9 months ago Chris Mueller Without this fix defines are executed like planning_methods and this fails due to a missing ruby block e.g. declared by<br/>
         
           998434f 9 months ago Chris Mueller using the id method is deprecated for planning_methods. Use instead: object_id.<br/>
         
           f3c7d8d 9 months ago Thomas Roehr Fix block argument<br/>
         
           28daf7b 9 months ago iMoby core: remove debugging output<br/>
         
           c8f3b79 9 months ago iMoby core: fix relationship btw. pending? and failed calls<br/>
         
           8c35fcc 9 months ago Sylvain Joyeux core,app: some more fixes w.r.t. testing in Roby applications<br/>
         
           6b9167d 9 months ago Sylvain Joyeux core: fix precedence relation setup in #instanciate_event_relations<br/>
         
           b0bf35f 9 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           eb8f1c5 9 months ago iMoby core: fix interaction between scheduling and task start failures<br/>
         
           fe24264 9 months ago Sylvain Joyeux core: fix interaction between default / delayed arguments and #meaningful_arguments<br/>
         
           4d194bd 9 months ago Sylvain Joyeux test: rework the test support so that it can be used in Roby applications<br/>
         
           7602836 9 months ago Sylvain Joyeux core: fix marshalling of tasks that have delayed arguments from block<br/>
         
           fdbcc83 9 months ago Sylvain Joyeux log: better error message for failed-to-marshal errors<br/>
         
           b973441 9 months ago Sylvain Joyeux gui: remove debugging output in chronicle when playing<br/>
         
           be2bed9 9 months ago Sylvain Joyeux log: add missing announce_event_update in event_fired<br/>
         
           afa8f6e 9 months ago Sylvain Joyeux gui: fix the chronicle display w.r.t small API change in PlanRebuilderWidget<br/>
         
           d6abd24 9 months ago Sylvain Joyeux gui: fix test for calling vs. controlable<br/>
         
           28630f5 9 months ago Sylvain Joyeux log: fix display of signals and forwards on relations view<br/>
         
           c5887b1 9 months ago Sylvain Joyeux log: fix plan replay w.r.t. Plan#clear being a lot more strict<br/>
         
           b47b17a 9 months ago Sylvain Joyeux app: look for new plugins in #using and avoid registering duplicates<br/>
         
           0daaaf7 9 months ago Sylvain Joyeux core: add more information in error message<br/>
         
           018c2a9 9 months ago Sylvain Joyeux core: fix typo NotMethodError in scripting implementation<br/>
         
           9e2d7c4 9 months ago Sylvain Joyeux fix two more warnings in tests<br/>
         
           0f60b8a 9 months ago Sylvain Joyeux core: remove dead code<br/>
         
           944a6d9 9 months ago Sylvain Joyeux core: display exceptions from free events before marking the event as unreachable<br/>
         
           afa3882 9 months ago Sylvain Joyeux test,core: fix handling of unreachability in AndGenerator when sources get removed<br/>
         
           c0faa2f 9 months ago Sylvain Joyeux core: fix error handling relation<br/>
         
           3056cb7 9 months ago Sylvain Joyeux core: in ExecutionAgent, the unreachability handler for ready_event should be cancelled on emission<br/>
         
           1c8a7dc 9 months ago Sylvain Joyeux core: use exception handlers to convert emission / command failure to internal_error<br/>
         
           39dbe27 9 months ago Sylvain Joyeux core: fix error propagation for errors raised by exception handlers<br/>
         
           eff1356 9 months ago Sylvain Joyeux core: integrate error handling in synchronous event processing<br/>
         
           4e9d0fd 9 months ago Sylvain Joyeux core: make the error origin eligible for exception handling<br/>
         
           05a5859 9 months ago Sylvain Joyeux core: in #achieve_with, having the child event become unreachable should cause EmissionFailed, not UnreachableEvent<br/>
         
           5fe913a 9 months ago Sylvain Joyeux core: implement an error handling mechanism for free events<br/>
         
           603e835 9 months ago Sylvain Joyeux core: test and fix behaviour for commands that raise after calling #emit<br/>
         
           7c280d6 9 months ago Sylvain Joyeux core: do cleanup #gc_quarantine in Plan#remove_object and #clear<br/>
         
           568af67 9 months ago Sylvain Joyeux core: define #keys on TaskArguments<br/>
         
           df406d8 9 months ago Sylvain Joyeux test: remove some assert_nothing_raised<br/>
         
           c21ecae 9 months ago Sylvain Joyeux core: fix usage of inherited_enumerable<br/>
         
           6c39582 9 months ago Sylvain Joyeux core,test: fix non-determinism in scheduler tests<br/>
         
           2f3ca54 9 months ago Sylvain Joyeux test: Utilrb's check_arity method changed behaviour for blocks without arguments<br/>
         
           72a3ba9 9 months ago Sylvain Joyeux core: documentation fix<br/>
         
           63b9f23 9 months ago Sylvain Joyeux core: fix a number of GC-holding situations<br/>
         
           d8f1d69 9 months ago Sylvain Joyeux core: small style fix<br/>
         
           6773996 9 months ago Sylvain Joyeux core: fix Plan#dup<br/>
         
           e36ca2d 9 months ago Sylvain Joyeux core: warn if a task is placed under quarantine<br/>
         
           296d704 9 months ago Sylvain Joyeux test: remove error output for expected errors<br/>
         
           45007f6 9 months ago Sylvain Joyeux test,core: add missing tests for if_unreachable<br/>
         
           1ce7f57 9 months ago Sylvain Joyeux core: cleanup unreachable_handlers in EventGenerator#finalized!<br/>
         
           4d17a06 9 months ago Sylvain Joyeux core: don't add duplicates in if_unreachable<br/>
         
           51da793 9 months ago Sylvain Joyeux core: make if_unreachable yield also the event that got unreachable<br/>
         
           2bc59b0 9 months ago Sylvain Joyeux core: allow setting a C++-level name for graphs for debugging reasons<br/>
         
           8351769 9 months ago Sylvain Joyeux test: define missing mock<br/>
         
           816481d 9 months ago Sylvain Joyeux core: in Dependency, make sure that failing_tasks and interesting_events are cleaned up on task removal<br/>
         
           4da57fd 9 months ago Sylvain Joyeux core: fix some cleanup of EventGenerator.event_gathering on event/task removal<br/>
         
           5d0421c 9 months ago Sylvain Joyeux core: make sure that task events removed from their graphs also remove their task from #task_graph<br/>
         
           5fd784c 9 months ago Sylvain Joyeux core: make sure that Plan#clear calls #finalized! on the objects<br/>
         
           b906b2b 9 months ago Sylvain Joyeux core: fix two instances of using RealizedBy/Hierarchy instead of Dependency<br/>
         
           d91ed9f 9 months ago Sylvain Joyeux test: fix some expected warnings leaking to STDOUT during the tests<br/>
         
           b7607fd 9 months ago Sylvain Joyeux test: run transaction-using tests under Plan#in_transaction<br/>
         
           f4d5aa4 9 months ago Sylvain Joyeux test: remove debugging output<br/>
         
           fbffdd0 9 months ago Sylvain Joyeux core: clear auto_tasks in Transaction#clear<br/>
         
           ed2ba2e 9 months ago Sylvain Joyeux test: style fix<br/>
         
           0fac29f 9 months ago Sylvain Joyeux test: in #teardown, verify the state of the event relation's task_graph graph<br/>
         
           a60311f 9 months ago Sylvain Joyeux test: in #teardown, verify that no transactions are left attached to the plan<br/>
         
           93f5536 9 months ago Sylvain Joyeux test: in #teardown, proceed with a normal shutdown procedure instead of doing a hard clear<br/>
         
           ae3564e 9 months ago Sylvain Joyeux core: fix TaskIndex#initialize_copy and define #clear<br/>
         
           b6ee71c 9 months ago Sylvain Joyeux core: remove initialization of unused instance variable in TaskIndex#initialize<br/>
         
           14c53dc 9 months ago Sylvain Joyeux planner: verify the arity of the blocks given to FreeMethod<br/>
         
           e1be8d7 9 months ago Sylvain Joyeux core: avoid subclassing Hash for TaskArguments<br/>
         
           98790d4 9 months ago Sylvain Joyeux graph: do not modify the objects in #include? and create Graph#root?, Graph#leaf?<br/>
         
           6ee7114 9 months ago Sylvain Joyeux core: avoid calls to parent_objects / child_objects in remove_relations<br/>
         
           3768fe6 9 months ago Sylvain Joyeux core: cache sorted_relations<br/>
         
           8326f98 9 months ago Sylvain Joyeux core: do not call #terminal_flag in the added/removed handlers that invalidate the terminal flags<br/>
         
           ca0370f 9 months ago Sylvain Joyeux core: generate the finalization place only optionally<br/>
         
           4d8f27b 9 months ago Sylvain Joyeux test: small fix, poll is no longer called on start. It is called only by the engine.<br/>
         
           4435017 9 months ago Sylvain Joyeux test,core: remove test that is fragile across 1.8 vs. 1.9<br/>
         
           0c83d17 9 months ago Sylvain Joyeux test,core: some more missing arguments to blocks (1.9 compatibility issue)<br/>
         
           6904323 9 months ago Sylvain Joyeux core: provide file and line to class_eval<br/>
         
           812b414 9 months ago Sylvain Joyeux test,core: fix 1.9 issues (blocks that should have one argument but do not)<br/>
         
           e63e684 9 months ago Sylvain Joyeux test: revive Roby::Test::TestCase<br/>
         
           78043f5 9 months ago Sylvain Joyeux core: some array-related operations became costly in 1.9.3, fix the code<br/>
         
           db4c03e 9 months ago Sylvain Joyeux doc: fix HTML title in template<br/>
         
           1fcf8ad 10 months ago Sylvain Joyeux doc: fix small problems spotted by Felix<br/>
         
           f750f20 10 months ago Sylvain Joyeux doc: explain the difference between dependency and success in the hierarchy<br/>
         
           66664a3 10 months ago Sylvain Joyeux fix the template to remove rock-related bits<br/>
         
           278deb8 10 months ago Sylvain Joyeux app: fix roby/standalone<br/>
         
           3c60fd3 10 months ago Sylvain Joyeux core: avoid unnecessary connected component computations in Plan#add<br/>
         
           1570c7a 10 months ago Sylvain Joyeux app: fix shell w.r.t. plugins that don't define .setup<br/>
         
           282d38b 10 months ago Sylvain Joyeux doc: add temporal and scheduling constraints<br/>
         
           a358c0c 10 months ago Sylvain Joyeux doc: add documentation for forward and signal<br/>
         
           1674e6b 10 months ago Sylvain Joyeux fault_injection: fix deprecation warning in tests<br/>
         
           16bc7ea 10 months ago Sylvain Joyeux core: fix #simulate when it redefines terminal events<br/>
         
           8c54015 10 months ago Sylvain Joyeux app: fix handling of plugins that define :start but not :run<br/>
         
           1a0be02 10 months ago Sylvain Joyeux fix the fault injection plugin<br/>
         
           c00eed6 10 months ago Sylvain Joyeux core: in task scripting, define #sleep(time) instead of overloading #wait<br/>
         
           46fc7a2 10 months ago Sylvain Joyeux app: forcefully register plugins in Application#load_base_config<br/>
         
           2106890 10 months ago Sylvain Joyeux log,gui: add a way to replay log data step-by-step<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/service_discovery">
         <th>tools/service_discovery</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="51"> 19 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_51"><td>
         
           2a48f0b 4 months ago Thomas Roehr Merge branch 'master' into next<br/>
         
           56bd668 4 months ago Sylvain Joyeux update Doxyfile.in using Rock's CMake template<br/>
         
           949a152 4 months ago Sylvain Joyeux ServiceDiscovery is polymorphic, mark its destructor as virtual<br/>
         
           0516a0b 4 months ago Thomas Roehr ruby: fix downwards compatibility of find_services function<br/>
         
           0769c31 4 months ago Rimres-gcs2 Initialize dbus to use locks on all global data structure.<br/>
         
           33d8671 5 months ago Thomas Roehr fix naming in utils<br/>
         
           0b21dc0 5 months ago Thomas Roehr ruby: fix findServices and tests<br/>
         
           8ef3281 5 months ago Thomas Roehr Allow for client reconnect, after avahi-daemon has been restarted<br/>
         
           ad3c9a7 6 months ago Thomas Roehr Adapt listing in constructor<br/>
         
           588ad9e 6 months ago Thomas Roehr Fix ServiceConfiguration<br/>
         
           03b6b52 6 months ago Thomas Roehr Fix getConfiguration<br/>
         
           b0eb22f 6 months ago Thomas Roehr Add documentation<br/>
         
           ec9d950 6 months ago Thomas Roehr Update examples using ServiceDiscovery class as main interface<br/>
         
           c0b0f72 6 months ago Thomas Roehr Add utils browse and publish<br/>
         
           de1c02f 6 months ago Thomas Roehr Adapt unittests to consider services on multiple interfaces<br/>
         
           2d95cdb 6 months ago Thomas Roehr Adapt to search pattern to rely on boost::regex<br/>
         
           363b73b 7 months ago Thomas Roehr Add minor fixes<br/>
         
           4de71a5 7 months ago Thomas Roehr Update function signatures<br/>
         
           6fed4b4 7 months ago Thomas Roehr Add getVisibleServices<br/>
         
         </td></tr>
       
       















       <tr class="name" id="tutorials/orogen/tut_deployment">
         <th>tutorials/orogen/tut_deployment</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="52"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_52"><td>
         
           64f13ae 3 months ago Sylvain Joyeux create the rock_tutorial deployment which had been removed a while ago from the rock_tutorial package<br/>
         
         </td></tr>
       
       











       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="53"> 8 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_53"><td>
         
           204a30e 8 days ago Sylvain Joyeux ruby: fix memory handling w.r.t. the lazy-sweep GC in ruby 1.9.3<br/>
         
           5fc0bb4 3 months ago Sylvain Joyeux Merge branch 'stable' of git://gitorious.org/orocos-toolchain/rock-typelib into next<br/>
         
           93ccde6 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           a681af3 4 months ago Sylvain Joyeux doc: fix documentation generation to be in doc/ and doc/ruby<br/>
         
           b75a997 4 months ago Sylvain Joyeux Update Doxyfile.in from the version in Rock CMake template<br/>
         
           30c1de5 4 months ago Sylvain Joyeux add missing dependency on nokogiri and libxslt<br/>
         
           71a6d85 5 months ago Sylvain Joyeux remove dead code<br/>
         
           672f96b 5 months ago Sylvain Joyeux make getRelativePathTo return an absolute namespace path when needed<br/>
         
         </td></tr>
       
       





       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="54"> 30 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_54"><td>
         
           c9f48e0 3 months ago Sylvain Joyeux fix reference to Rake::Task<br/>
         
           184cd86 3 months ago Sylvain Joyeux add the doc tasks with warnings when no documentation is available<br/>
         
           47a0fdf 3 months ago Sylvain Joyeux remove support for the deprecated rake/rdoctask as it is now an error on Rake &gt;= 10<br/>
         
           a7057e8 3 months ago Sylvain Joyeux doc: add clubber and rebuild task<br/>
         
           730d69f 3 months ago Sylvain Joyeux dsl: use __send__ instead of send to allow sandboxes to be used as main objects<br/>
         
           4268b43 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           d1ecbfc 4 months ago Sylvain Joyeux move the inherited_enumerable code to a separate Utilrb::Models module<br/>
         
           4971f26 4 months ago Sylvain Joyeux display full documentation generation exception backtrace if rake tracing is enabled<br/>
         
           46241aa 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           827f6e0 4 months ago Sylvain Joyeux fix PkgConfig.clear_cache<br/>
         
           1488265 4 months ago Sylvain Joyeux fix PkgConfig.clear_cache<br/>
         
           11316e4 4 months ago Sylvain Joyeux Merge remote-tracking branch 'rock/master'<br/>
         
           d712015 4 months ago Sylvain Joyeux module: in inherited_enumerable promote_value should be called even on all ancestors<br/>
         
           b881daa 4 months ago Sylvain Joyeux test: add test for poll, wait_until and wait_while<br/>
         
           ef5a0af 4 months ago Sylvain Joyeux tests: some trivial fixes<br/>
         
           98879e4 4 months ago Sylvain Joyeux test: don't use fractional values to initialize Time in to/from_hms tests<br/>
         
           6893a9a 4 months ago Sylvain Joyeux pkgconfig: extract the default search path from pkg-config --debug<br/>
         
           231ea28 4 months ago Sylvain Joyeux in inherited_enumerable, implement a way to promote values at each level of the modelling hierarchy<br/>
         
           4429384 4 months ago Sylvain Joyeux test: add some missing tests for important functionality<br/>
         
           d7b0ccf 5 months ago Sylvain Joyeux Merge remote-tracking branch 'rock/stable' into toolchain-2.5<br/>
         
           13ea234 5 months ago Sylvain Joyeux rdoc: don't specify a full path for included and excluded files for RDoc<br/>
         
           eb339ad 5 months ago Sylvain Joyeux add missing files in Manifest.txt<br/>
         
           f89579c 6 months ago Jakob Schwendner configurationsearch: make sure a proper error is raised when the ROCK_CONFIG_PATH environment variable is not set<br/>
         
           e114009 1 year, 3 months ago Steven Bellens utilrb: do not install hoe gem - no longer needed<br/>
         
           b935eb1 1 year, 3 months ago Steven Bellens utilrb: install rdoc and latest hoe gem version<br/>
         
           4d5919c 1 year, 7 months ago Peter Soetens make: update paths to smoothen transition to new stack layout<br/>
         
           3e42db9 1 year, 7 months ago Peter Soetens Revert "make: install the utilrb gem."<br/>
         
           f52fccc 1 year, 7 months ago Peter Soetens make: install the utilrb gem.<br/>
         
           28b9e5a 1 year, 7 months ago Peter Soetens make: new toolchain stack name.<br/>
         
           1f3fb1a 1 year, 7 months ago Peter Soetens make: use rtt_gems dir to install gems if it exists.<br/>
         
         </td></tr>
       
       


</table>
