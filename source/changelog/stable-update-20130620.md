---
title: "2013-06-20"
sort_info: 993
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
New package rtt_typelib to separate typelib-based marshalling code in a library. 
Otherwise this is mostly a bugfix release. 

<h1>New packages</h1>
<ul>
    <li>external/gdal</li>

    <li>slam/g2o</li>

    <li>rtt_typelib</li>
</ul>

<h1>Package status</h1>
<p>0 commits in 0 packages are in next and not pushed to stable <br/>
Affected packages: </p>


<p>914 new commits<br/>
Affected packages: 
  <a href="#base/numeric">base/numeric</a>

  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/scripts">base/scripts</a>

  <a href="#base/templates/bundle">base/templates/bundle</a>

  <a href="#base/templates/cmake_lib">base/templates/cmake_lib</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#control/orogen/trajectory_follower">control/orogen/trajectory_follower</a>

  <a href="#control/trajectory_follower">control/trajectory_follower</a>

  <a href="#drivers/aggregator">drivers/aggregator</a>

  <a href="#drivers/camera_firewire">drivers/camera_firewire</a>

  <a href="#drivers/camera_interface">drivers/camera_interface</a>

  <a href="#drivers/camera_prosilica">drivers/camera_prosilica</a>

  <a href="#drivers/camera_usb">drivers/camera_usb</a>

  <a href="#drivers/canbus">drivers/canbus</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/dvl_teledyne">drivers/dvl_teledyne</a>

  <a href="#drivers/dynamixel">drivers/dynamixel</a>

  <a href="#drivers/fog_kvh">drivers/fog_kvh</a>

  <a href="#drivers/iCharger">drivers/iCharger</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/laser_filter">drivers/laser_filter</a>

  <a href="#drivers/laserscanner_sick">drivers/laserscanner_sick</a>

  <a href="#drivers/orogen/camera_usb">drivers/orogen/camera_usb</a>

  <a href="#drivers/orogen/canbus">drivers/orogen/canbus</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/iodrivers_base">drivers/orogen/iodrivers_base</a>

  <a href="#drivers/orogen/sonar_tritech">drivers/orogen/sonar_tritech</a>

  <a href="#drivers/orogen/transformer">drivers/orogen/transformer</a>

  <a href="#drivers/qualisys">drivers/qualisys</a>

  <a href="#drivers/sonar_tritech">drivers/sonar_tritech</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#drivers/xsens_imu">drivers/xsens_imu</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#image_processing/jpeg_conversion">image_processing/jpeg_conversion</a>

  <a href="#image_processing/libelas">image_processing/libelas</a>

  <a href="#multiagent/fipa_acl">multiagent/fipa_acl</a>

  <a href="#planning/corridor_navigation">planning/corridor_navigation</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/nav_graph_search">planning/nav_graph_search</a>

  <a href="#planning/orogen/corridor_navigation">planning/orogen/corridor_navigation</a>

  <a href="#planning/vfh_star">planning/vfh_star</a>

  <a href="#rtt">rtt</a>

  <a href="#slam/envire">slam/envire</a>

  <a href="#slam/graph_slam">slam/graph_slam</a>

  <a href="#slam/odometry">slam/odometry</a>

  <a href="#slam/orogen/graph_slam">slam/orogen/graph_slam</a>

  <a href="#slam/orogen/odometry">slam/orogen/odometry</a>

  <a href="#slam/pose_ekf">slam/pose_ekf</a>

  <a href="#slam/quater_ikf">slam/quater_ikf</a>

  <a href="#slam/quater_ukf">slam/quater_ukf</a>

  <a href="#tools/logger">tools/logger</a>

  <a href="#tools/log_tools">tools/log_tools</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#tools/service_discovery">tools/service_discovery</a>

  <a href="#typelib">typelib</a>

  <a href="#orogen">orogen</a>

  <a href="#utilrb">utilrb</a>
</p>

