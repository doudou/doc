---
title: "2011-11-30"
sort_info: 998
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


<h1>New packages</h1>
<ul>

    <li>drivers/camera_firewire</li>

    <li>drivers/fog_kvh</li>

    <li>drivers/iCharger</li>

    <li>drivers/orogen/camera_firewire</li>

    <li>drivers/orogen/iodrivers_base</li>

    <li>multiagent/fipa_acl</li>

    <li>planning/corridor_navigation</li>

    <li>slam/hogman</li>

</ul>




<h1>Package updates</h1>
<p>485 new commits in 35 packages<br/>
Affected packages: 
  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#control/orogen/trajectory_follower">control/orogen/trajectory_follower</a>

  <a href="#control/trajectory_follower">control/trajectory_follower</a>

  <a href="#drivers/aggregator">drivers/aggregator</a>

  <a href="#drivers/camera_interface">drivers/camera_interface</a>

  <a href="#drivers/camera_prosilica">drivers/camera_prosilica</a>

  <a href="#drivers/canbus">drivers/canbus</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/orogen/aggregator">drivers/orogen/aggregator</a>

  <a href="#drivers/orogen/camera_base">drivers/orogen/camera_base</a>

  <a href="#drivers/orogen/camera_prosilica">drivers/orogen/camera_prosilica</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/hokuyo">drivers/orogen/hokuyo</a>

  <a href="#drivers/orogen/xsens_imu">drivers/orogen/xsens_imu</a>

  <a href="#drivers/parport">drivers/parport</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#drivers/xsens_imu">drivers/xsens_imu</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#image_processing/orogen/image_preprocessing">image_processing/orogen/image_preprocessing</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/vfh_star">planning/vfh_star</a>

  <a href="#rtt">rtt</a>

  <a href="#tools/logger">tools/logger</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#tools/service_discovery">tools/service_discovery</a>

  <a href="#typelib">typelib</a>

  <a href="#utilrb">utilrb</a>
</p>