<table class="package_status">
       <tr class="name" id="base/numeric">
         <th>base/numeric</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="1"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_1"><td>
         
           1083a2f 7 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock cmake macros instead of relying on an environment variable<br/>
         </td></tr>
       







       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="2"> 12 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_2"><td>
         
           be25d00 6 months ago Jakob Schwendner added vector6d to the types<br/>
         
           8c8e23e 7 months ago Matthias Goldhoorn Added vector of strings<br/>
         
           370bd26 7 months ago Matthias Goldhoorn Reactivated new version of sisl<br/>
         
           fa10225 7 months ago Sylvain Joyeux Revert "Changed include PATHs for SISL for new SISL Version"<br/>
         
           e3fc933 7 months ago Matthias Goldhoorn Changed include PATHs for SISL for new SISL Version<br/>
         
           3a475db 7 months ago Sylvain Joyeux add an explicit mapping to ROS for base/Time and base/samples/frame/Frame<br/>
         
           893c99a 7 months ago Sylvain Joyeux rename our own test to a different name than 'test' to be compatible with the catkin stuff in the ROS transport<br/>
         
           176be08 7 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock cmake macros instead of relying on an environment variable<br/>
         
           d29e5ba 8 months ago Felix Rehrmann struct for VectorXd<br/>
         
           f73fef7 8 months ago Felix Rehrmann added test for MatrixX and VectorX opaques types conversion<br/>
         
           728f211 8 months ago Felix Rehrmann changed to tests to fit to the implementation<br/>
         
           fac479e 8 months ago Felix Rehrmann wrappers for base::MatrixX and base::VectorX<br/>
         </td></tr>
       



       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="3"> 7 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_3"><td>
         
           7a27065 5 months ago Sylvain Joyeux in rock_inspect, do not enable vizkit if DISPLAY is not set<br/>
         
           ed06b37 5 months ago Sylvain Joyeux fix loading of Roby w.r.t. the cleanup of singleton instances in Roby itself<br/>
         
           ac1832d 6 months ago Sylvain Joyeux use Orocos::Spec::Deployment in rock-inspect<br/>
         
           ae92bc1 7 months ago Janosch Machowinski gitorious_api: Use search page for filtering<br/>
         
           23aad55 7 months ago Janosch Machowinski gitorious.api: fixed double slashes in url<br/>
         
           6f60266 7 months ago Sylvain Joyeux fix package directory generation on ruby 1.9<br/>
         
           974e868 7 months ago Sylvain Joyeux better error message when a template generation fails<br/>
         </td></tr>
       



       <tr class="name" id="base/templates/bundle">
         <th>base/templates/bundle</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="4"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_4"><td>
         
           1efd2e8 5 months ago Sylvain Joyeux add a rakefile that can generate the documentation for the bundle<br/>
         
           4450c14 5 months ago Sylvain Joyeux planners are being replaced by actions in roby, update the template<br/>
         </td></tr>
       



       <tr class="name" id="base/templates/cmake_lib">
         <th>base/templates/cmake_lib</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="5"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_5"><td>
         
           7404ab9 7 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock cmake macros instead of relying on an environment variable<br/>
         </td></tr>
       











       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="6"> 17 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_6"><td>
         
           0e004d4 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           fa8dd64 6 months ago Sylvain Joyeux make the change of "test" from a toplevel target to a subdirectory forward compatible<br/>
         
           b96805b 6 months ago Jakob Schwendner added clock-cycles to time mark<br/>
         
           ea5bea6 6 months ago Jakob Schwendner moved testsuite into test directory and added benchmarking for eigen<br/>
         
           5b96501 6 months ago Jakob Schwendner added ability to pass parameters on how the points are interpreted in the interpolate call<br/>
         
           ba55fa6 7 months ago Sylvain Joyeux spline: document reset<br/>
         
           bb13438 7 months ago Matthias Goldhoorn Reactivated new version of sisl<br/>
         
           6b19ecf 7 months ago Sylvain Joyeux Revert "Change to new SISL Version"<br/>
         
           1d53fbf 7 months ago Matthias Goldhoorn Change to new SISL Version<br/>
         
           56d50dc 7 months ago Matthias Goldhoorn Fixed compiler issue on newer compiler version for abs<br/>
         
           e519a49 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable'<br/>
         
           47c0e98 7 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock cmake macros instead of relying on an environment variable<br/>
         
           30e41b7 7 months ago Thomas Roehr Disable setting of linker flag '-z noexecstack' for ARM<br/>
         
           9ec2eb0 8 months ago Felix Rehrmann base::VectorXd and base::MatrixXd<br/>
         
           b878df7 8 months ago Sylvain Joyeux make FindGem compatible with GEM_PATH<br/>
         
           d605b1a 8 months ago Sylvain Joyeux make the CMake discovery mechanisms compatible with ROCK_PREFIX_PATH<br/>
         
           40282c0 8 months ago Sylvain Joyeux the boost unit test framework should be optional<br/>
         </td></tr>
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="7"> 14 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_7"><td>
         
           44b4b07 5 months ago Thomas Roehr Remove sisl.h include, since its not needed<br/>
         
           739cb9e 6 months ago Jakob Schwendner added ability to parametrize the shape of the spline curve<br/>
         
           27347d7 7 months ago Matthias Goldhoorn Reactivatd new version of sisl<br/>
         
           73de9fb 7 months ago Sylvain Joyeux Revert "adaptation new new SISL"<br/>
         
           5fe4011 7 months ago Sylvain Joyeux add required dependency on external/sisl<br/>
         
           38d36d8 7 months ago Matthias Goldhoorn adaptation new new SISL<br/>
         
           9de8254 7 months ago Matthias Goldhoorn Revert "adaptation new new SISL"<br/>
         
           dac5308 7 months ago Matthias Goldhoorn Revert "Added additional workaround wor pkg_path for building this package for RTEMS"<br/>
         
           340d9c8 7 months ago Matthias Goldhoorn Merge gitorious.org:/rock-base/types_ruby<br/>
         
           ba7d769 7 months ago Matthias Goldhoorn Added additional workaround wor pkg_path for building this package for RTEMS<br/>
         
           bf6daba 7 months ago Matthias Goldhoorn adaptation new new SISL<br/>
         
           8217100 7 months ago Jakob Schwendner extended eigen ruby bindings with Isometry transform class<br/>
         
           5f782b7 8 months ago Felix Rehrmann adapted VectorX converters to the VectorXd struct in orogen/types<br/>
         
           26ebcbc 8 months ago Felix Rehrmann ruby types Eigen::MatrixX, Eigen::VectorX<br/>
         </td></tr>
       















       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="8"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_8"><td>
         
           bc4422a 7 months ago Sylvain Joyeux add missing dependency on base/types<br/>
         
           1c2e5c2 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       

















       <tr class="name" id="control/orogen/trajectory_follower">
         <th>control/orogen/trajectory_follower</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="9"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_9"><td>
         
           69cf71f 6 months ago Stefan Haase Allows to define x or y to be the front axis of the robot.<br/>
         
           4a573d0 7 months ago Jakob Schwendner update drive speed in updateHook<br/>
         </td></tr>
       





       <tr class="name" id="control/trajectory_follower">
         <th>control/trajectory_follower</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="10"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_10"><td>
         
           4c5f5a9 7 months ago Stefan Haase Adds a method to define the 'front-axis' of the robot (x or y).<br/>
         
           bd16294 7 months ago Jakob Schwendner changed debug output to use base::logging<br/>
         </td></tr>
       















       <tr class="name" id="drivers/aggregator">
         <th>drivers/aggregator</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="11"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_11"><td>
         
           7eeb56f 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       









       <tr class="name" id="drivers/camera_firewire">
         <th>drivers/camera_firewire</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="12"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_12"><td>
         
           57ca435 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           f10e5b2 7 months ago Sylvain Joyeux add missing include for sleep()<br/>
         </td></tr>
       





       <tr class="name" id="drivers/camera_interface">
         <th>drivers/camera_interface</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="13"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_13"><td>
         
           a72ab25 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           5c63e50 7 months ago Sylvain Joyeux add missing Requires: in the pc file<br/>
         </td></tr>
       



       <tr class="name" id="drivers/camera_prosilica">
         <th>drivers/camera_prosilica</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="14"> 4 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_14"><td>
         
           e404ba9 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           a5b5ab4 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           2bf5579 7 months ago Sylvain Joyeux Marked prosilica as stable and fixed gcc 4.7.1 errors<br/>
         
           81ece9b 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="drivers/camera_usb">
         <th>drivers/camera_usb</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="15"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_15"><td>
         
           3ca72b4 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           9e0bc9a 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="drivers/canbus">
         <th>drivers/canbus</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="16"> 3 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_16"><td>
         
           9f16299 5 months ago Sylvain Joyeux Merge commit '2ba084c' into next<br/>
         
           61f9835 5 months ago Sylvain Joyeux fix err() being used with a format string not being a string literal<br/>
         
           2ba084c 8 months ago Sylvain Joyeux fix err() being used with a format string not being a string literal<br/>
         </td></tr>
       



       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="17"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_17"><td>
         
           d3b30d4 7 months ago Sylvain Joyeux add missing dependency on base/types<br/>
         
           6f85a29 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       





       <tr class="name" id="drivers/dvl_teledyne">
         <th>drivers/dvl_teledyne</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="18"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_18"><td>
         
           81a516a 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="drivers/dynamixel">
         <th>drivers/dynamixel</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="19"> 6 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_19"><td>
         
           32180cb 7 months ago crex Fix compiler problem.<br/>
         
           081afeb 7 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-drivers/dynamixel<br/>
         
           0c25ace 7 months ago Stefan Haase Extends the test program.<br/>
         
           813a405 7 months ago crex Adds a resend-functionality.<br/>
         
           0d95666 7 months ago Stefan Haase Adds 'getActiveServo()'.<br/>
         
           e465402 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="drivers/fog_kvh">
         <th>drivers/fog_kvh</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="20"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_20"><td>
         
           78bcd64 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       





       <tr class="name" id="drivers/iCharger">
         <th>drivers/iCharger</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="21"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_21"><td>
         
           59b4aa2 8 months ago Sylvain Joyeux add missing osdeps<br/>
         </td></tr>
       





       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="22"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_22"><td>
         
           e54c4f2 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           0914f30 8 months ago Sylvain Joyeux implemented UDPServer, using recvfrom/sendto<br/>
         </td></tr>
       



       <tr class="name" id="drivers/laser_filter">
         <th>drivers/laser_filter</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="23"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_23"><td>
         
           f33ca89 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="drivers/laserscanner_sick">
         <th>drivers/laserscanner_sick</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="24"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_24"><td>
         
           c106506 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       























       <tr class="name" id="drivers/orogen/camera_usb">
         <th>drivers/orogen/camera_usb</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="25"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_25"><td>
         
           da70ec5 7 months ago Rimres-gcs2 fix display_remote_script that uses the default orocos nameserver.<br/>
         </td></tr>
       





       <tr class="name" id="drivers/orogen/canbus">
         <th>drivers/orogen/canbus</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="26"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_26"><td>
         
           13d84ba 7 months ago Sylvain Joyeux rename 'test' into test_canbus to make the ROS transport happy<br/>
         </td></tr>
       



       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="27"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_27"><td>
         
           eaa759b 9 months ago Felix Rehrmann put code of JoystickTask updateHook into multiple functions to reuse it<br/>
         </td></tr>
       

















       <tr class="name" id="drivers/orogen/iodrivers_base">
         <th>drivers/orogen/iodrivers_base</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="28"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_28"><td>
         
           22e7132 8 months ago Sylvain Joyeux the typekit should not link to iodrivers_base, but it does need the includes<br/>
         </td></tr>
       























       <tr class="name" id="drivers/orogen/sonar_tritech">
         <th>drivers/orogen/sonar_tritech</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="29"> 3 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_29"><td>
         
           192ec6f 7 months ago Sascha Arnold Merge branch 'reactivate_profiling'<br/>
         
           7c42289 7 months ago Marc Hildebrandt added property for baudrate<br/>
         
           66926d5 11 months ago Sascha Arnold added first version of the reintegration of the profiling sonar<br/>
         </td></tr>
       







       <tr class="name" id="drivers/orogen/transformer">
         <th>drivers/orogen/transformer</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="30"> 5 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_30"><td>
         
           cc08d27 5 months ago Sylvain Joyeux make the TransformConfigurationProxy forward calls to the underlying Transform object<br/>
         
           f3939ce 5 months ago Sylvain Joyeux the syskit plugin has been moved into drivers/transformer<br/>
         
           8bcd8af 5 months ago Sylvain Joyeux add a syskit plugin, the roby plugin adapted<br/>
         
           45840c2 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock/RockRuby instead of ROCK_CMAKE_MACROS<br/>
         
           28f6c9b 8 months ago Sylvain Joyeux rock: fix #find_transform_of_port for mocking in tests<br/>
         </td></tr>
       





















       <tr class="name" id="drivers/qualisys">
         <th>drivers/qualisys</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="31"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_31"><td>
         
           9d94e8d 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="drivers/sonar_tritech">
         <th>drivers/sonar_tritech</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="32"> 7 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_32"><td>
         
           9885cc9 4 weeks ago Matthias Goldhoorn Close does not need to be implemented in the echosounder, use the Driver method instead<br/>
         
           e7cd26c 7 months ago Sascha Arnold Merge branch 'reactivate_profiling'<br/>
         
           080296a 7 months ago Sascha Arnold added missing continous prameter<br/>
         
           484a7fb 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           8d0fe0a 9 months ago Sascha Arnold added a error message if max packet size is reached<br/>
         
           b287e4c 10 months ago Sascha Arnold fixed range scale setting<br/>
         
           9734851 11 months ago Sascha Arnold added first version of the reintegration of the profiling sonar<br/>
         </td></tr>
       





       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="33"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_33"><td>
         
           3088baf 9 days ago Sylvain Joyeux fix API documentation for #static_transform and #dynamic_transform (fixes #203)<br/>
         
           75cba91 5 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       







       <tr class="name" id="drivers/xsens_imu">
         <th>drivers/xsens_imu</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="34"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_34"><td>
         
           896f4db 8 months ago Sylvain Joyeux fix wrong depend tag<br/>
         
           1720a17 8 months ago Sylvain Joyeux add missing dependency<br/>
         </td></tr>
       

























       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="35"> 3 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_35"><td>
         
           4a80946 7 months ago Sitta Buhmann added sonar widget<br/>
         
           43cbc9f 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           2022103 8 months ago Janosch Machowinski added qtwidged tags to manifest and added screenshots<br/>
         </td></tr>
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="36"> 24 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_36"><td>
         
           ad2e321 4 months ago Alexander Duda fix: from_ruby': cannot convert  to /std/string<br/>
         
           81ea279 7 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           b08901c 7 months ago Stefan Haase Adds the possibility to choose the 'front-axis' of the robot (x or y).<br/>
         
           7e6f299 7 months ago Jakob Schwendner viz: fix initialization of line_width in TrajectoryVisualization<br/>
         
           1e7bc94 7 months ago Jakob Schwendner viz: updated TrajectoryVisualization to support color and line width<br/>
         
           01bae55 7 months ago Sitta Buhmann added sonar widget<br/>
         
           52d2dcc 7 months ago Sylvain Joyeux rtt-typelib pkg-config's file changed name for the merge with orocos toolchain 2.6<br/>
         
           a720b2e 7 months ago Alexander Duda bugfix: tree_modeler (copy paste error)<br/>
         
           810d30e 7 months ago Alexander Duda allow to set the vizkit3d_widget<br/>
         
           b395e30 7 months ago Alexander Duda bugfix: port_proxy stopped working because of namespaces<br/>
         
           b6bdaa7 7 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock cmake macros instead of relying on an environment variable<br/>
         
           773fdea 7 months ago Sylvain Joyeux remove debugging output<br/>
         
           ec613f1 7 months ago Sylvain Joyeux ruby: do not try to proxy ports that do not respond to to_orocos_port<br/>
         
           247f6e2 7 months ago Sylvain Joyeux ruby: add some tests for ROS::Topic when needed in the tree modeller<br/>
         
           befccd0 7 months ago Sylvain Joyeux ruby: remove unnecessary complications in port_from_item<br/>
         
           1176825 7 months ago Sylvain Joyeux ruby: fix the tree modeller to require much less dispatching<br/>
         
           d6bb8a4 7 months ago Sylvain Joyeux ruby: in the task proxy, rescue the common Orocos::ComError exception instead of the CORBA-specific one<br/>
         
           d8a330d 7 months ago Jakob Schwendner fixed typo in function name: setVizualisationFrame -&gt; setVisualizationFrame<br/>
         
           780f08f 8 months ago Alexander Duda register widgets: use string rather than classes<br/>
         
           cbc54fb 8 months ago Alexander Duda rock-replay call always Orocos.initialize<br/>
         
           1dc98c8 8 months ago Alexander Duda compatibility update Orocos::NameService<br/>
         
           e73b039 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           c9314df 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           836126f 9 months ago Sascha Arnold fixed the possibility to set the inital display frame using the method setVizualisationFrame<br/>
         </td></tr>
       





       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="37"> 6 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_37"><td>
         
           893665a 7 months ago Thomas Roehr Don't use a static instance of JpegConversion -- compress/decompress are not thread-safe.<br/>
         
           6fe41ec 7 months ago Sylvain Joyeux fix rtt_typelib's pkg-config file changed name with the extraction out of orogen<br/>
         
           fa13797 7 months ago Sylvain Joyeux frame_helper really depends on rtt_typelib, not orogen or orocos.rb<br/>
         
           e83b7b8 8 months ago Sylvain Joyeux Merge branch 'master' of git://gitorious.org/rock-image-processing/frame_helper<br/>
         
           8662601 8 months ago Sylvain Joyeux add dependencies that were missing for the ruby bindings<br/>
         
           0ffeba2 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="image_processing/jpeg_conversion">
         <th>image_processing/jpeg_conversion</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="38"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_38"><td>
         
           03e224f 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           988d27f 8 months ago Sylvain Joyeux depend on "ruby" as we build our own extension<br/>
         </td></tr>
       



       <tr class="name" id="image_processing/libelas">
         <th>image_processing/libelas</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="39"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_39"><td>
         
           d24f7af 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       













       <tr class="name" id="multiagent/fipa_acl">
         <th>multiagent/fipa_acl</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="40"> 4 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_40"><td>
         
           9099723 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           ee6249d 8 months ago Sylvain Joyeux the Rock CMake macros expect Doxyfile.in to be in the toplevel project directory<br/>
         
           676a198 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           31810df 8 months ago Sylvain Joyeux depend on "ruby" as we build our own Ruby extension<br/>
         </td></tr>


       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="41"> 124 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="from_commits" id="commits_41"><td>
         
           b2364b8 6 weeks ago Sylvain Joyeux fix generated Hook supercalls in the user-visible Task class<br/>
         
           4c05382 5 months ago Sylvain Joyeux define the plain attribute in enumerate_inherited_map<br/>
         
           e565b2b 5 months ago Sylvain Joyeux allow getting a type when instanciating a dynamic port<br/>
         
           fe7f954 5 months ago Sylvain Joyeux fix return value of #find_opaque_for_intermediate<br/>
         
           242854b 5 months ago Sylvain Joyeux fix typelist parsing<br/>
         
           7956801 5 months ago Sylvain Joyeux gen: add the list of task names a deployment includes in the deployment's pkg-config file<br/>
         
           c5f37a2 5 months ago Sylvain Joyeux spec: add some find_XXX_by_name methods to look for objects in deployments<br/>
         
           5c2decc 5 months ago Sylvain Joyeux raise a specific error when a required task library is not found<br/>
         
           e70c29c 6 months ago Sylvain Joyeux raise specific exceptions if the target of #import_types_from cannot be found<br/>
         
           c670241 6 months ago Thomas Roehr Enable setting of deployment specific RTT lock timeout for periodic and non period threads<br/>
         
           c62a883 7 months ago Sylvain Joyeux fix dynamic port handling w.r.t. subclassing<br/>
         
           89d0bd2 7 months ago Sylvain Joyeux allow using minispec and flexmock in the test suite<br/>
         
           fd60b0b 7 months ago Sylvain Joyeux documentation fixes<br/>
         
           1cfe9eb 7 months ago Sylvain Joyeux gen: remove unused attributes<br/>
         
           e8d1706 7 months ago Sylvain Joyeux spec: allow to give a task context as object in Deployment#task<br/>
         
           381002f 7 months ago Sylvain Joyeux implement TaskContextGeneration#in_user_hook<br/>
         
           a94ffa3 7 months ago Matthias Goldhoorn Created master, slave activity modes from orogen side. 'slave' is not longer valid for an task context itself because it requires more information about the master process. So i moved the 'slave' statement to the deployment creation. Use instead 'slave', 'set_master_slave_activity(master,slave)' inside the deployment.<br/>
         
           c6fb967 7 months ago Sylvain Joyeux make Deployment#task raise ArgumentError, not ConfigError<br/>
         
           3fbdd6f 7 months ago Sylvain Joyeux update very outdated README<br/>
         
           6246e60 7 months ago Sylvain Joyeux rename README.txt into README.rd for yard to pick up<br/>
         
           7190cea 7 months ago Sylvain Joyeux split the deployment into a Spec:: and a Generation:: parts<br/>
         
           90feecf 7 months ago Sylvain Joyeux small documentation fixes<br/>
         
           34a05e2 7 months ago Sylvain Joyeux rake: fix the documentation target name<br/>
         
           9866479 7 months ago Matthias Goldhoorn TaskBase: the state port was created as an integer, not as the host_specific version (e.G. boost:in32_t this might result in some problems if the talking machines have an different lengh of int. This Commit should fix this and create the fixed int32 representation of task-states<br/>
         
           be3b7cc 7 months ago Sylvain Joyeux rake: use Utilrb.doc for documentation generation<br/>
         
           6508747 7 months ago Sylvain Joyeux spec: allow to give a block to eval in Spec::TaskContext.new<br/>
         
           c3325cf 7 months ago Sylvain Joyeux spec: get the model for RTT::TaskContext directly from toplevel<br/>
         
           c0a790e 7 months ago Sylvain Joyeux spec: simple component=&gt;project renaming<br/>
         
           4e4db91 7 months ago Sylvain Joyeux add ros_mappings to ImportedTypekit as well<br/>
         
           98b4aa2 7 months ago Sylvain Joyeux fix the 'ignore ros_mappings call if the ros plugin is not enabled' logic<br/>
         
           6df439d 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           4e38604 7 months ago Sylvain Joyeux ros: remove wrongly-committed require 'pry'<br/>
         
           8444549 7 months ago Sylvain Joyeux ros: in deployments, do not call ros::shutdown if the initialization failed<br/>
         
           d8090fa 7 months ago Sylvain Joyeux ros: properly add dependencies for messages that are listed in type mappings<br/>
         
           4cce7d1 7 months ago Sylvain Joyeux ros: remove debugging check<br/>
         
           afd5d35 7 months ago Sylvain Joyeux ros: use user_converted_types to list type mappings relevant for this typekit<br/>
         
           60a06ec 7 months ago Sylvain Joyeux ros: fix inclusion of ROSConvertions.hpp<br/>
         
           780f7c7 7 months ago Sylvain Joyeux ros: update templates w.r.t. change in namespace in the ROS transport<br/>
         
           b55e964 7 months ago Sylvain Joyeux ros: load ROS type mappings from imported typekits<br/>
         
           36abef5 7 months ago Sylvain Joyeux ros: implement using existing ROS messages as marshalling types for oroGen types<br/>
         
           c723358 7 months ago Sylvain Joyeux ros: no need to return boolean values from fromROS and toROS<br/>
         
           cf7d959 7 months ago Sylvain Joyeux typekit: define #find_plugin<br/>
         
           b4fd93b 7 months ago Sylvain Joyeux ros: add missing dependency on ROSCPP for deployments<br/>
         
           f515809 7 months ago Sylvain Joyeux typekit: pass the typekit object to plugins as an argument to #initialize<br/>
         
           24898b6 7 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           95d6f57 8 months ago Sylvain Joyeux ros: deployments with ROS require to link with roscpp<br/>
         
           5f966b5 8 months ago Sylvain Joyeux corba: properly sort the header and impl arrays to have a stable output<br/>
         
           ec248a8 8 months ago Sylvain Joyeux ros: fix convertion of arrays of enums<br/>
         
           5fb5fdd 8 months ago Sylvain Joyeux ros: generate messages only for our own types<br/>
         
           84ca8aa 8 months ago Sylvain Joyeux ros: install a cmake config file for the ROS messages to make genmsg happy<br/>
         
           7230360 8 months ago Sylvain Joyeux ros: properly sort arrays of types / strings to make sure that the output is stable<br/>
         
           9f31a33 8 months ago Sylvain Joyeux ros: remove debugging output<br/>
         
           fb8ab2e 8 months ago Sylvain Joyeux ros: implement ros-to/from-rock conversion<br/>
         
           906ce2f 8 months ago Sylvain Joyeux ros: fix dependency of implementation files on the gencpp-generated files<br/>
         
           0ff345d 8 months ago Sylvain Joyeux ros: add gen/cpp in front of the include path<br/>
         
           e79f549 8 months ago Sylvain Joyeux ros: fix message generation for unsigned integers<br/>
         
           202661e 8 months ago Sylvain Joyeux fix Typekit#m_type? for types that depend on m-types<br/>
         
           c8bc33b 8 months ago Sylvain Joyeux ros: fix basic type handling<br/>
         
           23c1a9e 8 months ago Sylvain Joyeux ros: fix deployments when using ros<br/>
         
           66608c8 8 months ago Sylvain Joyeux ros: properly link to our dependencies<br/>
         
           ce63722 8 months ago Sylvain Joyeux ros: fix multi-line split<br/>
         
           76e9715 8 months ago Sylvain Joyeux ros: add dependencies of transporters on the message generation<br/>
         
           3e992a7 8 months ago Sylvain Joyeux ros: fix package name of dependencies in the generate message calls<br/>
         
           e3d15cc 8 months ago Sylvain Joyeux ros: properly handle the case where no messages are generated<br/>
         
           e2bc529 8 months ago Sylvain Joyeux ros: rename ROSTransportPlugin to RosTransportPlugin to follow the convention that oroGen expects in deployments<br/>
         
           eaa0649 8 months ago Sylvain Joyeux ros: fix what should / should not be exported to ROS<br/>
         
           88f83ca 8 months ago Sylvain Joyeux ros: don't put any special handling for base::Time<br/>
         
           21a249d 8 months ago Sylvain Joyeux ros: generate the full ROS transport<br/>
         
           53c920d 8 months ago Sylvain Joyeux ros: make good use of CMAKE_PREFIX_PATH<br/>
         
           91ea353 8 months ago Sylvain Joyeux ros: don't generate messages for the m-types<br/>
         
           1e87a97 8 months ago Sylvain Joyeux ros: start a ROS transport<br/>
         
           8957b33 8 months ago Sylvain Joyeux remove the deployment from the generated orogen file, we don't need those anymore<br/>
         
           2d9fcd5 8 months ago Sylvain Joyeux gen: check for stray dots only if the project has a definition file<br/>
         
           6a55326 8 months ago Sylvain Joyeux spec: in merge_ports_from, provide more specific errors if the ports cannot be merged<br/>
         
           8192173 8 months ago Sylvain Joyeux spec: define #orocos_type_name on Port and ConfigurationObject<br/>
         
           4f625f4 9 months ago Peter Soetens typekit: no longer use ROS_ROOT to pull in ros cmake or code.<br/>
         
           4e94649 9 months ago Peter Soetens typelib transport: detect ROS in fuerte and in electric<br/>
         
           210fda4 9 months ago Sylvain Joyeux in #using_task_library, only assume that +name+ is an orogen file if it ends in .orogen<br/>
         
           58db5e8 9 months ago Sylvain Joyeux fix symlink creation for typegen<br/>
         
           492f8df 9 months ago Sylvain Joyeux gen: fix double-free at deinitialization time when rtt_scripting is disabled<br/>
         
           148a08a 9 months ago Sylvain Joyeux don't check for already registered types anymore<br/>
         
           09368bf 9 months ago Sylvain Joyeux remove the tools/service_discovery dependency for now<br/>
         
           cd111d5 9 months ago Sylvain Joyeux fix TypeInfo code generated for the non-RTT-scripting case<br/>
         
           260eaed 9 months ago Sylvain Joyeux test: fix test_cross_dependencies test w.r.t. the used_typekits calls<br/>
         
           7ec8581 9 months ago Sylvain Joyeux test: clear the pkgconfig cache on teardown<br/>
         
           d5bbacb 9 months ago Sylvain Joyeux test: fix exitstatus test in test_deployment/test_fd_driven_deployment<br/>
         
           da6022c 9 months ago Sylvain Joyeux test: fix implementation of Consumer in the fd_triggered project<br/>
         
           2cfb000 9 months ago Sylvain Joyeux fix required_activity :periodic, period<br/>
         
           8bdca7f 9 months ago Sylvain Joyeux test: fix linking the test application for generated corba typekits<br/>
         
           ed7ee0f 9 months ago Sylvain Joyeux test: #return_type now returns also a documentation string, update test<br/>
         
           8630507 9 months ago Sylvain Joyeux test: fix missing constructor for subclassed Consumer class in test_cross_dependencies<br/>
         
           2896f3d 9 months ago Sylvain Joyeux fix compilation of typegen-generated typekits<br/>
         
           2181e6d 9 months ago Sylvain Joyeux typekit: in tests, TypelibMarshallerBase.hpp is now part of rtt_typelib. Fix header path.<br/>
         
           87221a5 9 months ago Sylvain Joyeux test: mqueue requires the typelib transport to be registered first, fix tests<br/>
         
           6a407db 9 months ago Sylvain Joyeux test: small ruby 1.9 fix<br/>
         
           fa63fec 9 months ago Sylvain Joyeux typekit: in opaque handling, do not require a specific ordering of the typeinfo registration<br/>
         
           58e3e95 9 months ago Sylvain Joyeux typekit: boost::shared_ptr does not accept to be reset() by itself, so add an explicit check<br/>
         
           b247a35 9 months ago Sylvain Joyeux gen: fix cmake configuration for projects without orogen files<br/>
         
           cb45d01 9 months ago Sylvain Joyeux test: fix cross dependency test to include proper typekit dependencies<br/>
         
           ae477b4 9 months ago Sylvain Joyeux replace DataFlowTypeInfo (which was rock-specific) by the new split-up typeinfo API<br/>
         
           36d2aef 9 months ago Sylvain Joyeux service discovery in deployments is useless without CORBA<br/>
         
           3142da7 9 months ago Sylvain Joyeux fix MQueue transport generating empty dependencies<br/>
         
           358e782 9 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           d993069 9 months ago Sylvain Joyeux rtt-typelib got separated in the orocos toolchain, do the same here<br/>
         
           f803411 9 months ago Peter Soetens corba typekit: return result of addProtocol instead of true<br/>
         
           6c53121 9 months ago Peter Soetens typeinfo: use TypeInfoGenertor class instead of TypeInfo.<br/>
         
           f9e52c0 9 months ago Ruben Smits add missing libxslt, rake and ruby dep<br/>
         
           b8a7feb 9 months ago Janosch Machowinski fixed compile warning in template for generated deployments<br/>
         
           d801532 10 months ago Felix Rehrmann Throws an error when trying to do two multiple subclasses.<br/>
         
           f8bde66 1 year, 3 months ago Peter Soetens config: updated FindRTTPlugin for mixed-target building<br/>
         
           d7d9710 1 year, 8 months ago Sylvain Joyeux hoe is not needed anymore<br/>
         
           d323d9f 1 year, 9 months ago Sylvain Joyeux typegen: fix handling of the --output option<br/>
         
           1ff900c 2 years ago Peter Soetens make: update paths to smoothen transition to new stack layout<br/>
         
           b05c972 2 years ago Peter Soetens cmake: use OROCOS-RTT instead of Orocos-RTT in find_package<br/>
         
           4eb8565 2 years ago Peter Soetens typekit: link with rtt_typelib-TARGET<br/>
         
           4702456 2 years ago Peter Soetens Merge branch 'master' into toolchain-2.4<br/>
         
           ca874b4 2 years ago Peter Soetens Merge branch 'toolchain-2.4' of gitorious.org:orocos-toolchain/orogen into stable<br/>
         
           ff5985c 2 years ago Sylvain Joyeux it's either use :force or call rm_f. Remove the :force option<br/>
         
           cf6f488 2 years, 1 month ago Peter Soetens rtt-typelib: move out to a separate package<br/>
         
           d4df9f3 2 years, 2 months ago Peter Soetens Merge branch 'toolchain-2.3' into stable<br/>
         
           f760d73 2 years, 3 months ago Peter Soetens Merge branch 'toolchain-2.3' into stable<br/>
         
           9ba5a33 2 years, 4 months ago Peter Soetens Merge branch 'toolchain-2.3' into stable<br/>
         
           d8202cf 2 years, 5 months ago Peter Soetens Merge branch 'toolchain-2.2' into stable<br/>
         
           5d8a82f 2 years, 5 months ago Peter Soetens type_info: in case of /std/string: use StdStringTypeInfo<br/>
         
         </td></tr>
       







       <tr class="name" id="planning/corridor_navigation">
         <th>planning/corridor_navigation</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="41"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_41"><td>
         
           418c8fc 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="42"> 4 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_42"><td>
         
           94dec12 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           e2b48b4 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           126a351 7 months ago Sylvain Joyeux fix errors reported by recent versions of GCC<br/>
         
           724e0c2 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       





       <tr class="name" id="planning/nav_graph_search">
         <th>planning/nav_graph_search</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="43"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_43"><td>
         
           0bf7800 7 months ago Stefan Haase Just fixes a divide-by-zero exception which happens if an empty map is written to ppm.<br/>
         
           1b14cd4 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="planning/orogen/corridor_navigation">
         <th>planning/orogen/corridor_navigation</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="44"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_44"><td>
         
           6d7c8d8 7 months ago Sylvain Joyeux add missing std:: namespace<br/>
         </td></tr>
       













       <tr class="name" id="planning/vfh_star">
         <th>planning/vfh_star</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="45"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_45"><td>
         
           ab4d36a 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>


       <tr class="name" id="rtt">
         <th>rtt</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="47"> 94 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="from_commits" id="commits_47"><td>
         
           a415968 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           5497e62 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           007e05f 6 months ago Thomas Roehr Allow customization of lock timeout for periodic and non periodic threads<br/>
         
           7fd4f23 7 months ago Sylvain Joyeux Fixed cmake 2.8.9 bugg during include, Cmake only acceps true if find_package is used<br/>
         
           01845fc 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into orocos_master<br/>
         
           8aba856 8 months ago Peter Soetens types: fixup type comparisons by name in various places<br/>
         
           6e597a1 8 months ago Peter Soetens types: add a real-time variant of getMember.<br/>
         
           d03c86a 8 months ago Peter Soetens types: drastic performance cleanup of getMember<br/>
         
           cbedc2f 8 months ago Ruben Smits deployment: remove RTLD_GLOBAL to support overriding of ComponentTypes, fix for bug #1001<br/>
         
           fd0294f 8 months ago Peter Soetens Set version number to 2.6.0 to allow compile-time checks<br/>
         
           174194e 8 months ago Peter Soetens cmake: add roslib to the orocos-rtt rpath<br/>
         
           2e6ccef 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           2c846a3 9 months ago Peter Soetens deployment: don't throw on 'not found' errors.<br/>
         
           e0f3d8c 9 months ago Peter Soetens types: fixup bool pretty printing.<br/>
         
           c0e90a1 9 months ago Peter Soetens tests: fix copying files to CMAKE_CFG_INTDIR.<br/>
         
           5d2da72 9 months ago Peter Soetens plugins: fixup unit tests by removing static keyword<br/>
         
           bb36a8c 9 months ago Peter Soetens deployment: added ComponentLoader::addFactory() method<br/>
         
           a9c0425 9 months ago Peter Soetens deployment: moved the component loader and roslib support from ocl to rtt<br/>
         
           44cb654 9 months ago Peter Soetens types: added missing EmptyTypeInfo::getTypeInfoObject() method<br/>
         
           6043ae3 9 months ago Peter Soetens Task can't give name before initialisation.<br/>
         
           37843b9 9 months ago Peter Soetens useorocos: collect compiler and linker flags in orocos_use_package<br/>
         
           6141a07 9 months ago Peter Soetens types: fix mixed up ifdef guards and doc string.<br/>
         
           985a26f 9 months ago Peter Soetens Merge commit 'refs/merge-requests/15' of git://gitorious.org/orocos-toolchain/rtt<br/>
         
           60af466 9 months ago Matthias Goldhoorn Fixed cmake 2.8.9 bugg during include, Cmake only acceps true if find_package is used<br/>
         
           0a905f6 9 months ago Peter Soetens Add TaskContext factory for corba transport.<br/>
         
           ff92680 9 months ago Sylvain Joyeux extras: define ReadOnlyPointer&lt;T&gt;::get to return T const*, to have an interface compatible with boost::shared_ptr<br/>
         
           2f63e80 9 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           912dce9 9 months ago Sylvain Joyeux Revert "truncate duplicate protocol error to warning"<br/>
         
           3c74667 9 months ago Sylvain Joyeux Revert "types: add the DataFlowTypeInfo between the TemplateTypeInfo and PrimitiveTypeInfo"<br/>
         
           3e794fb 9 months ago Peter Soetens Merge branch 'toolchain-2.5'<br/>
         
           8667d06 9 months ago Peter Soetens dataflow: implement circular buffer connections.<br/>
         
           7b9671e 9 months ago Peter Soetens ports: applied fixup of signalling ports from Georg Bremer.<br/>
         
           a0e2b28 9 months ago Peter Soetens types: make TypeInfoRepository thread-safe<br/>
         
           1f9aaf2 9 months ago Peter Soetens extras: Use char instead of int for FileDescriptorActivity::CMD_xxx values.<br/>
         
           a0ef29a 9 months ago Peter Soetens typo fixed (OuputPort -&gt; OutputPort)<br/>
         
           9deb6a0 9 months ago Peter Soetens tests: fixup propertyloader unit tests due to API change.<br/>
         
           18f8c58 9 months ago Peter Soetens marsh: enable PropertyLoader to operate on services directly<br/>
         
           c98a571 9 months ago Peter Soetens rtt: delete target property on failure during property composition<br/>
         
           42395d1 9 months ago Peter Soetens Merge branch 'master-typeinfo-redux'<br/>
         
           4ee694c 9 months ago Peter Soetens types: memleak fix + log cleanups.<br/>
         
           4c9ac10 9 months ago Sylvain Joyeux truncate duplicate protocol error to warning<br/>
         
           ff7c031 12 months ago Peter Soetens master: fixup re-enable mech uploading.<br/>
         
           7f90a95 12 months ago Peter Soetens scripts: re-enable mech doc uploading.<br/>
         
           84ec0f0 12 months ago Peter Soetens useorocos: various fixes for ros environments<br/>
         
           a03ed29 12 months ago Peter Soetens useorocos: various fixes for ros environments<br/>
         
           57e8fd6 12 months ago Peter Soetens fixup struct type info<br/>
         
           c60ad3e 12 months ago Peter Soetens ports: move ConnFactory out of PortInterface<br/>
         
           54d7c5f 12 months ago Peter Soetens typeinfo: updated api docs and test bugfix.<br/>
         
           6e5ec14 12 months ago Peter Soetens types: persistent TypeInfo refactoring.<br/>
         
           1fb69a0 12 months ago Peter Soetens types: rename TypeBuilder to TypeConstructor.<br/>
         
           55addf0 12 months ago Peter Soetens Merge branch 'toolchain-2.5'<br/>
         
           ed0840b 1 year, 1 month ago Steven Bellens config: fix cmake logic for cmake 2.8.8<br/>
         
           1580e8e 1 year, 1 month ago Peter Soetens fixed: collecting status of async operation with 5 arguments<br/>
         
           64acd01 1 year, 1 month ago Peter Soetens internal: fix incomplete type error when compiling with clang<br/>
         
           17f94fd 1 year, 1 month ago Peter Soetens os: cleanup mk's patch for cap-ng.<br/>
         
           dc34359 1 year, 1 month ago Peter Soetens gnulinux capabilities(7) support<br/>
         
           6be3201 1 year, 1 month ago Peter Soetens fix bug #941: FindXenomaiPosix.cmake disregards XENOMAI_POSIX_ROOT_DIR env variable<br/>
         
           7674852 1 year, 2 months ago Peter Soetens mqueue: provide compatibility with boost 1.46 or newer<br/>
         
           6980356 1 year, 2 months ago Peter Soetens mqueue: fix serious bug where slow serialization was used on arrays.<br/>
         
           6826555 1 year, 2 months ago Peter Soetens doc: updated some doc images.<br/>
         
           486c320 1 year, 2 months ago Peter Soetens doc: update copyright statement.<br/>
         
           1c219a7 1 year, 2 months ago Peter Soetens doc: fixup figure display in pdf version.<br/>
         
           f65c087 1 year, 2 months ago Peter Soetens rtt_cheat_sheet: fix typo in addOperation for class member functions<br/>
         
           39286d9 1 year, 2 months ago Peter Soetens xenomai: minor affinity changes + code formatting<br/>
         
           ecb7e3c 1 year, 2 months ago Eli Reekmans fosi: don't set cpu affinity if 'all' is specified.<br/>
         
           81b3c54 1 year, 3 months ago Peter Soetens cmake: fix linking order of Xenomai libraries<br/>
         
           189ba33 1 year, 3 months ago Peter Soetens activity: initialize default thread with lowest priority instead of '0'<br/>
         
           bcb7ccc 1 year, 3 months ago Steven Bellens StructTypeInfo: commenting out debug output<br/>
         
           596ff8d 1 year, 4 months ago Steven Bellens types: fixing std::string syntax in EnumTypeInfo<br/>
         
           0e538ec 1 year, 4 months ago Peter Soetens exception : propagate exceptions thrown while calling an operation. exception : set the owner taskcontext or the engine executing the operation in the exception state corba : add the exception handling through the corba exception CCallError tests : add tests for exceptions handling<br/>
         
           12d0d38 1 year, 4 months ago Peter Soetens rtt : remove "using namespace std" from headers to avoid name clash while using third party libraries<br/>
         
           dff05ca 1 year, 4 months ago Peter Soetens scripting: fix parsing of alias values.<br/>
         
           ec68634 1 year, 5 months ago Peter Soetens taskcontext: add loadService operation to every TC.<br/>
         
           e29e476 1 year, 5 months ago Peter Soetens Merge branch 'toolchain-2.5'<br/>
         
           fd7b24f 1 year, 5 months ago Peter Soetens os: add support for PID/TID reporting of threads.<br/>
         
           4226139 1 year, 5 months ago Peter Soetens marsh: fixup marshalling/demarshalling of some primitives<br/>
         
           248b827 1 year, 5 months ago Peter Soetens properties: fix the introspection such that no properties are dropped<br/>
         
           a191e1f 1 year, 6 months ago Steven Bellens types: turn of debug info in StructTypeInfo<br/>
         
           ef829df 1 year, 6 months ago Peter Soetens doc: cleanup thread docs after comments on ml.<br/>
         
           e5affca 1 year, 6 months ago Peter Soetens cmake: only set OROCOS_SUFFIX if not defined<br/>
         
           b0f57d4 1 year, 7 months ago Peter Soetens base: fix documentation for TaskState enumerator<br/>
         
           68a9ba7 1 year, 7 months ago Peter Soetens EnumTypeInfo(string)<br/>
         
           753ab44 1 year, 7 months ago Peter Soetens cmake: fixup (again) install link creation for cmake 2.8.0<br/>
         
           78240e2 1 year, 7 months ago Peter Soetens cmake: work around faulty cmake symlink checks<br/>
         
           83a0e00 1 year, 7 months ago Peter Soetens doc: minor clarification on starting the deployer.<br/>
         
           966e0fa 1 year, 7 months ago Peter Soetens doc: clarification about use of import/load etc.<br/>
         
           e05bf32 1 year, 7 months ago Peter Soetens os:xenomai: patch for xenomai 2.6.0<br/>
         
           a5e1e5c 1 year, 7 months ago Peter Soetens Fix circular inclusion that prevent defining rt_mutex_t<br/>
         
           bf3a857 1 year, 8 months ago Peter Soetens scripting: fix keyword clashes with user identifiers.<br/>
         
           54ec22a 1 year, 8 months ago Peter Soetens types: even better checking of type_id functions.<br/>
         
           7805b4f 1 year, 8 months ago Eli Reekmans rtt: fix comparison of std::info_type if info_type pointer is null<br/>
         
           0f0ba95 1 year, 8 months ago Peter Soetens * rtt: do not compare std::type_info address<br/>
         
           5244754 1 year, 8 months ago Peter Soetens operations: check impl pointer before using it<br/>
         
           d6f1ef6 1 year, 8 months ago Peter Soetens service: refuse to add an operation without an implementation.<br/>
         
         </td></tr>
       
       
       











       <tr class="name" id="slam/envire">
         <th>slam/envire</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="46"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_46"><td>
         
           fc34324 4 months ago Jakob Schwendner fixed bug in mls cell list handling<br/>
         </td></tr>
       









       <tr class="name" id="slam/graph_slam">
         <th>slam/graph_slam</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="47"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_47"><td>
         
           68c34f9 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       





       <tr class="name" id="slam/odometry">
         <th>slam/odometry</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="48"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_48"><td>
         
           331f79b 6 months ago Jakob Schwendner moved visualization for BodyContactState from eslam<br/>
         
           24582cc 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       







       <tr class="name" id="slam/orogen/graph_slam">
         <th>slam/orogen/graph_slam</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="49"> 3 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_49"><td>
         
           96d6f08 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           2259351 7 months ago Sylvain Joyeux remove unused dependency on PCL<br/>
         
           b3c1a49 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="slam/orogen/odometry">
         <th>slam/orogen/odometry</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="50"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_50"><td>
         
           44d28a9 7 months ago Sylvain Joyeux Merge branch 'next'<br/>
         
           f2f8818 8 months ago Sylvain Joyeux add missing dependencies<br/>
         </td></tr>
       













       <tr class="name" id="slam/pose_ekf">
         <th>slam/pose_ekf</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="51"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_51"><td>
         
           d545c14 8 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         </td></tr>
       



       <tr class="name" id="slam/quater_ikf">
         <th>slam/quater_ikf</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="52"> 9 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_52"><td>
         
           c600941 3 days ago Thomas Roehr Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           5338b7a 4 months ago DAGON PC 1 commented out debug output<br/>
         
           f70f2a3 4 months ago Javier Hidalgo Carrio Merge branch 'next' of git://gitorious.org/rock-slam/quater_ikf into next<br/>
         
           c3df5f3 1 year, 2 months ago Sylvain Joyeux add API documentation generation<br/>
         
           a2db97e 1 year, 3 months ago Javier Hidalgo Carrio setState() method created to the class<br/>
         
           9c936d2 1 year, 3 months ago Javier Hidalgo Carrio doc/truth_vs_ikf.pdf added from a simulated IMU value with truth attitude to compare the result<br/>
         
           6ed986a 1 year, 3 months ago Javier Hidalgo Carrio new defined in the STATEVECTORSIZE in order to avoid conflict with the defines in the UKF. Also included the bool flag to turn on/off the magnetometers correction dynamically<br/>
         
           04e3349 1 year, 3 months ago Javier Hidalgo Carrio ikf.cpp: removed the print in getEuler()<br/>
         
           1b1e550 1 year, 3 months ago Javier Hidalgo Carrio GravityModel, SubstractEarthRotation and MagneticDeclination functions removed from the ikf lib and moved to the orogen component (orientation estimator)<br/>
         </td></tr>
       


       <tr class="name" id="slam/quater_ukf">
         <th>slam/quater_ukf</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="53"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_53"><td>
         
           83698b9 5 months ago Sylvain Joyeux Revert "make it compiling on next"<br/>
         </td></tr>
       







       <tr class="name" id="tools/log_tools">
         <th>tools/log_tools</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="54"> 1 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_54"><td>
         
           cafa8b1 8 months ago Alexander Duda fix rock-export help<br/>
         </td></tr>

       <tr class="name" id="tools/logger">
         <th>tools/logger</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="57"> 2 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="from_commits" id="commits_57"><td>
         
           a86b2f1 7 months ago Jakob Schwendner add the option to specify a timestamp field in the type when logging a port<br/>
         
           b74fb68 7 months ago Sylvain Joyeux rtt-typelib pkg-config's file has been renamed by the orocos guys, update<br/>
         
         </td></tr>



       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="55"> 156 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_55"><td>
         
           6e72875 8 weeks ago Sylvain Joyeux fix memory leak in LocalInputPort#write<br/>
         
           3f5a5f3 4 months ago Sylvain Joyeux fix dependency specification in composition instantiation<br/>
         
           3a7ebb9 4 months ago Matthias Goldhoorn update forwarded arguments from rock-roby to roby itself<br/>
         
           b10b72a 4 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           4133feb 5 months ago Sylvain Joyeux don't set a model name to some magic value. Just set it to empty<br/>
         
           62d1db9 5 months ago Matthias Goldhoorn gui: be robust to models with nil name<br/>
         
           0f42a0f 5 months ago Matthias Goldhoorn better error message when a wrong name is given<br/>
         
           c0c24ed 5 months ago Matthias Goldhoorn fix dependency option validation<br/>
         
           bcb1d28 5 months ago Sylvain Joyeux roby: fix error message<br/>
         
           eb70403 5 months ago Sylvain Joyeux re-add the #disconnect methods to InputWriter and OutputReader<br/>
         
           edcddd1 5 months ago Sylvain Joyeux make TaskConfiguration#apply silently return if no configurations exist and the required configurations are empty<br/>
         
           d34a193 5 months ago Sylvain Joyeux in Orocos.clear, don't dispose of the ruby task if it is not yet set<br/>
         
           1d045ac 5 months ago Felix Rehrmann in log_metadata set the model name to "no_model" if task.model is nil<br/>
         
           8394e95 5 months ago Felix Rehrmann roby: fix error message<br/>
         
           283ae02 5 months ago Felix Rehrmann re-add the #disconnect methods to InputWriter and OutputReader<br/>
         
           342d7dd 5 months ago Sylvain Joyeux app: require_models and require_planners are now split in roby<br/>
         
           f752251 5 months ago Sylvain Joyeux fix InstanceRequirements#fullfilled_model<br/>
         
           2c7b59f 5 months ago Sylvain Joyeux make TaskConfiguration#apply silently return if no configurations exist and the required configurations are empty<br/>
         
           7d1a6b4 5 months ago Sylvain Joyeux in Orocos.clear, don't dispose of the ruby task if it is not yet set<br/>
         
           99c12b1 5 months ago Sylvain Joyeux roby: fixes w.r.t. changes in Roby<br/>
         
           074e450 6 months ago Sylvain Joyeux return an empty hash instead of nil in ProcessClient#wait_termination when there are no dead processes<br/>
         
           c9ada3b 6 months ago Sylvain Joyeux In ProcessClient, raise Orocos::ComError if the connection gets broken<br/>
         
           4bd31a2 6 months ago Alexander Duda async: add support for on_port_reachable, on_property_reachable<br/>
         
           7ccf3a7 7 months ago Sylvain Joyeux test: verifies that TaskContext#initialize can find the task's process if it is known<br/>
         
           d15a8de 7 months ago Sylvain Joyeux Orocos::Spec::TaskContext#initialize already instance_eval's a given block<br/>
         
           7bbe3a3 7 months ago Sylvain Joyeux in MQ handling, be robust to having no process at all<br/>
         
           16bb266 7 months ago Sylvain Joyeux allow to setup a local ruby task context directly from an oroGen model<br/>
         
           757459f 7 months ago Sylvain Joyeux fix PortsSearchable#find_all_ports<br/>
         
           0b44e05 7 months ago Alexander Duda bugfix ruby_task: do_remove_port was called on the wrong object<br/>
         
           199889c 7 months ago Alexander Duda asyc: add support for sub ports<br/>
         
           3194b17 7 months ago Alexander Duda async: add more unit tests<br/>
         
           b8aead6 7 months ago Alexander Duda async: add accessor for polling period, check for input output port<br/>
         
           5b43a29 7 months ago Alexander Duda log::replay: reset time sync when replayed<br/>
         
           7a52b68 7 months ago Alexander Duda Async: fix some issues related to unreachable tasks during init<br/>
         
           fe32d25 7 months ago Alexander Duda Async: add support for ports<br/>
         
           6b3328c 7 months ago Sylvain Joyeux in RubyTaskContext#remove_port, the port argument must be a LocalPort. Remove dead code.<br/>
         
           1655cf8 7 months ago Sylvain Joyeux documentation<br/>
         
           8c7a79b 7 months ago Sylvain Joyeux implement property handling on ruby tasks<br/>
         
           073ca53 7 months ago Sylvain Joyeux roby: properly set up the scheduler to Temporal in rock-roby run -c as well<br/>
         
           b2afa96 7 months ago Sylvain Joyeux roby: implement a generic way to synchronize configuration on other events<br/>
         
           af26e33 7 months ago Thomas Roehr Fix using disconnect_all instead of disconnect<br/>
         
           1b26b0f 7 months ago Jakob Schwendner nameservice: task lookup in get return first element found instead of throwing when there are multiple tasks available<br/>
         
           21e765e 7 months ago Jakob Schwendner log: store reference to local nameservice for logs, and add method to deregister<br/>
         
           1452274 7 months ago Jakob Schwendner nameservice: added method to remove nameservice from list<br/>
         
           d11b443 7 months ago Jakob Schwendner replay: added ability to pass options to load method<br/>
         
           adb427a 7 months ago Alexander Duda add Asyn::TaskContextProxy and Async::NameService<br/>
         
           1bf2429 7 months ago Jakob Schwendner fixed syntax error in name_service<br/>
         
           86081b2 7 months ago Alexander Duda bugfix: add basic root namespace support for log tasks.<br/>
         
           7054d44 7 months ago Marc Hildebrandt do NOT load async by default<br/>
         
           cac1fea 7 months ago Jakob Schwendner removed debug output<br/>
         
           83c90c0 7 months ago Jakob Schwendner added argument to stop() method of Logger::Task, to be compatible with the orocos task definition<br/>
         
           4c29066 7 months ago Jakob Schwendner optionally add timestamp_field information to port metadata<br/>
         
           a585c0c 7 months ago Sylvain Joyeux doc: rename README.txt into README.rdoc to get proper formatting from yard<br/>
         
           6f09f8a 7 months ago Sylvain Joyeux small documentation fixes<br/>
         
           8368ea2 7 months ago Alexander Duda add namespaces to log tasks<br/>
         
           27a30fa 7 months ago Alexander Duda add TaskContext.basename<br/>
         
           eb051e8 7 months ago Sylvain Joyeux add missing header for va_* functions<br/>
         
           375e645 7 months ago Alexander Duda add Async::TaskContext<br/>
         
           58c4eed 7 months ago Alexander Duda add GIL awareness to all CORBA calls made by the c++ extension<br/>
         
           9456b02 7 months ago Alexander Duda GIL: use templates to hide complexity<br/>
         
           4f26bf8 7 months ago Sylvain Joyeux add missing std::<br/>
         
           76bfd8f 7 months ago Sylvain Joyeux rtt-typelib has moved and changed pc filename, fix extension compilation<br/>
         
           85a49de 7 months ago Sylvain Joyeux test: in CORBA nameservice test, restore the ns IP to its original value in teardown<br/>
         
           5d57336 7 months ago Sylvain Joyeux test: when testing name services, give FQDN for hosts<br/>
         
           d33d838 7 months ago Sylvain Joyeux test: call Orocos.clear in each test's teardown<br/>
         
           5db6ead 7 months ago Sylvain Joyeux TEMP: ruby task<br/>
         
           5269a39 7 months ago Sylvain Joyeux test: no need to set Orocos.registry to nil explicitly, Orocos.clear does it already<br/>
         
           83263b4 7 months ago Sylvain Joyeux bin: remove usage of deprecated Orocos.task_names in orops<br/>
         
           826c64c 7 months ago Sylvain Joyeux test: move the ability to create ruby task contexts in the common test module<br/>
         
           d2e632d 7 months ago Sylvain Joyeux ros: misc fixes to the API to match the normal task context API<br/>
         
           f1c2c05 7 months ago Sylvain Joyeux ros: automatic integration of ROS in the orocos.rb workflow<br/>
         
           e7af0a2 7 months ago Sylvain Joyeux ros: don't register the local ruby process as an anonymous node<br/>
         
           4c1196a 7 months ago Sylvain Joyeux define Orocos::ComError and make it a base class of both Orocos::CORBAError and Orocos::ROS::ComError<br/>
         
           9d84fd5 7 months ago Sylvain Joyeux first step towards a full ROS integration<br/>
         
           c925514 7 months ago Sylvain Joyeux allow to run tests without a working directory<br/>
         
           ec213b2 7 months ago Sylvain Joyeux implement RubyTaskContext, a generic way to create RTT interfaces in a Ruby process<br/>
         
           d756474 7 months ago Thomas Roehr Fix deprecated setting of nameservice<br/>
         
           0ac6ccb 7 months ago Thomas Roehr ruby_ext: disable setting of linkerflag '-z noexecstack' on ARM<br/>
         
           4601882 7 months ago Alexander Duda fix issue related to Nameservice.enable<br/>
         
           a57a13c 8 months ago Alexander Duda CORBA init: fix issue related to setting the ORBInitRef<br/>
         
           6d3ba87 8 months ago Alexander Duda Revert "raise if Orocsos is not initialized and load_typekit_registry is called"<br/>
         
           9c658b4 8 months ago Sylvain Joyeux fix security warning in handling of printf-format in rb_raise<br/>
         
           1095953 8 months ago Sylvain Joyeux use RbConfig instead of Config in CMake code<br/>
         
           0c8bd2a 8 months ago Sylvain Joyeux fix mismatch between printf code and actual value<br/>
         
           5e7f7cc 8 months ago Sylvain Joyeux integration of the ROS transport<br/>
         
           ac466ab 8 months ago Sylvain Joyeux move some methods in Port that were private but should not have been<br/>
         
           2f3523a 8 months ago Sylvain Joyeux handle createStream / removeStream<br/>
         
           473eb70 8 months ago Alexander Duda rake: doc:reapi is now automatically generated by utilrb.doc<br/>
         
           3a11bd9 8 months ago Alexander Duda Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb<br/>
         
           754587c 8 months ago Sylvain Joyeux roby: use from_ruby/to_ruby in system_model<br/>
         
           339332a 8 months ago Sylvain Joyeux roby: add an empty NetworkMergeSolver so that #replacement_for works<br/>
         
           d251eb4 8 months ago Alexander Duda Merge branch 'async'<br/>
         
           154b718 8 months ago Alexander Duda auto select tool for API doc generation<br/>
         
           a66cda0 8 months ago Alexander Duda re-factoring of Nameservice and Orocos::TaskContext<br/>
         
           e51bed9 8 months ago Matthias Goldhoorn roby: don't fail cleanup if multiple deployments with the same name exist<br/>
         
           51236aa 8 months ago Sylvain Joyeux first step towards having orocos.rb working on tasks without models (or with missing models)<br/>
         
           dd79a0c 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/state_rework'<br/>
         
           fccb7a3 8 months ago Christian Rauch small fixes for ruby 1.8<br/>
         
           a7b2ac2 8 months ago Sylvain Joyeux roby: workaround the recurrent issues with Qt::Variant.from_value in qtruby<br/>
         
           2a96628 8 months ago Sylvain Joyeux roby: fix Component#method_missing to always return a Port object for ports<br/>
         
           3026973 8 months ago Sylvain Joyeux roby: Component#input_port / #output_port now raises Orocos::NotFound, update tests<br/>
         
           c4b5c53 8 months ago Sylvain Joyeux roby: remove debug output<br/>
         
           af9ba78 8 months ago Sylvain Joyeux roby: ComponentModel.#{port_name}_port is the preferred syntax now<br/>
         
           34d0194 8 months ago Sylvain Joyeux roby: in deployment finalization, only remove dependency relations from finished proxies<br/>
         
           047a278 8 months ago Sylvain Joyeux roby: add tests to Engine<br/>
         
           743eafc 8 months ago Sylvain Joyeux roby: improve debug message<br/>
         
           02f16c4 8 months ago Sylvain Joyeux roby: fix logging for base types<br/>
         
           a13678f 8 months ago Sylvain Joyeux roby: move the debug output in DataFlowDynamics to DataFlowDynamics.logger instead of Engine.logger<br/>
         
           eb8e250 8 months ago Sylvain Joyeux roby: in DataSource#resolve, do not forcefully add the task as permanent<br/>
         
           808f8b0 8 months ago Sylvain Joyeux roby: rename DataSource#bind to DataSource#resolve<br/>
         
           3547552 8 months ago Sylvain Joyeux roby: in DataSource, save the task on which this data source is based<br/>
         
           23bef02 8 months ago Alexander Duda corba: do not overwrite timeouts during initializing<br/>
         
           cd85fda 8 months ago Sylvain Joyeux roby,test: allow to give a name to mock deployments<br/>
         
           ce28bdb 8 months ago Sylvain Joyeux roby: move the core of NetworkMergeSolver#simple_merge_mappings into a separate can_merge? method<br/>
         
           f120bef 8 months ago Alexander Duda raise if Orocsos is not initialized and load_typekit_registry is called<br/>
         
           dafd18e 8 months ago Sylvain Joyeux roby: in the find_*_port and *_port methods, raise Orocos::NotFound to be consistent with the orocos.rb API<br/>
         
           3d3501c 8 months ago Sylvain Joyeux roby: the logger task sets itself up on start, not configure<br/>
         
           12cb51a 8 months ago Sylvain Joyeux roby: define #resolve_component_definition to get an InstanceRequirement from a requirement, name or model<br/>
         
           c51e410 8 months ago Sylvain Joyeux make sure that whenever an orocos engine is instanciated, it can be accessed as #orocos_engine from its underlying plan<br/>
         
           a261055 8 months ago Sylvain Joyeux roby: kind-of streamline the method_missing on various component representation objects<br/>
         
           7162b5f 8 months ago Sylvain Joyeux roby: define ComponentModel::Port<br/>
         
           2c75626 8 months ago Sylvain Joyeux roby: make select_service accept both a service name and a service type<br/>
         
           f56ef08 8 months ago Sylvain Joyeux roby: define ComponentModel.select_service to match InstanceRequirements.select_service<br/>
         
           6bfdfff 8 months ago Sylvain Joyeux roby: add an info message when oroGen projects got loaded<br/>
         
           b19a6f9 8 months ago Sylvain Joyeux roby: fix creation and test of OutputDataSource<br/>
         
           728fc36 8 months ago Sylvain Joyeux roby: small fix for #add_instance<br/>
         
           5bb930c 8 months ago Sylvain Joyeux roby: add a test for the mocking facility<br/>
         
           25d800b 8 months ago Sylvain Joyeux roby: allow to refer to the children of an InstanceRequirement through method missing<br/>
         
           b7e0cbf 8 months ago Sylvain Joyeux roby: in InstanceRequirements.method_missing, add the list of known services if a service cannot be found<br/>
         
           908e400 8 months ago Sylvain Joyeux roby: in InstanceRequirements.method_missing, allow accessing services on any component, not only task contexts<br/>
         
           1f35b29 8 months ago Sylvain Joyeux make CompositionModel.role_child return the child for role 'role' for consistency<br/>
         
           0b32671 8 months ago Sylvain Joyeux roby: make CompositionChildOutputPort a proper data source, and allow to bind it to an engine<br/>
         
           c5e3f22 8 months ago Sylvain Joyeux roby: the ExtendedStruct module has become a Roby::OpenStruct class, update Configuration<br/>
         
           513a2d1 8 months ago Sylvain Joyeux fix: Orocos.clear might be called even if the registry has not been created yet<br/>
         
           2b7fa23 9 months ago Sylvain Joyeux roby: small typo in error message<br/>
         
           1ad621b 9 months ago Sylvain Joyeux roby: remove the initialization of Roby::State.orocos<br/>
         
           7efa961 9 months ago Sylvain Joyeux roby: remove the (heavily broken) state-copy implementation<br/>
         
           5453e73 9 months ago Sylvain Joyeux roby: allow calling Engine#add_instance with no context at all<br/>
         
           0384e85 9 months ago Sylvain Joyeux roby: move the creation of @main_selection into its own method<br/>
         
           c0e1331 9 months ago Sylvain Joyeux roby: make #find_output_port and #find_input_port use duck-typing to decide whether the port is an in/out port<br/>
         
           a9edaa3 9 months ago Sylvain Joyeux roby,test: in test_composition, move some of the model-building in #setup<br/>
         
           d93569b 9 months ago Sylvain Joyeux roby,test: define instanciate_component<br/>
         
           2abce77 9 months ago Sylvain Joyeux roby,test: fixes to the mocking helpers<br/>
         
           fc4dcb7 9 months ago Sylvain Joyeux test: make the task context mocks more complete<br/>
         
           83e9a55 9 months ago Sylvain Joyeux roby: add tests for TaskContext#find_(input|output)_port and TaskContext#(input|output)_port<br/>
         
           10a83f9 9 months ago Sylvain Joyeux roby: add test for Component#data_reader and Component#data_writer<br/>
         
           7dd25f6 9 months ago Sylvain Joyeux app: adapt to the new state implementation in Roby<br/>
         
           b3932f4 9 months ago Sylvain Joyeux roby,test: fix deployment mock creation as Orogen's Deployment#initialize now requires two arguments<br/>
         
           c0de49a 9 months ago Sylvain Joyeux roby: fix that #name on exported ports reported by #each_exported_* have the name of the original port, not of the export<br/>
         
           115d627 9 months ago Sylvain Joyeux roby: fix wrong reference to DATA_SERVICE_ARGUMENTS<br/>
         
           f31e6f2 9 months ago Sylvain Joyeux roby: use the new promotion mechanism for inherited_enumerable to apply port mappings to connections and exports<br/>
         
           a88778d 9 months ago Sylvain Joyeux roby: create CompositionChild#find_port<br/>
         
           b54be7a 9 months ago Sylvain Joyeux test,roby: start unit-testing composition management<br/>
         
           8d502d7 9 months ago Sylvain Joyeux test: fix integration with Roby self-test code<br/>
         
           9b12db6 9 months ago Sylvain Joyeux test: mark the mocked roby component models as terminating<br/>
         
           5038f6b 9 months ago Sylvain Joyeux roby: write a proper test suite<br/>
         </td></tr>
       





       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="56"> 4 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_56"><td>
         
           1215c8d 7 months ago Jakob Schwendner fix return value for loading of index files.<br/>
         
           cf531ee 7 months ago Jakob Schwendner use Logging class instead of directly printing<br/>
         
           58b19c1 7 months ago Jakob Schwendner fixed indexing for multifile logs<br/>
         
           2809919 7 months ago Sylvain Joyeux add a sanity check in DataReader#seek<br/>
         </td></tr>
       







       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="57"> 202 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_57"><td>
         
           bebe868 3 months ago jhidalgocarrio avoid name clashes when defining methods on the planner objects<br/>
         
           76a74aa 4 months ago Matthias Goldhoorn app: fix option handling in scripts/run<br/>
         
           f5269e5 4 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           e71264c 5 months ago Sylvain Joyeux Merge branch 'master' of 10.250.3.112:/opt/rock/tools/roby<br/>
         
           645fb72 5 months ago sempromuser change the usage of roby run<br/>
         
           12975eb 5 months ago sempromuser app: re-add app_dir/lib to the load path<br/>
         
           484fa2a 5 months ago sempromuser actions: when proxying the action interface models, make sure that the local resolved constant is actually an action interface model<br/>
         
           ebf3797 5 months ago sempromuser actions: normalize argument names to strings<br/>
         
           5620d06 5 months ago Sylvain Joyeux scripts: fix syntax error in roby-display<br/>
         
           b4e596b 5 months ago Sylvain Joyeux app: fix issues in tools when app_dir is nil<br/>
         
           21029df 5 months ago Sylvain Joyeux scripts: set app_dir to Dir.pwd in the run script<br/>
         
           c1f2f44 5 months ago Sylvain Joyeux droby: properly handle anonymous models for which #name returns something<br/>
         
           ada1db9 5 months ago Sylvain Joyeux fix default Rakefile<br/>
         
           5da912d 5 months ago Sylvain Joyeux scripts: display a message in run if no controller file can be found<br/>
         
           92b8c31 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/syskit'<br/>
         
           f65e464 5 months ago Sylvain Joyeux test: small fix in action w.r.t. the automatic generation of a default task model<br/>
         
           23ad9a5 5 months ago Sylvain Joyeux add custom droby to marshal/demarshal TaskArguments<br/>
         
           58a23c5 5 months ago Sylvain Joyeux shell: fix #kill_job for tasks that are not yet running<br/>
         
           804708f 5 months ago Sylvain Joyeux action: rebind all state machine actions to the actual interface model used<br/>
         
           807ebed 5 months ago Sylvain Joyeux test: unused action descriptions don't generate an error anymore<br/>
         
           99cd677 5 months ago Sylvain Joyeux test: fix assert_event_emission without an execution engine running<br/>
         
           79e44e2 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           5dfbbff 5 months ago Sylvain Joyeux actions: auto-define a root task model for actions that don't have one given explicitly<br/>
         
           bac4e1c 5 months ago Sylvain Joyeux actions: define #to_s on some of the state machine objects<br/>
         
           c4234c0 5 months ago Sylvain Joyeux actions: fix error message<br/>
         
           e5d76ee 5 months ago Sylvain Joyeux actions: define Interface#model<br/>
         
           04c40af 5 months ago Sylvain Joyeux actions: make not using a description a warning instead of an error<br/>
         
           88600a6 5 months ago Sylvain Joyeux actions: define loggers on Actions and Actions::Interface<br/>
         
           4544015 5 months ago Sylvain Joyeux droby: fix name-setting on anonymous task model tags<br/>
         
           3c23e5a 5 months ago Sylvain Joyeux shell: make the usage of DRoby the norm to pass objects back and forth in the shell<br/>
         
           74c91c9 5 months ago Sylvain Joyeux droby: in DRobyConstant#droby_dump, fix usage of #constant on ruby 1.9<br/>
         
           cb8b7a6 5 months ago Sylvain Joyeux droby: make TaskModelTag's droby support aware of subclasses of TaskModelTag<br/>
         
           e4f7f3d 5 months ago Sylvain Joyeux actions: set :remove_when_done to false for states.<br/>
         
           6a52a6a 5 months ago Sylvain Joyeux actions: fix call to #instanciate_state_transition in StateMachine<br/>
         
           c9759c2 5 months ago Sylvain Joyeux actions: in StateMachine, normalize all arguments as symbols<br/>
         
           5a76add 5 months ago Sylvain Joyeux actions: make ActionModel and Interface models droby-marshallable<br/>
         
           a4421f5 5 months ago Sylvain Joyeux fix Robot.prepare_action to pass the arguments to the action<br/>
         
           1ca3052 5 months ago Sylvain Joyeux actions: action models must always refer to the interface model they have been discovered through<br/>
         
           16df9fd 5 months ago Sylvain Joyeux actions: add pretty-printing to ActionModel<br/>
         
           37a85e9 5 months ago Sylvain Joyeux allow defining action state machines on task instances in an action interface<br/>
         
           8d07fed 5 months ago Sylvain Joyeux test: document Roby::Test and Roby::SelfTest, fix using Roby::Test by itself<br/>
         
           7268893 5 months ago Sylvain Joyeux test: add small test<br/>
         
           e2017bd 5 months ago Sylvain Joyeux actions: support passing arguments to the state machines<br/>
         
           a66526c 5 months ago Sylvain Joyeux actions: fix #find_all_actions_by_type<br/>
         
           75bc2a4 5 months ago Sylvain Joyeux actions: accept both strings and symbols in find_action_by_name<br/>
         
           61c644c 5 months ago Sylvain Joyeux actions: validate the number of arguments the method defining an action supports<br/>
         
           1c06763 5 months ago Sylvain Joyeux test: add some<br/>
         
           79d2551 5 months ago Sylvain Joyeux test: load pry if present<br/>
         
           e841df8 5 months ago Sylvain Joyeux planner: fix methods described with #describe having a nil name<br/>
         
           27c486f 5 months ago Sylvain Joyeux shell: change how RemoteInterface displays thing<br/>
         
           946713a 5 months ago Sylvain Joyeux actions: define Interface#use_library<br/>
         
           f713f1c 5 months ago Sylvain Joyeux actions: make #each_action only enumerate the action objects<br/>
         
           3162cfd 5 months ago Sylvain Joyeux app: roby.yml is deprecated, remove from app template<br/>
         
           635cbcb 5 months ago Sylvain Joyeux app: accept to override the search path in find_dirs and find_files_in_dirs<br/>
         
           2adb1af 5 months ago Sylvain Joyeux test: raise the original teardown failure if both the teardown and the ensure block failed<br/>
         
           9efb52b 5 months ago Sylvain Joyeux task: define #pretty_print on TaskArguments<br/>
         
           d8b444b 5 months ago Sylvain Joyeux test: make assert_event_emission work even without a running execution engine<br/>
         
           2d2e819 5 months ago Sylvain Joyeux TEMP: clear_mdoels<br/>
         
           c30fecf 5 months ago Sylvain Joyeux better debug message<br/>
         
           e63fcaf 5 months ago Sylvain Joyeux app: make #clear_models be more extensive in its cleanup<br/>
         
           3f2740d 5 months ago Sylvain Joyeux app: fix #model_defined_in_app? to return false if no matches are found<br/>
         
           be3bd44 5 months ago Felix Rehrmann planner: do not allow defining a planning method with the same name than an existing normal method<br/>
         
           c626b3b 5 months ago Sylvain Joyeux app: register ignored exceptions in the application object<br/>
         
           a857731 5 months ago Sylvain Joyeux actions: add a way to get all defined action libraries through normal model-registration methods<br/>
         
           71942c5 5 months ago Sylvain Joyeux app: remove debug code<br/>
         
           50511df 5 months ago Sylvain Joyeux app: fix behaviour for roby's self tests<br/>
         
           adfd0e8 5 months ago Sylvain Joyeux core: utilrb's #supermodel is fine for Roby::Task, remove overloaded version<br/>
         
           6792049 5 months ago Sylvain Joyeux core: improve #to_s for delayed arguments<br/>
         
           b838b10 5 months ago Sylvain Joyeux TEMP: display backtrace<br/>
         
           71f009c 5 months ago Sylvain Joyeux app: clear submodels of Actions::Interface in clear_models<br/>
         
           4fef502 5 months ago Sylvain Joyeux app: call the require_models hook before require_planners and add a require_planners hook<br/>
         
           598d5bb 5 months ago Sylvain Joyeux app: optionally display backtrace when ignore_all_load_errors is set<br/>
         
           f1b9d3d 5 months ago Sylvain Joyeux actions: use Utilrb::Models::Registration to track interface models<br/>
         
           e6dd11b 5 months ago Sylvain Joyeux define #clear_model on action interfaces as well<br/>
         
           92ca7b8 5 months ago Sylvain Joyeux app: add the ignore_all_load_errors flag for model-browsing interfaces<br/>
         
           02eccc5 5 months ago Sylvain Joyeux initial support for supporting reloading models without restarting the Roby app<br/>
         
           4b3b090 5 months ago Sylvain Joyeux define Module#action_library<br/>
         
           e830e37 5 months ago Sylvain Joyeux test: add a test to check that setting terminal to true makes an event terminal even if it is not forwarded to stop<br/>
         
           bcf363d 5 months ago Sylvain Joyeux actions: define Action#instanciate as a shortcut to getting the model and instanciating it<br/>
         
           9d81d46 5 months ago Sylvain Joyeux actions,planning: factor out the generation of action/planning plan patterns in single places<br/>
         
           6a3731e 5 months ago Sylvain Joyeux core: fix typo in error message<br/>
         
           9fdb384 5 months ago Sylvain Joyeux test,core: fix task_statemachine<br/>
         
           a5a5c85 5 months ago Sylvain Joyeux core: do not load state_machine but state_machine/machine<br/>
         
           cbce9ed 5 months ago Sylvain Joyeux core: apply the task state machine extensions only on Roby::Task<br/>
         
           c5de262 5 months ago Sylvain Joyeux actions: implement the action-level state machine<br/>
         
           79c14fc 5 months ago Sylvain Joyeux actions: test and fix Actions::Task<br/>
         
           10b850b 5 months ago Sylvain Joyeux load actions in roby.rb<br/>
         
           5c9813a 5 months ago Sylvain Joyeux actions: fix InterfaceModel#method_missing<br/>
         
           3d07dc9 5 months ago Sylvain Joyeux core: verify that running? returns true in poll blocks<br/>
         
           209469e 5 months ago Sylvain Joyeux actions: allow to get an Action object from InterfaceModel through method_missing<br/>
         
           9d88773 5 months ago Sylvain Joyeux actions: define Action as an ActionModel bound to arguments<br/>
         
           d1441b5 5 months ago Sylvain Joyeux actions: define the action interface, a very stripped down version of the planners<br/>
         
           902df50 5 months ago Sylvain Joyeux core: remove second boolean argument to #child_from_role<br/>
         
           6c48a84 6 months ago Sylvain Joyeux roby/singletons needs Roby::StateModel, fix require ordering<br/>
         
           846bc7a 6 months ago Sylvain Joyeux promote error messages from poll blocks to warnings<br/>
         
           f35d7a0 6 months ago Sylvain Joyeux always call the poll block once, even if :stop is emitted just after :start<br/>
         
           f884eb5 6 months ago Sylvain Joyeux define #to_s on PollBlockDefinition<br/>
         
           a6c8aeb 6 months ago Sylvain Joyeux core: define Plan#find_plan_difference to implement #same_plan?<br/>
         
           c52ab7b 6 months ago Sylvain Joyeux test: start warning about failing to shutdown the plan at 100 instead of 1000<br/>
         
           52f7af5 6 months ago Sylvain Joyeux test: remove stray require 'pry' that got committed<br/>
         
           8436364 6 months ago Sylvain Joyeux disable the loop tests, nobody uses that facility anymore and it is shaky at best<br/>
         
           b6e458c 6 months ago Sylvain Joyeux core: #can_merge? does not have this crazy tri-state return value anymore, simplify<br/>
         
           3747787 6 months ago Sylvain Joyeux core: add the reusable predicate on Query<br/>
         
           86e48a6 6 months ago Sylvain Joyeux core: improve performance of #finishing on Query by using the fact that finishing tasks are running as well<br/>
         
           fb2e79b 6 months ago Sylvain Joyeux core: define #do_not_reuse to override the value of #reusable?<br/>
         
           a20cb74 6 months ago Sylvain Joyeux test: PlanService#kind_of? is now forwarded to the task, fix test<br/>
         
           feae6d3 6 months ago Sylvain Joyeux core: fix default model returned by #fullfilled_model<br/>
         
           a27877b 6 months ago Sylvain Joyeux core: remove references to Roby.engine, replace by local objects or Application#engine<br/>
         
           c00aa22 6 months ago Sylvain Joyeux replace inherited_enumerable on the instance to define_inherited_enumerable on the classes<br/>
         
           c9f94ac 7 months ago Sylvain Joyeux core: better error message when trying to re-add a finalized task and debug_finalization_place is false<br/>
         
           fb248f7 7 months ago Sylvain Joyeux core: don't allow adding a finalized object to a transaction<br/>
         
           be3672d 7 months ago Sylvain Joyeux test: in SelfTest, do not assume that the global singletons could be used<br/>
         
           9579920 7 months ago Sylvain Joyeux add .yardoc to gitignore<br/>
         
           75a28fe 7 months ago Sylvain Joyeux core: don't allow to create a transaction without a plan<br/>
         
           e6739df 7 months ago Sylvain Joyeux doc: document Transaction<br/>
         
           0a37532 7 months ago Sylvain Joyeux core: rename Transaction#freezed to #frozen<br/>
         
           0e89779 7 months ago Sylvain Joyeux app: #plan should be defined in ShellInterface, not RemoteInterface<br/>
         
           30700ea 7 months ago Sylvain Joyeux core: documentation<br/>
         
           d5d7622 7 months ago Sylvain Joyeux core: fix handling of fullfilled_model on models<br/>
         
           1d27450 7 months ago Sylvain Joyeux app: define Roby.state and Roby.conf as (IMO more readable) aliases to Roby::State and Roby::Conf<br/>
         
           0d2b88c 7 months ago Sylvain Joyeux test: forcefully discard all transactions defined on the test's plan<br/>
         
           68535aa 7 months ago Sylvain Joyeux core: #debug_finalization_place? is defined on PlanObject, not EventGenerator<br/>
         
           5543ff6 7 months ago Sylvain Joyeux move DependencyGraphClass#validate_options from instance method to class method<br/>
         
           cefe6e8 7 months ago Sylvain Joyeux core: better error message in child_from_roles if the task has no children<br/>
         
           2ee4c0f 7 months ago Sylvain Joyeux app: in Application#load_plugin_from_prefix, shift the newly added path after loading<br/>
         
           32e667e 7 months ago Sylvain Joyeux core: make the dependency merge method available outside the dependency graphs<br/>
         
           f38a7ab 7 months ago Sylvain Joyeux core: allow to access task events from the task object with &lt;event_name&gt;_event<br/>
         
           160b139 7 months ago Sylvain Joyeux core: fix handling of fullfilled models at class level<br/>
         
           3b934d6 7 months ago Sylvain Joyeux app: try to cleanup the global singleton mess<br/>
         
           f89efc7 7 months ago Sylvain Joyeux core: use Utilrb::Models::Registration to manage the task models<br/>
         
           b93e4e3 7 months ago Sylvain Joyeux gui: fix --client for roby-display and add --host as an alias<br/>
         
           68494b2 7 months ago Sylvain Joyeux better error messages<br/>
         
           79a4979 7 months ago Sylvain Joyeux Compiler fix for GCC 4.7.1<br/>
         
           ca56dfb 7 months ago Sylvain Joyeux Removed -module from compilerflags, since the gcc 4.7.1 doesn't understand this and it compiles without this flag<br/>
         
           f856ff3 7 months ago Sylvain Joyeux minor documentation fixes<br/>
         
           bf8760a 7 months ago Sylvain Joyeux rake: remove obsolete stuff related to documentation generation<br/>
         
           6636cd9 8 months ago Sylvain Joyeux core: fix toplevel exception handlers in Plan<br/>
         
           b58dcff 8 months ago Sylvain Joyeux core: mission? cannot be given an event anymore, fix transaction proxy wrapping<br/>
         
           809ae08 8 months ago Matthias Goldhoorn core: fix task scripts on replaced tasks<br/>
         
           a2d90ef 8 months ago Sylvain Joyeux doc: attempt to fix a problem with some coderay-generated HTML being quoted into the final HTML<br/>
         
           305a709 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/state_rework'<br/>
         
           c7032f7 8 months ago Sylvain Joyeux app: in Application#require, fix loading when Dir.pwd != app_dir<br/>
         
           1bb0c2a 8 months ago Sylvain Joyeux log: fix terminal flag update in override_remote_event<br/>
         
           a201f21 8 months ago Sylvain Joyeux log: in log replay, fix not removing sibling registration for finalized objects<br/>
         
           40a7199 8 months ago Sylvain Joyeux log: add the "decode" mode to roby-log<br/>
         
           a4650a2 8 months ago Sylvain Joyeux core: allow setting a C++-level name for graphs for debugging reasons<br/>
         
           4607139 8 months ago Sylvain Joyeux core,test: add test for when_unreachable in transactions<br/>
         
           8d255ee 8 months ago Sylvain Joyeux state: rename #bind to #resolve for the data sources<br/>
         
           d4252e7 8 months ago Sylvain Joyeux schedulers: move the creation of debug queries where they are needed<br/>
         
           a5ed66c 8 months ago Sylvain Joyeux bgl: display edge info in Graph#pretty_print<br/>
         
           9474cec 8 months ago Sylvain Joyeux core: define Plan#deep_copy and Plan#same_plan?<br/>
         
           a7613cb 8 months ago Sylvain Joyeux core: forward #kind_of? in PlanService<br/>
         
           6e22051 8 months ago Sylvain Joyeux test: add a transaction test<br/>
         
           ebbc360 8 months ago Sylvain Joyeux test: in SelfTest, cleanup on teardown<br/>
         
           2aacefa 8 months ago Sylvain Joyeux core: define #each_root_relation<br/>
         
           2f81377 8 months ago Sylvain Joyeux core: allow usage of plan services in #(mission|permanent)? and #(add|unark)_(mission|permanent)<br/>
         
           8b2cc39 8 months ago Sylvain Joyeux app: allow registering plugin directly by their plugin file (app.rb) instead of whole directories<br/>
         
           c9a7e94 8 months ago Sylvain Joyeux core: in PlanService, forward #respond_to? to the underling task<br/>
         
           b209e84 8 months ago Sylvain Joyeux core: fix reference to ExtendedStruct (is now OpenStruct)<br/>
         
           3d68e36 8 months ago Sylvain Joyeux roby: remove the state argument to #bind on data sources<br/>
         
           4900b81 8 months ago Sylvain Joyeux robot: document the action API on Robot<br/>
         
           7a746ec 8 months ago Sylvain Joyeux Revert "core: the current "script" call in ScriptEngine is currently broken by using a simple"<br/>
         
           b0068ea 8 months ago Sylvain Joyeux Revert "Without this fix defines are executed like planning_methods and this fails due"<br/>
         
           76d39b6 8 months ago Sylvain Joyeux Revert "using the id method is deprecated for planning_methods. Use instead: object_id."<br/>
         
           cc9b783 8 months ago Sylvain Joyeux core: rename TaskModelTag into TaskService, and define Roby.task_service to define new services<br/>
         
           e9c6be9 8 months ago Sylvain Joyeux state: define resolve_goals on Task<br/>
         
           d041754 8 months ago Sylvain Joyeux state: implement initializing goal states from goal models<br/>
         
           ec05b5f 8 months ago Sylvain Joyeux add new state-related test cases in suite_core<br/>
         
           0cecd21 8 months ago Sylvain Joyeux state: integrate goal models / goal spaces on tasks<br/>
         
           323446b 8 months ago Sylvain Joyeux state: fix task state models<br/>
         
           187be46 8 months ago Sylvain Joyeux state: implement goal models<br/>
         
           46ec83f 8 months ago Sylvain Joyeux state: allow modifying the model after the StateSpace instance got initialized<br/>
         
           bab6e32 8 months ago Sylvain Joyeux state: some more cleanup<br/>
         
           c95079c 8 months ago Sylvain Joyeux move the implementation for an extended-struct-model out of StateModel into ExtendedStructModel<br/>
         
           f619cd6 9 months ago Sylvain Joyeux add logs/ to gitignore<br/>
         
           2e0ac97 9 months ago Sylvain Joyeux state: finish cleanup state management design<br/>
         
           c295ebf 9 months ago Sylvain Joyeux state: properly re-attach subfields when unmarshalling an ExtendedStruct<br/>
         
           d4e72d5 9 months ago Sylvain Joyeux state: rename StateLeafModel to the much more classical StateVariableModel<br/>
         
           a756089 9 months ago Sylvain Joyeux state: implement a way to re-attach a state model on an object<br/>
         
           bcf15f0 9 months ago Sylvain Joyeux state: cleanup __root and __root? by defining __parent<br/>
         
           5df7c20 9 months ago Sylvain Joyeux state: allow StateFieldModel to be attached to other type of objects/models than task models<br/>
         
           7a553fe 9 months ago Sylvain Joyeux state: add support for state models on task models<br/>
         
           b9132b5 9 months ago Sylvain Joyeux state: define __root and __root? on ExtendedStruct<br/>
         
           1b8be7e 9 months ago Sylvain Joyeux state: create a state model structure parallel to the one from our superclass<br/>
         
           ed2b959 9 months ago Sylvain Joyeux state: fix documentation of StateLeafModel#state_model<br/>
         
           6e9d235 9 months ago Sylvain Joyeux state: allow to store the task model in StateFieldModel<br/>
         
           1d89b1f 9 months ago Sylvain Joyeux state: make sure that &lt;=, == or &gt;= are not caught by #method_missing on extended struct<br/>
         
           989b41a 9 months ago Sylvain Joyeux state: add a __merge operation to extended_struct<br/>
         
           f760737 9 months ago Sylvain Joyeux state: allow state models to have supermodels<br/>
         
           236329b 9 months ago Sylvain Joyeux state: remove useless overload of create_subfield in StateField<br/>
         
           5deec60 9 months ago Sylvain Joyeux state: add documentation<br/>
         
           dbd2baa 9 months ago Sylvain Joyeux state: implement #path on ExtendedStruct and StateFieldModel<br/>
         
           6dedff7 9 months ago Sylvain Joyeux state: rename StateLeafModel#source to #data_source for consistency with StateModel#data_sources<br/>
         
           d0a5441 9 months ago Sylvain Joyeux state: test for validation of value returned by the data source<br/>
         
           31be494 9 months ago Sylvain Joyeux state: move the listing of not-overridable methods to the end of ExtendedStruct definition<br/>
         
           a5c52bb 9 months ago Sylvain Joyeux state: remove dead code<br/>
         
           0e4e718 9 months ago Sylvain Joyeux state: restrict field manipulation for fields that have sources<br/>
         
           07342c3 9 months ago Sylvain Joyeux state: implement state models<br/>
         
           630bfd3 9 months ago Sylvain Joyeux state: add some tests for ExtendedStruct<br/>
         
           06fab2c 9 months ago Sylvain Joyeux state: initialize ExtendedStruct's children class to the current object's class by default<br/>
         
           6d97bf5 9 months ago Sylvain Joyeux state: move the get/set code out of method_missing<br/>
         
           a48fdaa 9 months ago Sylvain Joyeux state: fundamental rework of the state representation<br/>
         </td></tr>
       



       <tr class="name" id="tools/service_discovery">
         <th>tools/service_discovery</th>
       </tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="58"> 4 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="to_commits" id="commits_58"><td>
         
           912879f 5 months ago Thomas Roehr Add base include dir to cflags in pc file<br/>
         
           5ea2edd 8 months ago Sylvain Joyeux depend on "ruby" as we build our own extension<br/>
         
           5be36b6 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           2fb0693 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         </td></tr>


       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="62"> 29 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="from_commits" id="commits_62"><td>
         
           a0401f5 4 months ago Sylvain Joyeux fix calling #keys on the EnumType class itself.<br/>
         
           0602b76 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           4a95e86 5 months ago Sylvain Joyeux Merge commit '272d821' into next<br/>
         
           bf50c43 5 months ago Sylvain Joyeux add create_null and create_opaque on Registry<br/>
         
           204a30e 5 months ago Sylvain Joyeux ruby: fix memory handling w.r.t. the lazy-sweep GC in ruby 1.9.3<br/>
         
           6bff667 5 months ago Janosch Machowinski ValueVisitor: move the creation of the dispatcher from apply into the constructor<br/>
         
           e2dc936 5 months ago Janosch Machowinski reverted 3fa16150779fbfb8501d35fc6856d579c0238d38<br/>
         
           3fa1615 5 months ago Janosch Machowinski Fixed segfault in Container.visit() for std::Vector<br/>
         
           272d821 6 months ago Sylvain Joyeux idl: don't try being smart when generating IDL type names<br/>
         
           e85f68c 7 months ago Sylvain Joyeux doc: document the type creation methods<br/>
         
           a6d2b8b 7 months ago Sylvain Joyeux ruby: fix memory handling w.r.t. the lazy-sweep GC in ruby 1.9.3<br/>
         
           bcff9e0 7 months ago Sylvain Joyeux ruby: ruby 1.9 fixes<br/>
         
           13d00f4 7 months ago Sylvain Joyeux test: fixes for ruby 1.9<br/>
         
           952b662 7 months ago Sylvain Joyeux ruby: use RbConfig instead of Config in cmake code<br/>
         
           8491212 7 months ago Sylvain Joyeux ruby,doc: when possible, use yard to generate documentation<br/>
         
           d5724c7 7 months ago Sylvain Joyeux ruby,doc: document the dependency discovery methods on Type<br/>
         
           99e008e 7 months ago Sylvain Joyeux doc: make the link to the Ruby bindings documentation more prominent<br/>
         
           06f223f 7 months ago Sylvain Joyeux ruby: in export_to_ruby, make sure that we save the current export state on error<br/>
         
           d1b1b79 7 months ago Sylvain Joyeux ruby: recursively clear namespaces before removing the exported types<br/>
         
           e71fc42 8 months ago Sylvain Joyeux Merge branch 'stable' of git://gitorious.org/orocos-toolchain/rock-typelib<br/>
         
           5fc0bb4 8 months ago Sylvain Joyeux Merge branch 'stable' of git://gitorious.org/orocos-toolchain/rock-typelib into next<br/>
         
           1588bfa 8 months ago Sylvain Joyeux Revert "Update Doxyfile.in from the version in Rock CMake template"<br/>
         
           dfd4759 8 months ago Sylvain Joyeux Revert "doc: fix documentation generation to be in doc/ and doc/ruby"<br/>
         
           93ccde6 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           a681af3 9 months ago Sylvain Joyeux doc: fix documentation generation to be in doc/ and doc/ruby<br/>
         
           b75a997 9 months ago Sylvain Joyeux Update Doxyfile.in from the version in Rock CMake template<br/>
         
           30c1de5 9 months ago Sylvain Joyeux add missing dependency on nokogiri and libxslt<br/>
         
           71a6d85 9 months ago Sylvain Joyeux remove dead code<br/>
         
           672f96b 9 months ago Sylvain Joyeux make getRelativePathTo return an absolute namespace path when needed<br/>
         
         </td></tr>
       
       
       
       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="63"> 116 new commits</a> in stable-20130620</td>
         </tr>
         <tr class="from_commits" id="commits_63"><td>
         
           10c68b7 3 days ago Thomas Roehr Fix README setup<br/>
         
           6c26668 3 days ago Thomas Roehr Fix utilrb/doc/rake<br/>
         
           ddf17fa 4 months ago Alexander Duda fix Qt::MimeData which is accidentally beeing deleted if returned to Qt<br/>
         
           3fa7434 5 months ago Sylvain Joyeux event_loop: properly forward the block to the real call if one is given<br/>
         
           5977087 5 months ago Sylvain Joyeux add Pathname#find_matching_parent<br/>
         
           be7e0f9 5 months ago Alexander Duda event_loop: add method to cleanup backtrace<br/>
         
           6aeb9f2 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           d5c5ad6 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           5a91e23 5 months ago Alexander Duda EventLoop::Timer: use Kernel.caller as default doc<br/>
         
           20c58b7 5 months ago Sylvain Joyeux explicitly refer to ::Logger instead of Logger<br/>
         
           ec38741 5 months ago Sylvain Joyeux define Kernel.normalize_options<br/>
         
           b17df02 5 months ago Alexander Duda event_loop Timer: timer was called even after it was stopped<br/>
         
           5f15d3b 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           51cd43e 5 months ago Alexander Duda EventLoop: call Thread.pass from step<br/>
         
           359be0f 5 months ago Alexander Duda EventLoop Timer: allow to instantly call the timer<br/>
         
           232ac4d 5 months ago Sylvain Joyeux event_loop: make the error backtraces slightly more useful<br/>
         
           5aafd56 5 months ago Sylvain Joyeux small typo<br/>
         
           9af1e25 5 months ago Allan E. Conquest typo<br/>
         
           3395209 5 months ago Alexander Duda event_loop.on_error: accept array as argument<br/>
         
           339e718 5 months ago Sylvain Joyeux test: add<br/>
         
           a8f749d 5 months ago Sylvain Joyeux models: make #register_submodel set definition_location and permanent_model<br/>
         
           837808d 5 months ago Sylvain Joyeux models: don't extend Registration with logging<br/>
         
           c0b912c 5 months ago Sylvain Joyeux logger: refer to the Logger class as ::Logger<br/>
         
           d0225a3 5 months ago Sylvain Joyeux logger: fix issues related to Hierarchy and root modules / subclasses<br/>
         
           2845236 5 months ago Sylvain Joyeux logger: in Hierarchy, use an instance variable name that is less prone to collision<br/>
         
           a9e95e5 5 months ago Sylvain Joyeux in Models#define_inherited_enumerable, define #clear_{attribute}<br/>
         
           1ab0686 5 months ago Alexander Duda EventLoop::Timer add doc field<br/>
         
           12be818 5 months ago Alexander Duda Qt::Variant: add method to_ruby?<br/>
         
           4f2c290 5 months ago Alexander Duda event_loop: support for recursive calling step<br/>
         
           ee79a3d 5 months ago Alexander Duda event_loop: add timeout for steps and wait_for<br/>
         
           f39003e 5 months ago Alexander Duda event_loop bugfix: steps was not calling step in some cases<br/>
         
           1499548 5 months ago Sylvain Joyeux models: set #definition_location using facets' call_stack to get it parsed<br/>
         
           3db86d0 5 months ago Sylvain Joyeux models: define a default #supermodel in registration code<br/>
         
           07f88d8 5 months ago Sylvain Joyeux models: register submodels as soon as they are subclassed<br/>
         
           32f7377 5 months ago Sylvain Joyeux forbid passing nil as key in the find_* methods generated by define_inherited_enumerable<br/>
         
           28b0042 5 months ago Sylvain Joyeux logger: make the call to pp_to_array more robust to changes in the namespacing<br/>
         
           9a56311 6 months ago Sylvain Joyeux models: use const_defined_here? to check for the presence of ClassExtension<br/>
         
           340df5c 6 months ago Sylvain Joyeux refactor the (still not very reliable) RubyObjectGraph<br/>
         
           6a0bb48 6 months ago Sylvain Joyeux models: add sub-model registration code<br/>
         
           2b2dd0b 6 months ago Sylvain Joyeux models: fix support for singleton classes in define_inherited_enumerable<br/>
         
           5cd6f32 6 months ago Sylvain Joyeux logger: make sure that the nest size is never negative in #nest_size=<br/>
         
           7f27b20 6 months ago Sylvain Joyeux models: move the tests out of test_modules<br/>
         
           27a28ea 6 months ago Sylvain Joyeux logger: support hierarchical loggers on anonymous tasks<br/>
         
           e7c124f 6 months ago Sylvain Joyeux documentation<br/>
         
           04767c0 6 months ago Sylvain Joyeux in ValueSet#difference!, don't do anything in the identity case<br/>
         
           e429c8b 6 months ago Sylvain Joyeux for now, move the handling of inherited_enumerable to defined_inherited_enumerable<br/>
         
           a28fdee 7 months ago Jakob Schwendner logger: use default log level from BASE_LOG_LEVEL if set as environment variable<br/>
         
           208579a 7 months ago Alexander Duda ThreadPool: fix bug which occurred when a task was re queued<br/>
         
           b3a9a93 7 months ago Sylvain Joyeux rename README.txt into README.rd for yard to pick<br/>
         
           f3442af 7 months ago Sylvain Joyeux documentation<br/>
         
           7117dc4 7 months ago Sylvain Joyeux allow to use Utilrb.doc with options but with the default name<br/>
         
           4d8365a 7 months ago Allan E. Conquest EventLoop: add method returning the currently running timers.<br/>
         
           0b92c66 7 months ago Allan E. Conquest ThreadPool: moving_average formula fixed.<br/>
         
           d17696a 7 months ago Allan E. Conquest ThreadPool: fix moving average calculation<br/>
         
           02314e6 7 months ago Allan E. Conquest typo<br/>
         
           7b0c18c 7 months ago Alexander Duda ThreadPool: add statistics<br/>
         
           c971a0b 7 months ago Alexander Duda Merge remote-tracking branch 'autobuild/thread_pool_statistics'<br/>
         
           b99cf79 7 months ago Alexander Duda EventLoop: add error callback option to all async calls<br/>
         
           2ab2131 7 months ago Alexander Duda EventLoop: fix some documentation<br/>
         
           e6ba707 7 months ago Alexander Duda EventLoop: fix deadlock when calling sync<br/>
         
           712da19 7 months ago Alexander Duda EventLoop: remove default return values<br/>
         
           8e84ee3 7 months ago Marc Hildebrandt event_loop: fix passing the :known_errors options to the generated methods<br/>
         
           51f9697 7 months ago Marc Hildebrandt the event loop defer mechanisms expects :known_errors to be nil if there are no errors<br/>
         
           f3bbcac 7 months ago Allan E. Conquest introducing some statistical attributes. not all data suppliers are implemented, yet.<br/>
         
           fbad63d 7 months ago Sylvain Joyeux yard: small fix for the yard plugin<br/>
         
           0f9136e 7 months ago Sylvain Joyeux yard: create_tag has disappeared, use add_tag instead<br/>
         
           0f74815 7 months ago Alexander Duda ThreadPool: add unit test for cases with 1 thread<br/>
         
           d5b593e 7 months ago Alexander Duda EventLoop: Do not ignore unknown errors<br/>
         
           58e4c0d 7 months ago Alexander Duda EventLoop: replace Arrays with Queues; add helper functions<br/>
         
           a9a7f47 7 months ago Alexander Duda EventLoop: improve API to be more easily be used from other classes.<br/>
         
           c9f48e0 7 months ago Sylvain Joyeux fix reference to Rake::Task<br/>
         
           1f6140c 7 months ago Sylvain Joyeux fix reference to Rake::Task<br/>
         
           8414f8e 7 months ago Sylvain Joyeux remove support for the deprecated rake/rdoctask as it is now an error on Rake &gt;= 10<br/>
         
           3235520 7 months ago Sylvain Joyeux add the doc tasks with warnings when no documentation is available<br/>
         
           184cd86 7 months ago Sylvain Joyeux add the doc tasks with warnings when no documentation is available<br/>
         
           47a0fdf 7 months ago Sylvain Joyeux remove support for the deprecated rake/rdoctask as it is now an error on Rake &gt;= 10<br/>
         
           5906f8b 7 months ago Sylvain Joyeux remove support for the deprecated rake/rdoctask as it is now an error on Rake &gt;= 10<br/>
         
           a1c4e58 7 months ago Sylvain Joyeux document PkgConfig.new<br/>
         
           07e79b3 8 months ago Alexander Duda fix unit test to be directly run from the unit test folder<br/>
         
           3a8def7 8 months ago Alexander Duda add EventLoop implementation<br/>
         
           3e3b65d 8 months ago Alexander Duda add ThreadPool implementation.<br/>
         
           a7057e8 8 months ago Sylvain Joyeux doc: add clubber and rebuild task<br/>
         
           150f571 8 months ago Sylvain Joyeux doc: add clubber and rebuild task<br/>
         
           f7023ef 8 months ago Alexander Duda doc: add clubber and rebuild task<br/>
         
           cdc46f2 8 months ago Sylvain Joyeux qt: remove debugging output<br/>
         
           d2a753a 8 months ago Sylvain Joyeux qt: fix Variant.from_ruby / to_ruby for object_id's that are bigger than 31bits<br/>
         
           18ef6fc 8 months ago Alexander Duda add doc? method checks if a documentation can be generated by yard or rdoc<br/>
         
           759e76f 8 months ago Sylvain Joyeux implement a workaround for Qt::Variant.from_value in qtruby<br/>
         
           309ec4a 8 months ago Sylvain Joyeux dsl: use __send__ instead of send to allow sandboxes to be used as main objects<br/>
         
           2b176b4 8 months ago Sylvain Joyeux logger: make sure that make_own_logger propagates its changes in the hierarchy<br/>
         
           730d69f 8 months ago Sylvain Joyeux dsl: use __send__ instead of send to allow sandboxes to be used as main objects<br/>
         
           4268b43 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           d1ecbfc 9 months ago Sylvain Joyeux move the inherited_enumerable code to a separate Utilrb::Models module<br/>
         
           4971f26 9 months ago Sylvain Joyeux display full documentation generation exception backtrace if rake tracing is enabled<br/>
         
           46241aa 9 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           827f6e0 9 months ago Sylvain Joyeux fix PkgConfig.clear_cache<br/>
         
           1488265 9 months ago Sylvain Joyeux fix PkgConfig.clear_cache<br/>
         
           11316e4 9 months ago Sylvain Joyeux Merge remote-tracking branch 'rock/master'<br/>
         
           d712015 9 months ago Sylvain Joyeux module: in inherited_enumerable promote_value should be called even on all ancestors<br/>
         
           b881daa 9 months ago Sylvain Joyeux test: add test for poll, wait_until and wait_while<br/>
         
           ef5a0af 9 months ago Sylvain Joyeux tests: some trivial fixes<br/>
         
           98879e4 9 months ago Sylvain Joyeux test: don't use fractional values to initialize Time in to/from_hms tests<br/>
         
           6893a9a 9 months ago Sylvain Joyeux pkgconfig: extract the default search path from pkg-config --debug<br/>
         
           231ea28 9 months ago Sylvain Joyeux in inherited_enumerable, implement a way to promote values at each level of the modelling hierarchy<br/>
         
           4429384 9 months ago Sylvain Joyeux test: add some missing tests for important functionality<br/>
         
           d7b0ccf 9 months ago Sylvain Joyeux Merge remote-tracking branch 'rock/stable' into toolchain-2.5<br/>
         
           13ea234 9 months ago Sylvain Joyeux rdoc: don't specify a full path for included and excluded files for RDoc<br/>
         
           eb339ad 9 months ago Sylvain Joyeux add missing files in Manifest.txt<br/>
         
           f89579c 10 months ago Jakob Schwendner configurationsearch: make sure a proper error is raised when the ROCK_CONFIG_PATH environment variable is not set<br/>
         
           e114009 1 year, 8 months ago Steven Bellens utilrb: do not install hoe gem - no longer needed<br/>
         
           b935eb1 1 year, 8 months ago Steven Bellens utilrb: install rdoc and latest hoe gem version<br/>
         
           4d5919c 2 years ago Peter Soetens make: update paths to smoothen transition to new stack layout<br/>
         
           3e42db9 2 years ago Peter Soetens Revert "make: install the utilrb gem."<br/>
         
           f52fccc 2 years ago Peter Soetens make: install the utilrb gem.<br/>
         
           28b9e5a 2 years ago Peter Soetens make: new toolchain stack name.<br/>
         
           1f3fb1a 2 years ago Peter Soetens make: use rtt_gems dir to install gems if it exists.<br/>
         
         </td></tr>

</table>