<table class="package_status">


       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 11 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           3873cd2 5 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           7ea88ff 9 weeks ago Alexander exclude compressed_frame<br/>
         
           7785620 10 weeks ago Alexander Duda bugfix: migration SonarScan angle calculation<br/>
         
           040ed5e 10 weeks ago Alexander Duda bugifx: migration SonarScan angle calculation<br/>
         
           c7520a9 10 weeks ago Sascha Arnold bearing type has changed from float to base::Angle<br/>
         
           e1508a7 2 months ago auv Bugfix: CMakeModulePath was not properly set<br/>
         
           bf403bf 2 months ago Alexander Duda log_immigration SonarScan: fix angle conversion<br/>
         
           d9fd8e8 2 months ago Alexander Duda change base type SonarScan to SonarBeam + add conversion<br/>
         
           0d48fbb 2 months ago Alexander Duda add lib/immigration.rb<br/>
         
           df89d17 3 months ago Jakob Schwendner added DistanceImage<br/>
         
           e5e0fee 4 months ago Matthias Goldhoorn Added CompressedFrame Type<br/>
         
         </td></tr>
       
       











       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 30 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           b4d89a3 6 weeks ago Alexander Duda LaserScan: add method isRangeValid<br/>
         
           0ecca14 6 weeks ago Matthias Goldhoorn Angle: Added some compare operations for angle (&lt; &gt; and =)<br/>
         
           07e3bfc 6 weeks ago Alexander Duda LaserScan: remove deprecate from getPointFromScanBeam<br/>
         
           337bbe7 6 weeks ago Alexander Duda LaserScan: add support for skipping invalid points<br/>
         
           cc666f4 6 weeks ago Alexander Duda LaserScan: add validation before scan point is converted<br/>
         
           4789b47 6 weeks ago Alexander Duda LaserScan: change to new coordinate system<br/>
         
           d0d58a3 9 weeks ago Sylvain Joyeux cmake: convert -L / -l pairs from pkg-config to full paths, and accept full paths<br/>
         
           f6eebbd 9 weeks ago Matthias Goldhoorn frame: need to be able to set seperate IDs for COMPRESSED_MODE ad MODE_PJPG<br/>
         
           c012350 10 weeks ago Alexander Duda frame: never ever change an existing interface<br/>
         
           4017888 10 weeks ago Alexander Duda Merge branch 'compressed_frame'<br/>
         
           4109a2e 10 weeks ago Alexander Duda frame: add unit tests<br/>
         
           409f7de 10 weeks ago Alexander Duda frame: change return values from int to uint32_t<br/>
         
           2f03bfc 10 weeks ago Alexander Duda frame: bugfix size calculation<br/>
         
           a53cc95 2 months ago Sylvain Joyeux cmake: if present, install vizkit_plugin.rb and vizkit_widget.rb to the appopriate places<br/>
         
           da34a49 2 months ago Alexander base::Angle: improve isInRange<br/>
         
           0d4060f 2 months ago Alexander Duda base/Angle: add unit test for Angle::isInRange(Angle,Angle)<br/>
         
           56b481e 2 months ago Alexander Duda base/Angle: add function isInRange(Angle,Angle)<br/>
         
           9bdf3de 2 months ago Alexander Duda base/Angle: add operator=(const Angle &)<br/>
         
           64bcb70 2 months ago Alexander Duda base/Angle: set bool isApprox to const member function<br/>
         
           f01ab08 2 months ago Alexander Duda sonar_beam: change bearing type to base::Angle<br/>
         
           2d0f581 2 months ago Alexander Duda SonarScan: rename type to SonarBeam + cleanup<br/>
         
           b0dd9ff 2 months ago Alexander Duda cmake: add function ROCK_LOG_MIGRATION<br/>
         
           807861e 3 months ago Alexander Duda Frame: clean up / capable of storing compressed frame<br/>
         
           4a806a0 3 months ago Sylvain Joyeux add base/circular_buffer.h which loads boost circular_buffer with a workaround<br/>
         
           2f8aedd 3 months ago Matthias Goldhoorn added compresed meta type to frame, because the camera-user don't separates between the types, so the enums was ambigious for camera_unicap<br/>
         
           1983210 3 months ago Matthias Goldhoorn Fixed some indentations, and separated between compressed and uncompressed frame types<br/>
         
           71a1804 3 months ago Sylvain Joyeux define Angle::normalizeRad<br/>
         
           4d51139 3 months ago Sascha Arnold fixed use of wrong parameter name<br/>
         
           4dfbc2e 3 months ago Jakob Schwendner added DistanceImage class<br/>
         
           f3edd67 4 months ago Matthias Goldhoorn Added Compressed Frame support and added PJPG Picrue mode<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           3e28c87 5 weeks ago Sylvain Joyeux Merge branch 'stable' of git://gitorious.org/rock-base/types_ruby<br/>
         
           eca7d63 6 weeks ago Janosch Machowinski added operator / for Vector3 by double<br/>
         
           4a3963e 3 months ago auv eigen: added pitch and roll getter functions (until now only yaw was availible)<br/>
         
         </td></tr>
       
       













       <tr class="name" id="control/orogen/trajectory_follower">
         <th>control/orogen/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           1dd581a 3 months ago Asguard Demo2 Account remove horrible debug output<br/>
         
           a55c191 4 months ago Janosch Machowinski made the point turn speed configurable<br/>
         
         </td></tr>
       
       





       <tr class="name" id="control/trajectory_follower">
         <th>control/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           172eeab 4 months ago Janosch Machowinski made point turn speed configurable<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/aggregator">
         <th>drivers/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 26 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           1751659 2 months ago Sascha Arnold use base/circular_buffer instead of boost/circular_buffer<br/>
         
           f1c72b5 2 months ago Patrick Paranhos stream status copied, when aggregator are copied.<br/>
         
           28b4ee6 2 months ago Patrick Paranhos changes to teh status information of the stream aligner<br/>
         
           dcffcb2 2 months ago Patrick Paranhos changes to add new status information for the StreamAligner<br/>
         
           99aedcd 2 months ago Patrick Paranhos documentation and new status outputs<br/>
         
           975abd1 2 months ago Patrick Paranhos added method to get the aggregator timeout<br/>
         
           a801cd9 2 months ago Patrick Paranhos fix reporting of dropped samples because of full buffer<br/>
         
           eba7f85 2 months ago Patrick Paranhos fix initial value for status.buffer_size in dynamic case<br/>
         
           3ee65c2 3 months ago Asguard Demo2 Account when finding a non-monotone string, display the stream name in the log message<br/>
         
           a558107 3 months ago Sylvain Joyeux use base/circular_buffer.h that fixes an ABI issues with boost/circular_buffer.hpp<br/>
         
           77a4b39 3 months ago Sylvain Joyeux timestamp: gracefully handle wraparounds in sample indexes<br/>
         
           ff216c0 3 months ago Sylvain Joyeux timestamp: use int64_t for sample index management<br/>
         
           91da6f8 3 months ago Asguard Demo2 Account aligner: resize the internal buffer only if it is full (!)<br/>
         
           b54201a 3 months ago Sylvain Joyeux add the window size to the estimator status, to check for overflows<br/>
         
           87d00f4 3 months ago Sylvain Joyeux timestamp: add a default constructor<br/>
         
           0d2e096 3 months ago Sylvain Joyeux timestamp: fix GCC warning<br/>
         
           056ae90 3 months ago Sylvain Joyeux timestamper: provide versions of reset() that match the constructor signatures<br/>
         
           5fb06fb 3 months ago Sylvain Joyeux timestamp: replace the std::list by a circular buffer to keep hard-realtime constraints<br/>
         
           39cd84e 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into HEAD<br/>
         
           0170f44 3 months ago Sylvain Joyeux timestamp: relax the burst test a bit in shortenSampleList<br/>
         
           5b89010 3 months ago Sylvain Joyeux test: replace handmade exception check by BOOST_REQUIRE_EXCEPTION<br/>
         
           febc91c 3 months ago Sylvain Joyeux replace Doxyfile by the cmake template version<br/>
         
           70dd4e4 3 months ago Sylvain Joyeux timestamp: provide a status data structure<br/>
         
           3605a97 3 months ago Sylvain Joyeux timestamp: keep track of the maximum jitter estimated so far<br/>
         
           6be409d 3 months ago Sylvain Joyeux timestamp: provide a reset() method<br/>
         
           c7ebc1a 3 months ago Sylvain Joyeux replace the stream aligner's deque by a circular buffer to avoid memory allocations<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_interface">
         <th>drivers/camera_interface</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 9 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           11c679d 9 weeks ago Matthias Goldhoorn Removed compressed Frame, and make it instead compatible to Frame (base-Type changes)<br/>
         
           4a9783d 3 months ago seegrip Prepared move to one frame type<br/>
         
           74d5117 3 months ago Matthias Goldhoorn Extended interface for compressed image types<br/>
         
           0feb266 3 months ago Sascha Arnold added HDRValue to int attributes<br/>
         
           00b99d7 3 months ago Sascha Arnold image_color_depth is in bytes<br/>
         
           4f5cc13 3 months ago Alexander Duda Revert "fixed bits / byte exchange"<br/>
         
           3a8df05 3 months ago Sascha Arnold fixed bits / byte exchange<br/>
         
           06f978e 3 months ago Sascha Arnold added virtual method getFileDescriptor<br/>
         
           7de0911 4 months ago Matthias Goldhoorn added signature for CompressedFrame handling<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_prosilica">
         <th>drivers/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="8"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_8"><td>
         
           177a011 3 months ago cuslam fixed bug which completely disregarded the selected mtu, and by default set it to the lowest possible value<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/canbus">
         <th>drivers/canbus</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           d44fc70 3 months ago Martin Schröer When printing an error frame, also print the originating device.<br/>
         
           98385db 3 months ago Sylvain Joyeux move to the refactored iodrivers_base package<br/>
         
           38dbd6f 3 months ago Sylvain Joyeux fix naming convention for reset_board<br/>
         
           4b76c06 3 months ago Sylvain Joyeux fix compilation<br/>
         
           ea9e8db 5 months ago Janosch Machowinski added tool for sending can messages over the command line<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="10"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_10"><td>
         
           8b0c4cc 4 weeks ago Sylvain Joyeux fix invalid XML in manifest.xml<br/>
         
           6e09e8c 7 weeks ago Sylvain Joyeux add some more information to the short description<br/>
         
           babb79c 7 weeks ago Martin Schröer Added some button enums for Logitech G27.<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 18 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           8233724 4 weeks ago Sylvain Joyeux handling of interrupted select calls in readPacket() and writePacket().<br/>
         
           519f623 3 months ago Sylvain Joyeux keep backward compatibility<br/>
         
           f3d55ac 3 months ago Sylvain Joyeux document openURI<br/>
         
           9dc7060 3 months ago Sylvain Joyeux implement openURI with the serial, tcp, udp and udpserver schemes<br/>
         
           fbfef63 3 months ago Sylvain Joyeux define the deprecated openInet function (it was only declared)<br/>
         
           0e730f2 3 months ago Sylvain Joyeux in readPacket, completely ignore the first_byte_timeout if it is greater than packet_timeout<br/>
         
           05938f7 3 months ago Sylvain Joyeux add missing return value in openURI<br/>
         
           c9397c3 3 months ago Sylvain Joyeux initialize internal_output_buffer*<br/>
         
           00965f3 3 months ago Sylvain Joyeux add openURI<br/>
         
           4cff5dc 3 months ago Sylvain Joyeux small doc fix<br/>
         
           70f4d10 3 months ago Sylvain Joyeux rename openInet into openTCP<br/>
         
           0ada579 3 months ago Sylvain Joyeux implement default read and write timeouts<br/>
         
           27564fc 3 months ago Sylvain Joyeux add missing dependency on boost/thread<br/>
         
           3457ec8 3 months ago Sylvain Joyeux implement the ability to push/pull data in/out a driver through the API<br/>
         
           27ca844 3 months ago Sylvain Joyeux timestamp the status structure<br/>
         
           b2e4c08 3 months ago Sylvain Joyeux move the statistics in a separate Status type<br/>
         
           e64487c 3 months ago Sylvain Joyeux move the Timeout class out of Driver<br/>
         
           e73b16a 3 months ago Sylvain Joyeux move the package to the rock package layout and naming scheme, keep backward compatibility<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/aggregator">
         <th>drivers/orogen/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="12"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_12"><td>
         
           d2d295f 5 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           8fe93ea 5 weeks ago Janosch Machowinski orogen_plugin: add needs_configuration to every task using the aggregator<br/>
         
           133155d 6 weeks ago Alexander Duda bugfix: orogen plugin was not aware of different task names<br/>
         
           3e4e4a8 6 weeks ago Alexander Duda bugfix: orogen plugin was not aware of different task names<br/>
         
           ef35c57 3 months ago Sylvain Joyeux export the timestamp estimator status as well<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_base">
         <th>drivers/orogen/camera_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 9 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           c2a979b 5 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           820e0f4 3 months ago Sascha Arnold added channel data depth as property<br/>
         
           3e22ca3 3 months ago Alexander Dettmann Merge branch 'master' of http://git.gitorious.org/rock-drivers/orogen-camera_base<br/>
         
           c567074 3 months ago Alexander Dettmann added sync out 1/2 mode<br/>
         
           ced26e7 3 months ago Sascha Arnold automatically get the file descriptor from the camera library if the task is fd driven<br/>
         
           5979eab 3 months ago Sascha Arnold added two more properties<br/>
         
           1d95c12 4 months ago Sascha Arnold added grab_mode as property<br/>
         
           2fecfca 4 months ago Sascha Arnold added a callback operation onRetrieveNewFrame<br/>
         
           4d2eb56 4 months ago Jakob Schwendner use updated calibration types from frame_helper<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_prosilica">
         <th>drivers/orogen/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           d95bfb7 3 months ago Sascha Arnold update Doxyfile's exclude list<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           73f1a47 5 weeks ago Martin Schroeer Fixed git bug output within source file.<br/>
         
           d900f0b 5 weeks ago mschroeer Merge branch 'master' of http://git.gitorious.org/rock-drivers/orogen-controldev<br/>
         
           ae84fba 5 weeks ago mschroeer From eeePC. To be checked.<br/>
         
           ab71263 7 weeks ago Sylvain Joyeux add some more information to the short description<br/>
         
           03c44df 3 months ago Sylvain Joyeux remove the test_controldev deployment<br/>
         
           5f6f913 3 months ago Martin Schröer Changed due to change of controldev driver.<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/orogen/hokuyo">
         <th>drivers/orogen/hokuyo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           e6fac75 9 weeks ago iMoby define the constructor that takes an ExecutionEngine<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/xsens_imu">
         <th>drivers/orogen/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           be62fe7 6 weeks ago auv Repaired test script, and reactivatet do_not_install (it's an testing deployment)<br/>
         
           b10229c 3 months ago Sylvain Joyeux remove the unused FindEigen2.cmake<br/>
         
           a6fe756 3 months ago Sascha Arnold SAMPLE_FREQUENCY is named DEFAULT_SAMPLE_FREQUENCY now<br/>
         
           49407b7 3 months ago DAGON PC 1 deployment name changed<br/>
         
           2b38b0a 4 months ago Asguard Demo2 Account Revert "foreign commit by MH: added deployment"<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/parport">
         <th>drivers/parport</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           67060e6 4 weeks ago Sylvain Joyeux manifest.xml: fix invalid XML<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           92f3186 5 weeks ago Janosch Machowinski added dependency to orogen aggregator<br/>
         
           347768e 5 weeks ago Janosch Machowinski orogen_plugin: add needs_configuration to task<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/xsens_imu">
         <th>drivers/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 4 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           1fe59c0 3 months ago Janosch Machowinski set correct name in pc.in file<br/>
         
           14ea4b4 3 months ago Christian Rauch - Test-Application is using default sampling frequency again, setting new frequency is uncommented - definition of Euler Angles Convention (Roll,Pitch,Yaw)<br/>
         
           86cde54 3 months ago Christian Rauch - new methods setFrequency() and getFrequency(): 	read and write new sampling frequency instead of using only 100Hz - new method getEulerAngles(): 	retrieve Euler Angles instead of Quaternion 	(set ReadingMode to ORI_EULER_DATA therefor)<br/>
         
           72c2e39 3 months ago Christian Rauch Added timeout to test-application.<br/>
         
         </td></tr>
       
       

















       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 9 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           5b28917 7 weeks ago Alexander Duda fix line display<br/>
         
           4aee705 7 weeks ago Alexander Duda extend draw(painter) to draw(painter,source,target)<br/>
         
           60ce329 9 weeks ago Matthias Goldhoorn Fixed wrong sizes, and scaling problems on the artificial horizon<br/>
         
           dbba2bc 9 weeks ago Matthias Goldhoorn Extended multi view widget, now it's possible to set the buttons on independed sides<br/>
         
           37f5cbf 9 weeks ago Matthias Goldhoorn Added Dynamic positions for widget buttons<br/>
         
           df6844b 9 weeks ago Matthias Goldhoorn Fixed compressed frame handling<br/>
         
           9b41399 2 months ago Alexander Duda remove dependency to base<br/>
         
           8e10a0e 3 months ago Matthias Goldhoorn Better position handling for comments in Slider, but needs still to be improved<br/>
         
           b14aeb5 3 months ago Matthias Goldhoorn Added new RockSlider, this Slider allowes to set some "marker" in the sliderbar. It's used in the rock-replay widget<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 29 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           0c055d7 5 weeks ago Alexander Duda vizkit.rb bugfix related to sample drops<br/>
         
           9e009f2 5 weeks ago Alexander Duda vizkit.rb auto_connect<br/>
         
           cedb701 5 weeks ago Alexander Duda add dependency to qtruby<br/>
         
           fa826e0 5 weeks ago Alexander Duda remove markers<br/>
         
           ac18f8f 5 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           1d19223 9 weeks ago Matthias Goldhoorn Fixed compressed frame handling, addRawImage needs now the size<br/>
         
           9f2fe35 10 weeks ago Alexander Duda vizkit.rb: Fix visualization SonarBeam<br/>
         
           5329e78 10 weeks ago Alexander Duda vizkit.rb bugfix time overlay for SonarBeam<br/>
         
           a98baef 10 weeks ago Alexander Duda vizkit.rb: update for displaying SonarBeams<br/>
         
           99eb669 2 months ago Sylvain Joyeux ruby: make the registration and usage of vizkit3d plugins more straightforward<br/>
         
           fcd1595 2 months ago Alexander Duda vizkit.rb: bugfix connect(Widget)<br/>
         
           5f7769a 2 months ago Sylvain Joyeux ruby: in discover_callback_fct, convert to a method only if the object does not have a call method itself<br/>
         
           8d1f858 2 months ago Sylvain Joyeux ruby: define registration methods for 3D plugins<br/>
         
           07ffd5a 2 months ago Sylvain Joyeux fix rock-replay --help<br/>
         
           b52ea2b 3 months ago Alexander Duda ruby: add method refresh + Shortcut<br/>
         
           76c0c24 3 months ago Patrick Input from ruby scrit to rigid body state<br/>
         
           d6c0933 3 months ago Alexander Duda ruby: add filter options to rock-replay<br/>
         
           8bcf11c 3 months ago Alexander Duda ruby: bugfix log_control<br/>
         
           12e6799 3 months ago Sylvain Joyeux ruby: better autoloading of typekits in vizkit3d widget handling<br/>
         
           f8be059 3 months ago Matthias Goldhoorn log_control: moved some functions to replay and make the interface nicer<br/>
         
           e1d26d9 3 months ago Matthias Goldhoorn fix thar markers are shown even non are availible<br/>
         
           02b3230 3 months ago Patrick added option to plot sphere without orientation<br/>
         
           9b108b0 3 months ago Alexander Duda vizkit.rb add support for Vizkit.display task_context<br/>
         
           e1d6d4b 3 months ago Matthias Goldhoorn Modified rock-replay, comment streams will now be shown as default, if availible<br/>
         
           4a05e91 3 months ago Matthias Goldhoorn Added marker display, moved some helper function to orocos.rb Generally now Functional.<br/>
         
           29ef0a7 3 months ago Sylvain Joyeux ruby: improve pretty-printing of the vizkit3d plugins<br/>
         
           5db8af2 3 months ago Matthias Goldhoorn Exchanged QSlider with RockSlider in replay gui<br/>
         
           3588086 3 months ago Matthias Goldhoorn Added Option for Jumping direct between some "marker" streams<br/>
         
           1595486 4 months ago Matthias Goldhoorn added CompressedFrame Support to image_view<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 33 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           27c06e2 5 weeks ago Alexander Duda clean up PJPG<br/>
         
           d751661 5 weeks ago Matthias Goldhoorn More generic v4l find script<br/>
         
           722146f 6 weeks ago Jakob Schwendner added missing include for string<br/>
         
           c32dd97 6 weeks ago Jakob Schwendner small fix<br/>
         
           f4b8e80 6 weeks ago Jakob Schwendner added method to load calibration from matlab file in c<br/>
         
           eaed912 6 weeks ago Jakob Schwendner fixed using undistort method<br/>
         
           b47ec19 6 weeks ago Jakob Schwendner implemented conversion from bayer to grayscale<br/>
         
           b1abec8 6 weeks ago Jakob Schwendner store calibration in calibrationcv internally and provide accessor<br/>
         
           18faff5 9 weeks ago Matthias Goldhoorn more work on compressed frames compability<br/>
         
           9c17432 9 weeks ago Matthias Goldhoorn re-added compressed frame conversions<br/>
         
           a7529de 9 weeks ago Matthias Goldhoorn Removed compressed frame  type<br/>
         
           6eb5da7 9 weeks ago Matthias Goldhoorn Fixed and removed compressed frame<br/>
         
           c4ae4de 3 months ago Alexander Duda Bugfix: remove conversion MODE_PJP --&gt; QImage<br/>
         
           c4e3f76 3 months ago Matthias Goldhoorn spearated between compressed an uncompressed frame types, fixed some indentations<br/>
         
           84ac244 3 months ago auv added additional include paths for libv4l<br/>
         
           fd7ea11 3 months ago Matthias Goldhoorn Added Handlign of 16bit Grayscale images to FrameQImageConverter<br/>
         
           aed3d8c 4 months ago Matthias Goldhoorn Find v4l library, needed on some machines<br/>
         
           cccc27e 4 months ago Matthias Goldhoorn Added missing include for exceptions, bug was triggert by last Commit<br/>
         
           c7df282 4 months ago Matthias Goldhoorn Merge branch 'master' of http://git.gitorious.org/rock-image-processing/frame_helper<br/>
         
           f687f3f 4 months ago Matthias Goldhoorn Added PJPG and CompressedFrame Support<br/>
         
           1ce8a84 4 months ago Jakob Schwendner calibration: make sure that the calibration is set before calling initcv<br/>
         
           4a0e028 4 months ago Jakob Schwendner calibration: added convenience method for undistortAndRectify<br/>
         
           3ba17ea 4 months ago Jakob Schwendner calibration: made CalibrationCv initialisation more robust<br/>
         
           ddb38c6 4 months ago Sylvain Joyeux fix CMake code to do doxygen following the rock standard layout<br/>
         
           8945563 4 months ago Sylvain Joyeux move Doxyfile.in to the root directory to match the rock standard layout<br/>
         
           b9cfc5a 4 months ago Jakob Schwendner fixed GCC 4.6 issue (again)<br/>
         
           2318d0f 4 months ago Jakob Schwendner renamed StereoCameraCalibration to StereoCalibration for consistency<br/>
         
           1b2c823 4 months ago Jakob Schwendner split calibration and calibrationcv<br/>
         
           41f9df0 4 months ago Jakob Schwendner added orogen guards to calibration class<br/>
         
           c81b25f 4 months ago Jakob Schwendner updated camera calibration<br/>
         
           261e146 6 months ago Janosch Machowinski added conversion from BGR image to QIMAGE<br/>
         
           d9eb0d7 6 months ago Marc Hildebrandt merged conflict<br/>
         
           c06ffc9 6 months ago Marc Hildebrandt changed hybrid inclusion of opencv to straight pgk-config-inclusion in the CMakeLists and the header<br/>
         
         </td></tr>
       
       





       <tr class="name" id="image_processing/orogen/image_preprocessing">
         <th>image_processing/orogen/image_preprocessing</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 4 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           19e4ff5 4 months ago Jakob Schwendner use updated camera calibration types from frame_helper<br/>
         
           8d29289 5 months ago Marc Hildebrandt implemented stereo preprocessing<br/>
         
           71a5e89 6 months ago Matthias Goldhoorn Merge branch 'master' of git://gitorious.org/rock-image-processing/image_preprocessing<br/>
         
           d43469a 6 months ago Matthias Goldhoorn needed changes for subclassing<br/>
         
         </td></tr>
       
       



       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="25"> 25 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_25"><td>
         
           b5c73bd 5 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           7d6cc92 5 weeks ago Janosch Machowinski fix bogus error message in case of non existing port name is given to port_driven()<br/>
         
           e95e0e0 6 weeks ago Sylvain Joyeux build: in OpaqueConvertions.cpp, include only typekits that are actually required by the component<br/>
         
           85f81cc 6 weeks ago Sylvain Joyeux typekit: fix contains_int64?<br/>
         
           c36cec9 7 weeks ago Sylvain Joyeux do turn --rtt-scripting ON by default for now<br/>
         
           a30cdeb 7 weeks ago Sylvain Joyeux add the --rtt-scripting option as an attempt to reduce compilation times on Rock<br/>
         
           fa82b45 9 weeks ago Sylvain Joyeux add LDFLAGS_OTHER to the postprocessed _LIBRARIES in orogen_pkg_check_modules<br/>
         
           ed91874 9 weeks ago Sylvain Joyeux use orogen_pkg_check_modules for all the pkg-config imports<br/>
         
           7455cd4 2 months ago Sylvain Joyeux typegen: fix handling of the --output option<br/>
         
           d368eb0 3 months ago Sylvain Joyeux in Spec::TaskContext#pretty_print, pretty-print the extensions too<br/>
         
           c365aa1 3 months ago Sylvain Joyeux allow to re-register the same extension under the same name<br/>
         
           ff7eb79 3 months ago Sylvain Joyeux define #has_property?<br/>
         
           a6db32c 3 months ago Sylvain Joyeux allow to specify a path element-by-element in load_orogen_plugin<br/>
         
           121c34c 3 months ago Sylvain Joyeux define a logger on Orocos directly<br/>
         
           0dbef22 3 months ago Sylvain Joyeux set the corba dispatcher in a non-realtime scheduler for tasks that are not realtime themselves<br/>
         
           eff792f 3 months ago Sylvain Joyeux move the plugin support in Orocos from Orocos::Generation<br/>
         
           dfd5871 3 months ago Sylvain Joyeux implement the extension mechanism<br/>
         
           0e956d6 3 months ago Sylvain Joyeux gen: fix some non-deterministic ordering in the code generation<br/>
         
           bb08e8c 3 months ago Sylvain Joyeux fix interaction between default/required activities and subclassing<br/>
         
           5eced1a 3 months ago Sylvain Joyeux fix stupid mistake in simple_deployment<br/>
         
           10e8cd9 3 months ago Sylvain Joyeux load the logger task library in simple_deployment<br/>
         
           4b3c74c 3 months ago Sylvain Joyeux be robust to absence of the logger component in simple_deployment<br/>
         
           56d8979 3 months ago Sylvain Joyeux do not generate default deployments for abstract tasks<br/>
         
           93d9c93 3 months ago Sylvain Joyeux doc fix<br/>
         
           b92f208 3 months ago Sylvain Joyeux generate a default deployment for tasks that have a default activity<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           fd90ff7 2 months ago Sylvain Joyeux vizkit: fix declaration on the Ruby side<br/>
         
           0c27a68 2 months ago Sylvain Joyeux declare the vizkit plugin in vizkit/ruby<br/>
         
           dcb2485 2 months ago Sylvain Joyeux remove old cmake code from viz/<br/>
         
         </td></tr>
       
       







       <tr class="name" id="planning/vfh_star">
         <th>planning/vfh_star</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           f4b314f 5 weeks ago Janosch Machowinski Revert "changes because of the new VizkitPluginFactory"<br/>
         
           ab87a13 7 weeks ago Sascha Arnold changes because of the new VizkitPluginFactory<br/>
         
           e3fb949 9 weeks ago Sylvain Joyeux also register the local map viewer on Vizkit/Ruby<br/>
         
           650ad20 2 months ago Sylvain Joyeux vizkit: also declare the FollowingDebug visualization to the Ruby API<br/>
         
           60a33bc 2 months ago Sylvain Joyeux declare the vizkit3d plugin in vizkit/ruby<br/>
         
           fbe1872 3 months ago Asguard Demo2 Account added ability to clear the map<br/>
         
         </td></tr>
       
       



       <tr class="name" id="rtt">
         <th>rtt</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 4 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           9e2704f 5 weeks ago Patrick Merz Paranhos corba: fix losing samples if the corba dispatcher incoming queue overflows<br/>
         
           d245b88 6 weeks ago Sylvain Joyeux corba: don't issue a warning if the task was already unbound<br/>
         
           dd3724b 9 weeks ago Sylvain Joyeux allow to completely disable export of ports read, write and last in scripting<br/>
         
           08306be 9 weeks ago Sylvain Joyeux extract TemplateTypeInfoBase: TemplateTypeInfo without type introspection<br/>
         
         </td></tr>
       
       









       <tr class="name" id="tools/logger">
         <th>tools/logger</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           639ee76 3 months ago Sylvain Joyeux disable default deployment generation as it creates an infinite loop<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="30"> 196 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_30"><td>
         
           c6a59f1 7 days ago Alexander Duda replay.rb: bugfix loading streams<br/>
         
           fa71482 5 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           6170157 5 weeks ago Alexander Duda replay: add filter options<br/>
         
           e82372b 5 weeks ago Sylvain Joyeux roby: make sure that the service placeholders get displayed "right" in error messages<br/>
         
           12de18e 5 weeks ago Sylvain Joyeux roby: better error message for TaskAllocationFailed<br/>
         
           006b417 5 weeks ago Sylvain Joyeux fix race condition during the ruby-internal task initialization<br/>
         
           6915deb 5 weeks ago Sylvain Joyeux roby: remove some debugging output<br/>
         
           270e449 5 weeks ago Sylvain Joyeux roby: use the generic output-handling code in scripts/instanciate<br/>
         
           8f2ab8d 5 weeks ago Sylvain Joyeux roby: in s/instanciate and s/system_model, default to graphical displays if possible<br/>
         
           e6a3363 5 weeks ago Sylvain Joyeux roby: expose the PlanDisplay in scripts/instanciate as a 'qt' display method<br/>
         
           9bba167 5 weeks ago Sylvain Joyeux roby: fix dot generation for dynamic ports<br/>
         
           5835507 5 weeks ago Sylvain Joyeux roby: make the output of scripts/instanciate and scripts/run the same<br/>
         
           4c510d4 5 weeks ago Sylvain Joyeux roby: better formatting for "using fallback policy" messages<br/>
         
           b0876a8 5 weeks ago Sylvain Joyeux roby: allow to access scripts from Roby itself from rock-roby<br/>
         
           d7fb7c3 5 weeks ago Sylvain Joyeux roby: in graphviz generation, fix handling of composition ports<br/>
         
           50bb843 5 weeks ago Sylvain Joyeux roby: remove some debugging output<br/>
         
           918ac05 5 weeks ago Sylvain Joyeux roby: add the orocos task name as an argument of RobyPlugin::TaskContext<br/>
         
           2394173 5 weeks ago Sylvain Joyeux fix spurious "unknown" states in orops<br/>
         
           72c9028 6 weeks ago Sylvain Joyeux roby: doc<br/>
         
           0d8975f 6 weeks ago Sylvain Joyeux roby: in Composition.connect, properly generate errors if no connections are found<br/>
         
           9a71c61 6 weeks ago Sylvain Joyeux roby: in scripts/common, factor out the dot / output generation handling<br/>
         
           c7196d0 6 weeks ago Sylvain Joyeux roby: fix the composer GUI w.r.t. the recent refactoring of the requirement / dependency injection code<br/>
         
           24f0622 6 weeks ago Sylvain Joyeux roby: doc<br/>
         
           4c73d89 6 weeks ago Sylvain Joyeux roby: in InstanceRequirements#use(), accept DependencyInjection objects as argument<br/>
         
           8bd09c7 6 weeks ago Sylvain Joyeux roby: define DependencyInjection#clear<br/>
         
           8982383 6 weeks ago Sylvain Joyeux roby: fix InstanceSpec#map!<br/>
         
           9be6e61 6 weeks ago Sylvain Joyeux roby: in the composer GUI, use Engine#load_composite_file to load a file<br/>
         
           b99eeb5 6 weeks ago Sylvain Joyeux roby: in Engine#use_deployment, do not load the same deployment twice<br/>
         
           958a18e 6 weeks ago Sylvain Joyeux roby: fix in generated dot code to please QtSvg<br/>
         
           bdd7d9c 6 weeks ago Sylvain Joyeux add rock-roby<br/>
         
           863b1b6 6 weeks ago Sylvain Joyeux set the Ruby process CORBA dispatcher to a non-realtime scheduler<br/>
         
           7385cb2 6 weeks ago Sylvain Joyeux orocos.rb Roby plugin now relies on having the temporal scheduler, update scripts<br/>
         
           48662d3 6 weeks ago Sylvain Joyeux fix crash at exit, due to ordering between the CorbaAccess and port deletions<br/>
         
           99df756 7 weeks ago Sylvain Joyeux roby: fix default output file generation in scripts/instanciate<br/>
         
           476486b 7 weeks ago Sylvain Joyeux roby: in scripts/instanciate, do not display loggers by default<br/>
         
           fe96397 7 weeks ago Sylvain Joyeux roby: when loading deployment files, allow to have a mix of system models and engine requirements<br/>
         
           785052a 7 weeks ago Sylvain Joyeux when one of the state transition fails, add task name and model to the error message<br/>
         
           5d70678 7 weeks ago Sylvain Joyeux Merge /home/doudou/dfki/imoby/tools/orocos.rb<br/>
         
           65f3999 7 weeks ago Sylvain Joyeux start the development of a "common base" for ruby scripts<br/>
         
           30c5efe 9 weeks ago Sylvain Joyeux fix management of the name server w.r.t. the ruby process<br/>
         
           9c91ac0 9 weeks ago Sylvain Joyeux define Orocos.initialized?<br/>
         
           fbb9d98 9 weeks ago Sylvain Joyeux define Orocos.initialized?<br/>
         
           7a7b07b 9 weeks ago Sylvain Joyeux split the configuration management part of oroinspect into oroconf<br/>
         
           862be70 9 weeks ago iMoby roby: accept a service_name:conf0,conf1,... syntax for instanciate and run<br/>
         
           ad1629f 9 weeks ago iMoby roby: 1.9 fix, wrong next()<br/>
         
           7543210 9 weeks ago iMoby roby: define TaskContext#disconnect_port(port_name)<br/>
         
           f052c7f 9 weeks ago iMoby roby: in #remove_connections, call source[sink, graph]= to make sure the change is logged<br/>
         
           9511a1d 9 weeks ago iMoby roby: make sure we update the actual connections more often than once per cycle<br/>
         
           8fd5f54 9 weeks ago iMoby roby: in #peek_state, catch more exceptions than simply ComError<br/>
         
           91f2033 9 weeks ago iMoby replace call to Port#validate_policy by Port.prepare_policy<br/>
         
           d16a1ff 9 weeks ago iMoby Merge commit 'd9cbaba9c71c647df0a4a059b28d5785f0e767e3'<br/>
         
           400cfaa 9 weeks ago Sylvain Joyeux roby: try to compute dataflow dynamics for all ports<br/>
         
           bd22277 9 weeks ago Sylvain Joyeux roby: map @deployment_tasks using the merge graph<br/>
         
           719e22f 9 weeks ago Sylvain Joyeux roby: use DataFlowDynamics as logger module in DFD, so that we can selectively output the algorithm debug data<br/>
         
           544f4b5 9 weeks ago Sylvain Joyeux roby: properly compute the policies for logging ports<br/>
         
           cdfb186 9 weeks ago Sylvain Joyeux roby: in policy annotations, display (no policy) if a policy is not set<br/>
         
           e776347 9 weeks ago Sylvain Joyeux roby: remove code made obsolete by the creation of DataFlowDynamics<br/>
         
           acfdb76 9 weeks ago Sylvain Joyeux remove Port#validate_policy<br/>
         
           b5f02d0 9 weeks ago Sylvain Joyeux roby: fix dot generation w.r.t. abstract tasks<br/>
         
           03dd84c 9 weeks ago Sylvain Joyeux roby: fix automatic addition of extensions in Graphviz#to_file<br/>
         
           1d15841 9 weeks ago Sylvain Joyeux roby: in scripts/instanciate, allow profiling using google perftools<br/>
         
           c3dee22 9 weeks ago Sylvain Joyeux roby: fix usage of timepoints<br/>
         
           6c1020e 9 weeks ago Sylvain Joyeux roby: add some more debugging output<br/>
         
           d9cbaba 2 months ago Asguard Demo2 Account roby: add sanity check<br/>
         
           4f69814 2 months ago Asguard Demo2 Account roby: use #rtt_state instead of #state in places where we want a synchronous state reading<br/>
         
           c5d84d6 2 months ago Asguard Demo2 Account roby: use the CORBA transport for the state reader<br/>
         
           d70bf62 2 months ago Alexander Duda replay: policy bugfix<br/>
         
           d1b0691 2 months ago Alexander Duda ports: add method prepare_policy<br/>
         
           5023b49 2 months ago iMoby roby: in InstanceRequirements, invalidate the resolve object whenever the requirements are changed<br/>
         
           a3e83cf 2 months ago iMoby roby: properly set #instance on requirements during instanciation<br/>
         
           202e788 2 months ago iMoby Merge remote branch 'autobuild/master'<br/>
         
           28aa694 2 months ago Alexander Duda Revert "converter: add first version"<br/>
         
           f8111be 2 months ago Alexander Duda Revert "converter: rename some functions"<br/>
         
           84125dc 2 months ago Alexander Duda typkits.rb: fix typo<br/>
         
           c29d6df 2 months ago iMoby roby: add RobyPlugin.requirement_from_name<br/>
         
           4035fae 2 months ago Asguard Demo2 Account roby: add RobyPlugin.requirement_from_name<br/>
         
           e397a96 2 months ago Sylvain Joyeux roby: define Engine#add_instance<br/>
         
           f4410fd 2 months ago Alexander Duda bugfix Orocos.run (can't dup NilClass (TypeError))<br/>
         
           a80ba0a 2 months ago Alexander Duda replay: remove pp<br/>
         
           1cd15db 2 months ago Alexander Duda replay: markers are now stored in an Array<br/>
         
           baec9ae 2 months ago Alexander converter: rename some functions<br/>
         
           17cb383 2 months ago Alexander converter: add first version<br/>
         
           2d782a6 2 months ago Alexander replay: remove Typelib.specialise for Marker<br/>
         
           863d3a0 3 months ago iMoby roby: quick workaround to name mappings on remote processes<br/>
         
           defa356 3 months ago iMoby roby: display selected services in InstanceRequirements#pretty_print<br/>
         
           48b87ff 3 months ago iMoby roby: fix injecting single requirements tasks<br/>
         
           501c0ea 3 months ago iMoby roby: in connection management, remove fallback_policy before calling #connect_to<br/>
         
           b4b8048 3 months ago iMoby roby: fix explicit service selection by name<br/>
         
           5482d25 3 months ago iMoby roby: accept anonymous instances to be created by #resolve_name<br/>
         
           1926bf8 3 months ago iMoby roby: link_to_busses relies on #tasks and to be accurate. Update them based on the merge graph<br/>
         
           fab5242 3 months ago Sylvain Joyeux roby: (1.9) make sure that all graphviz annotations are stored as array<br/>
         
           205ea6d 3 months ago Sylvain Joyeux roby: use #find_local_tasks instead of #find_tasks when possible<br/>
         
           6481cda 3 months ago Sylvain Joyeux roby: small bugfix<br/>
         
           b8a1a1c 3 months ago Sylvain Joyeux roby: add some debugging output for #can_merge?<br/>
         
           99903a2 3 months ago Sylvain Joyeux roby: fix adding merge leaves as candidates for the next pass<br/>
         
           0663563 3 months ago Sylvain Joyeux roby: make NetworkMergeSolver use its own logger object<br/>
         
           315e571 3 months ago Sylvain Joyeux roby: support specifying services by name<br/>
         
           dcd343b 3 months ago Sylvain Joyeux roby: in InstanceRequirements#instanciate, update the #requirements attribute of the new task<br/>
         
           28c9785 3 months ago Sylvain Joyeux roby: fix update_connection_policy to not fill empty policies with defaults<br/>
         
           88aa688 3 months ago Sylvain Joyeux roby: having multiple inputs is fine during the merge passes<br/>
         
           f987446 3 months ago Sylvain Joyeux roby: mark the complete orocos.rb library as part of the framework<br/>
         
           d934bde 3 months ago Sylvain Joyeux make validate_policy *really* a validation function<br/>
         
           a19cd70 3 months ago Sylvain Joyeux roby: remove debugging test<br/>
         
           91d0c7c 3 months ago Sylvain Joyeux roby: in scripts, use the new Application.common_optparse_setup<br/>
         
           73bdc4b 3 months ago Sylvain Joyeux roby: improve debugging output in algorithms based on DataFlowComputation<br/>
         
           0f9f8b0 3 months ago Sylvain Joyeux roby: define TaskContext#each_event_port to remove explicit references to oroGen specification objects<br/>
         
           4fed165 3 months ago Sylvain Joyeux roby: fix usage of SystemModel.ignored_for_autoconnection?<br/>
         
           95f8c17 3 months ago Sylvain Joyeux roby: documentation updates<br/>
         
           599d452 3 months ago Sylvain Joyeux roby: be less aggressive when duplicating InstanceRequirements<br/>
         
           d6a399f 3 months ago Sylvain Joyeux roby: don't postprocess the deployed network if the policy generation is turned off<br/>
         
           e5f4d54 3 months ago Sylvain Joyeux roby: small doc fix<br/>
         
           3d04524 3 months ago Sylvain Joyeux roby: turn validation off if deployments are turned off<br/>
         
           77f9bf1 3 months ago Sylvain Joyeux roby: add the model_postprocessing hook<br/>
         
           1847d01 3 months ago Sylvain Joyeux roby: in graphviz export, accept undeployed tasks<br/>
         
           abccfa5 3 months ago Sylvain Joyeux roby: use the new logger indentation support to indent the log messages from direct_merge_mappings<br/>
         
           cef583d 3 months ago Sylvain Joyeux roby: remove a useless test in #direct_merge_mappings<br/>
         
           4f35ffe 3 months ago Sylvain Joyeux roby: remove the idiotic inclusion of CompositionModel in SystemModel<br/>
         
           84a6786 3 months ago Sylvain Joyeux roby: document SystemModel<br/>
         
           3c10398 3 months ago Sylvain Joyeux roby: add a global mechanism to ignore ports in autoconnection<br/>
         
           1ed6c3c 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into roby_integration<br/>
         
           9805217 3 months ago Asguard Demo2 Account Merge remote branch 'autobuild/master'<br/>
         
           bcb3911 3 months ago Sylvain Joyeux roby: remove annoying debugging output to scripts/instanciate<br/>
         
           0850e3e 3 months ago Sylvain Joyeux roby: add a few more plugin-through-inclusion hooks<br/>
         
           afccd4f 3 months ago Sylvain Joyeux roby: small doc update<br/>
         
           68be625 3 months ago Sylvain Joyeux roby: add a validation step after deploy_system_network<br/>
         
           6440bcc 3 months ago Sylvain Joyeux roby: call super in InstanceRequirements#pretty_print<br/>
         
           a72656f 3 months ago Sylvain Joyeux roby: minor fixes to InstanceRequirements#pretty_print<br/>
         
           0f589c3 3 months ago Sylvain Joyeux roby: when duplicating the DependencyInjection objects, do not duplicate task instances<br/>
         
           4d783c4 3 months ago Sylvain Joyeux roby: use the ortho connections in graphviz output<br/>
         
           3dbc6a8 3 months ago Sylvain Joyeux roby: add some timepoint traces to allow tracking what parts of the algorithms are the most costly<br/>
         
           ef06cf4 3 months ago Sylvain Joyeux roby: add a --profile option to instanciate<br/>
         
           e3835fe 3 months ago Sylvain Joyeux roby: in #add_port_info, refine exception messages raised by the #merge method of the info holder object<br/>
         
           405b9a8 3 months ago Sylvain Joyeux roby: create a DataFlowComputation::Trigger class to hold trigger information<br/>
         
           941ff53 3 months ago Sylvain Joyeux roby: call super in Component#merge to allow extension-through-inclusion<br/>
         
           50cee5f 3 months ago Alexander Duda replay: add method refresh<br/>
         
           807e119 3 months ago Alexander Duda replay: bugfix seek(pos)<br/>
         
           3ad90c7 3 months ago Sylvain Joyeux roby: when adding devices to the main selection, resolve to the tasks not the specifications<br/>
         
           c6a19a1 3 months ago Sylvain Joyeux roby: major cleanup of instance requirement vs. instanciation handling<br/>
         
           2008e5b 3 months ago Sylvain Joyeux roby: add a new instanciated_network_postprocessing stage<br/>
         
           226cd2b 3 months ago Sylvain Joyeux fix Orocos.run with no options<br/>
         
           55f36a8 3 months ago auv oroinspect: Fixed ruby 1.9 bug, save configuration did not work because of variable nameing mix<br/>
         
           39c4d21 3 months ago Sylvain Joyeux roby: in graphviz export, fix display of concrete connections<br/>
         
           c588cb8 3 months ago Sylvain Joyeux roby: call system network postprocessing stages after the GC pass<br/>
         
           5c2f6a2 3 months ago Sylvain Joyeux roby: start documenting the Graphviz class<br/>
         
           8cb8460 3 months ago Sylvain Joyeux roby: call the instantation postprocessing blocks after the first merge<br/>
         
           8b48aa0 3 months ago Sylvain Joyeux roby: cleanup the default implementation of DataFlowComputation#triggering_port_connections<br/>
         
           4de802b 3 months ago Sylvain Joyeux roby: allow nil as a return value for #triggering_port_connections<br/>
         
           aff5f99 3 months ago Sylvain Joyeux roby: in DataFlowComputation, validate the return value of #required_information<br/>
         
           424ecee 3 months ago Sylvain Joyeux roby: add an instance-level logger to DataFlowComputation<br/>
         
           00037a7 3 months ago Sylvain Joyeux roby: make the DeviceAllocationFailed error more informative<br/>
         
           64fec9a 3 months ago Sylvain Joyeux roby: in Graphviz, add support to add vertices and edges to the generated dot graph<br/>
         
           54216ef 3 months ago Sylvain Joyeux roby: in NetworkMergeSolver#do_merge, also update parent-&gt;task relationships<br/>
         
           ab3c415 3 months ago Sylvain Joyeux roby: in NetworkMergeSolver#do_merge, remove the return value as it is unused<br/>
         
           a517d2f 3 months ago Sylvain Joyeux roby: cleanup in usage of loggers<br/>
         
           33f3c93 3 months ago Alexander Duda replay: add filter options<br/>
         
           abc75a8 3 months ago Sylvain Joyeux roby: move the listing of triggering connections to a separate method<br/>
         
           9716bc3 3 months ago Sylvain Joyeux the root logger on Orocos is now defined in oroGen<br/>
         
           88476b9 3 months ago Sylvain Joyeux roby: more documentation for the DataFlowComputation class<br/>
         
           07bb44f 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/experimental' into experimental<br/>
         
           7499b88 3 months ago Sylvain Joyeux make the default deployment workflow compatible with log_all_ports / default logging<br/>
         
           7e8893e 3 months ago Sylvain Joyeux yield in Orocos.watch to allow some customization<br/>
         
           7202f64 3 months ago Sylvain Joyeux don't forget to sleep in Orocos.watch<br/>
         
           e925e0f 3 months ago Sylvain Joyeux use the new Logger::Root() call from utilrb to set up a logger on Orocos<br/>
         
           f77375a 3 months ago Sylvain Joyeux conf: define Orocos.apply_conf that accepts also directories<br/>
         
           9a8ef1c 3 months ago Sylvain Joyeux define Orocos.watch as a helper for simple scripts<br/>
         
           f5357dc 3 months ago Matthias Goldhoorn replay: moved some functions around and improved ruby naming sceme<br/>
         
           361b151 3 months ago Jakob Schwendner replay: use standard logging instead of just printing to stdout<br/>
         
           af594ae 3 months ago Jakob Schwendner replay: delay exception when types can not be loaded<br/>
         
           d3d5a3e 3 months ago Asguard Demo2 Account roby: when validating the generated network, check that a device is not assigned to two different tasks<br/>
         
           34e75cc 3 months ago Asguard Demo2 Account roby: when merging dataflow cycles, do pass on the rejected cycles<br/>
         
           6cded60 3 months ago Asguard Demo2 Account roby: major cleanup of the update of #task on instances and devices<br/>
         
           ce82cf6 3 months ago Asguard Demo2 Account roby: more useful error messages<br/>
         
           d9987e2 3 months ago Asguard Demo2 Account roby: it is OK to have multiple input connections during the merge<br/>
         
           7b77b80 3 months ago Asguard Demo2 Account Merge remote branch 'autobuild/master'<br/>
         
           49e5de6 3 months ago Sylvain Joyeux roby: add some debugging output in the dataflow dynamics computation<br/>
         
           bec9197 3 months ago Sylvain Joyeux roby: fix some naming in generated triggers<br/>
         
           6a31a74 3 months ago Sylvain Joyeux roby: export the result of the port dynamics computation on the task object themselves<br/>
         
           5c0ae0f 3 months ago Sylvain Joyeux roby: make the system deployment visualization more modular<br/>
         
           cf83d48 3 months ago Sylvain Joyeux roby: move the deployment of the abstract system network into its own method<br/>
         
           206d0b5 3 months ago Sylvain Joyeux roby: extract plan-to-graph display from Engine into its own class<br/>
         
           d3d9c8e 3 months ago Sylvain Joyeux roby: load orocos/roby plugins<br/>
         
           ac4bec3 3 months ago Thomas Roehr Prevent using orogen_default deployments by filtering them out in use_deployments_from<br/>
         
           1813c7a 3 months ago Matthias Goldhoorn replay.rb: added error handling and not only return nil in case of non-initialized streams<br/>
         
           6d8e363 3 months ago Matthias Goldhoorn replay: added helper function to seek for index, given the time<br/>
         
           44fb1c4 3 months ago Sylvain Joyeux roby: small style change for clearer logic<br/>
         
           d8e0cfb 3 months ago Sylvain Joyeux roby: replace the merge cycle breaking algorithm<br/>
         
           5e33b1c 3 months ago Sylvain Joyeux roby: fix handling of possible cycles in the internal loop<br/>
         
           ac752ee 3 months ago Sylvain Joyeux roby: small fixes to the network merge solver debugging output<br/>
         
           d6fa5c7 3 months ago Sylvain Joyeux roby: make has_final_information_for_port? return false if the port is done but no information is available for it<br/>
         
           3dc5b46 3 months ago Sylvain Joyeux force usage of explicit names when starting a component by type<br/>
         
           b6e7584 4 months ago Sylvain Joyeux add support for oroGen default deployments in orocos.rb<br/>
         
           69a3233 4 months ago Sylvain Joyeux *really* deprecate #spawn<br/>
         
           63c497d 4 months ago Sylvain Joyeux roby: in dataflow dynamics, ignore unconnected inputs when looking for triggering connections<br/>
         
           370cd36 4 months ago Sylvain Joyeux roby: refactor the dataflow dynamics code<br/>
         
           d431026 4 months ago Sylvain Joyeux roby: in scripts/instanciate --test, give an absolute path to the desired output files<br/>
         
           aee87e3 4 months ago Sylvain Joyeux roby: fix cross-child-dependencies in #use specifications<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="31"> 8 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_31"><td>
         
           2bbea2b 5 weeks ago Sylvain Joyeux Revert "bugfix related to 9c1b53dd17c01e3b3fc463d8da184b57589959cf"<br/>
         
           1689ac3 5 weeks ago Alexander Duda bugfix related to 9c1b53dd17c01e3b3fc463d8da184b57589959cf<br/>
         
           8e93c55 5 weeks ago Sylvain Joyeux Merge branch 'stable' of http://git.gitorious.org/rock-toolchain/pocolog<br/>
         
           415391e 6 weeks ago Jakob Schwendner in pocolog-decode, display whether data blocks are compressed or not<br/>
         
           9c1b53d 2 months ago Sylvain Joyeux when computing the minimal stream registry, don't include aliases<br/>
         
           0a23aa0 3 months ago Sylvain Joyeux fix --extract --streams NAME (without :sample_count)<br/>
         
           bf99f3a 3 months ago Matthias Goldhoorn stream_aligner: changed some functions namings to be more "ruby like", and raise an error is more than one stream exists with requested name<br/>
         
           6fc6c44 3 months ago Matthias Goldhoorn Added getter for stream indexes<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="32"> 13 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_32"><td>
         
           a53b78d 3 weeks ago Sylvain Joyeux make hoe truly optional<br/>
         
           eaaaf01 5 weeks ago Sylvain Joyeux app: forcefully define main_planner in #require_planners<br/>
         
           7d43553 5 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           532624d 2 months ago Sylvain Joyeux gui: more informative and better formatted task detail window<br/>
         
           968c252 2 months ago iMoby add the /usr/lib/ruby folder to RX_IN_FRAMEWORK<br/>
         
           0aaef30 3 months ago Sylvain Joyeux core: micro-optimizations<br/>
         
           8af311b 3 months ago Sylvain Joyeux app: fix --help in common_optparse_setup<br/>
         
           27e6290 3 months ago iMoby Revert "app: use utilrb's log_pp implementation"<br/>
         
           33196f8 3 months ago Sylvain Joyeux app: use utilrb's log_pp implementation<br/>
         
           b241c9a 3 months ago Sylvain Joyeux app: add (eval) from the list of framework callback regexp<br/>
         
           e98482e 3 months ago Sylvain Joyeux app: define Application.common_optparse_setup(opt)<br/>
         
           ec26e06 3 months ago Sylvain Joyeux app: define Application#log_setup, which allows to override the logging configuration from app.yml<br/>
         
           5897ac6 3 months ago Sylvain Joyeux core: allow for plugin-by-module in Task#can_merge?<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/service_discovery">
         <th>tools/service_discovery</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="34"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_34"><td>
         
           ea80e6e 7 weeks ago Thomas Roehr Extend timeout for resolving local service<br/>
         
           ae79a4a 7 weeks ago Thomas Roehr Fix description size computation<br/>
         
           96c7b5d 7 weeks ago Thomas Roehr Fix code sample<br/>
         
         </td></tr>
       
       









       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="35"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_35"><td>
         
           a934d79 2 months ago Sylvain Joyeux ruby: make the with_aliases argument of minimal() accessible on the Ruby API<br/>
         
         </td></tr>
       
       





       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="36"> 7 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_36"><td>
         
           c765cd0 5 weeks ago Sylvain Joyeux dsl: fix wrong do-no-define-constants test in dsl_load<br/>
         
           95c3f09 3 months ago Sylvain Joyeux add support to pretty-print objects on a Logger<br/>
         
           74de71f 3 months ago Sylvain Joyeux define the Timepoints module<br/>
         
           9626846 3 months ago Sylvain Joyeux logger: define a stateful indentation support<br/>
         
           4c13481 3 months ago Sylvain Joyeux define Hash#map_value<br/>
         
           f94fe04 3 months ago Sylvain Joyeux logger: support auto-inclusion of Forward when including Hierarchy in a class as well<br/>
         
           3bcc5c1 3 months ago Sylvain Joyeux logger: in Root, allow to override the logger completely<br/>
         
         </td></tr>
       
       


</table>
