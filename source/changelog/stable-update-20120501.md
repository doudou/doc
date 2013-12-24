---
title: "2012-05-01 - Release"
sort_info: 996
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

    <li>base/templates/bundle</li>

    <li>base/templates/doc</li>

    <li>bundles/rock</li>

    <li>drivers/camera_usb</li>

    <li>drivers/orogen/camera_usb</li>

    <li>drivers/orogen/transformer</li>

    <li>image_processing/jpeg_conversion</li>

    <li>image_processing/orogen/stereo</li>

    <li>image_processing/stereo</li>

    <li>slam/orogen/graph_slam</li>

    <li>slam/pose_ekf</li>

    <li>slam/quater_ikf</li>

    <li>tools/log_tools</li>

    <li>tools/port_proxy</li>

    <li>tutorials/designer_widget_tutorial</li>

    <li>tutorials/message_driver</li>

    <li>tutorials/orogen/message_consumer</li>

    <li>tutorials/orogen/message_producer</li>

    <li>tutorials/orogen/rock_tutorial</li>

    <li>tutorials/orogen/tut_brownian</li>

    <li>tutorials/orogen/tut_deployment</li>

    <li>tutorials/orogen/tut_follower</li>

    <li>tutorials/orogen/tut_sensor</li>

</ul>


<h1>Removed packages</h1>
<ul>

    <li>basics_tutorial/message_driver</li>

    <li>basics_tutorial/orogen/message_consumer</li>

    <li>basics_tutorial/orogen/message_producer</li>

</ul>



<h1>Updates</h1>
<p>1423 new commits in 43 packages<br/>
Affected packages: 
  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/scripts">base/scripts</a>

  <a href="#base/templates/vizkit">base/templates/vizkit</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#drivers/aggregator">drivers/aggregator</a>

  <a href="#drivers/camera_interface">drivers/camera_interface</a>

  <a href="#drivers/canbus">drivers/canbus</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/hokuyo">drivers/hokuyo</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/orogen/aggregator">drivers/orogen/aggregator</a>

  <a href="#drivers/orogen/camera_firewire">drivers/orogen/camera_firewire</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/fog_kvh">drivers/orogen/fog_kvh</a>

  <a href="#drivers/orogen/gps">drivers/orogen/gps</a>

  <a href="#drivers/orogen/hokuyo">drivers/orogen/hokuyo</a>

  <a href="#drivers/orogen/iodrivers_base">drivers/orogen/iodrivers_base</a>

  <a href="#drivers/orogen/xsens_imu">drivers/orogen/xsens_imu</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#image_processing/libelas">image_processing/libelas</a>

  <a href="#image_processing/orogen/image_preprocessing">image_processing/orogen/image_preprocessing</a>

  <a href="#multiagent/fipa_acl">multiagent/fipa_acl</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/nav_graph_search">planning/nav_graph_search</a>

  <a href="#planning/orogen/corridor_planner">planning/orogen/corridor_planner</a>

  <a href="#planning/vfh_star">planning/vfh_star</a>

  <a href="#rtt">rtt</a>

  <a href="#slam/envire">slam/envire</a>

  <a href="#tools/logger">tools/logger</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#tools/service_discovery">tools/service_discovery</a>

  <a href="#tutorials/rock_tutorial">tutorials/rock_tutorial</a>

  <a href="#tutorials/vizkit3d_plugin_tutorial">tutorials/vizkit3d_plugin_tutorial</a>

  <a href="#typelib">typelib</a>

  <a href="#utilrb">utilrb</a>
</p>


<table class="package_status">


       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 8 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           9532da9 2 months ago Jakob Schwendner Revert "export kinematicstate"<br/>
         
           067160b 2 months ago Matthias Goldhoorn Forgotten export for Vector4d<br/>
         
           c240d2a 2 months ago Matthias Goldhoorn Added Vector4d (for e.g. colors)<br/>
         
           d1abb47 2 months ago Jakob Schwendner export kinematicstate<br/>
         
           1572d0b 3 months ago Sylvain Joyeux export base/Angle<br/>
         
           77dcde9 5 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/master'<br/>
         
           dc37ca1 5 months ago Matthias Goldhoorn Added matrix6d and added export of vector&lt;double&gt;<br/>
         
           1032e77 5 months ago Thomas Roehr Add std::vector&lt;uint32_t&gt; to typekit<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 75 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           4d84c51 7 days ago Alexander Duda compatibility fix for rock-inspect<br/>
         
           afb25bf 7 days ago Alexander Duda remove old script rock-create-vizkit-plugin<br/>
         
           9e1c737 7 days ago Alexander Duda update rock-create-vizkit-widget<br/>
         
           352c1a8 7 days ago Alexander Duda in rock-inspect, #load_orogen_project is meant to return nil on load error, fix<br/>
         
           e2f1049 7 days ago Alexander Duda rock-create-designer-widget: Output msg reminding updating manifest.xml<br/>
         
           a54f6ea 7 days ago Alexander Duda rename rock-create-widget =&gt; rock-create-qt-designer-widget<br/>
         
           16aeba4 7 days ago Alexander Duda indentation<br/>
         
           da87975 7 days ago Alexander Duda --help text<br/>
         
           e3dfc93 7 days ago Alexander Duda cleanup<br/>
         
           d03e642 7 days ago Alexander Duda omit newline in templates if the line contains only ruby code<br/>
         
           f174975 7 days ago Alexander Duda refactoring: source out templates to templates/widget_generator/templates.rb<br/>
         
           21618d4 7 days ago Alexander Duda widget generator: copy .pc.in file generated by rock-create-lib back in src (from src.old)<br/>
         
           fb49baf 7 days ago Alexander Duda proposal: rock-create-widget Creates a Qt widget with a matching Qt Designer plugin at hand<br/>
         
           a5dcf00 8 weeks ago Sylvain Joyeux bundles: add missing require on YAML<br/>
         
           7308c2c 8 weeks ago Sylvain Joyeux don't display the "log files are going ..." message if the logs are not public<br/>
         
           86c4636 8 weeks ago Sylvain Joyeux bundles: remove the parent directories of the log dir when relevant<br/>
         
           c6d7fb9 8 weeks ago Sylvain Joyeux do a proper setup if started without any bundles registered<br/>
         
           38aa285 8 weeks ago Sylvain Joyeux bundles: roby/app can be loaded by itself now, do it<br/>
         
           99a34c9 8 weeks ago Sylvain Joyeux rock-inspect: don't catch Interrupt<br/>
         
           0b978af 8 weeks ago Sylvain Joyeux rock-inspect: use Orocos.warn instead of STDERR<br/>
         
           6bcd978 8 weeks ago Sylvain Joyeux bundles: add one more layer of security to avoid deleting a directory that includes some user data<br/>
         
           7b1b2ff 8 weeks ago Sylvain Joyeux bundles: fix deleting the generated log directory<br/>
         
           1b77ce6 8 weeks ago Sylvain Joyeux in rock-inspect, don't display a complete exception message for user interruptions<br/>
         
           e3b00bb 9 weeks ago Sylvain Joyeux if the transformer is available, properly hook the bundle loading mechanism into it<br/>
         
           6198a9e 9 weeks ago Sylvain Joyeux bundle: use the new Roby log setup API<br/>
         
           6cdb956 9 weeks ago Sylvain Joyeux properly quote the name of the intermediate type in docgen<br/>
         
           68f82d5 9 weeks ago Sylvain Joyeux integrate API documentation generation in HTML docgen<br/>
         
           745f34e 2 months ago Sylvain Joyeux bundles:  add ways to select the current bundle from within the scripts themselves<br/>
         
           ed1786b 2 months ago Sylvain Joyeux use Orocos.default_working_directory to set the default outputs to Bundles.log_dir<br/>
         
           9dcf45d 3 months ago Sylvain Joyeux bundle: delete the generated log directory if it is empty<br/>
         
           c2d3b2a 3 months ago Sylvain Joyeux bundle: fix location of the ORO_LOGFILE for the ruby process itself<br/>
         
           bafa212 3 months ago Sylvain Joyeux bundle: use Roby.app.setup_dirs to setup the log dir, so that we get the logs/current symlink<br/>
         
           4fb09d2 3 months ago Sylvain Joyeux bundle: also move the transformer broadcaster's log files to logs/$date<br/>
         
           629020f 3 months ago Sylvain Joyeux bundle: use :working_directory to move the log files to logs/$date<br/>
         
           5a47f05 3 months ago Sylvain Joyeux bundle: define Bundles.find_dir and .find_file<br/>
         
           dc76db8 3 months ago Sylvain Joyeux bundle: save component log output to the bundle's logs/ directory<br/>
         
           946107c 3 months ago Sylvain Joyeux in rock/bundle, only load orocos when needed<br/>
         
           8636352 3 months ago Sylvain Joyeux remove the DEBUG logger level in rock-run<br/>
         
           c8c61b1 3 months ago Sylvain Joyeux rock-doc-preview: add the --delete option<br/>
         
           2f6048a 3 months ago Sylvain Joyeux behave properly if non-existing paths are listed in ROCK_BUNDLE_PATH<br/>
         
           fa26ed0 3 months ago Thomas Roehr Add listing of projects to rock-inspect<br/>
         
           7b94efa 3 months ago Sylvain Joyeux sync shell/bash from shell/zsh<br/>
         
           83b1984 3 months ago Sylvain Joyeux create rock-doc-preview<br/>
         
           bac1aa0 3 months ago Sylvain Joyeux doc: fix HTML syntax error<br/>
         
           b657c10 3 months ago Sylvain Joyeux add vizkit widget integration in documentation generation<br/>
         
           4d4bcc4 3 months ago Sylvain Joyeux small fix in rock-inspect<br/>
         
           754a4d0 3 months ago Sylvain Joyeux common configuration in Bundles.get and Bundles.run<br/>
         
           af17fc6 3 months ago Sylvain Joyeux fix calling bundle-sel multiple times on a bundle that is not listed in ROCK_BUNDLE_PATH<br/>
         
           47a949b 3 months ago Sylvain Joyeux fix misc issues with HTML generation from Rock objects<br/>
         
           cab2ffb 3 months ago Sylvain Joyeux rock-browse: add osdeps and package sets<br/>
         
           c6d2ba2 3 months ago Sylvain Joyeux integrate display of package information in rock-model-browse, and rename to rock-browse<br/>
         
           7106f2a 3 months ago Sylvain Joyeux make the default bundle output a lot less verbose<br/>
         
           16f1f0b 3 months ago Sylvain Joyeux move rock-run from orocos.rb and make it bundle-aware<br/>
         
           1f51d8a 3 months ago Sylvain Joyeux rock-inspect: make the presence of vizkit optional<br/>
         
           7a53e29 3 months ago Sylvain Joyeux rock-inspect: big performance improvement<br/>
         
           58f80d2 3 months ago Sylvain Joyeux the use of File.join(dirname(__FILE__), ...) should be very very limited to special cases, use require 'rock/rock_inspect'<br/>
         
           a6fd3e6 3 months ago Sylvain Joyeux define rock-bundle-unsel<br/>
         
           2ba83e9 4 months ago Sylvain Joyeux if bundles contain a lib/ directory, add it to the LOAD_PATH<br/>
         
           8a500a1 4 months ago Sylvain Joyeux add rock-create-bundle<br/>
         
           ba8fed1 4 months ago Sylvain Joyeux bundles: when looking if ROCK_BUNDLE is a directory, use is_bundle_path? instead of only directory?<br/>
         
           1b8c4fd 4 months ago Sylvain Joyeux bundles: add the --quiet option to rock-bundle-find<br/>
         
           c7f6405 4 months ago Sylvain Joyeux bundles: add Bundles.run to later on support common command-line options<br/>
         
           b94b8ab 4 months ago Sylvain Joyeux bundles: better wording in bundle information messages<br/>
         
           ad3d85e 4 months ago Sylvain Joyeux bundles: fix path to current bundle if ROCK_BUNDLE is a relative path to a bundle directory<br/>
         
           33bddd2 4 months ago Sylvain Joyeux allow bundles to be selected by their full path<br/>
         
           f1ceeef 4 months ago Sylvain Joyeux add a set of bundle-related tools and shell helpers<br/>
         
           68780e3 4 months ago Sylvain Joyeux bundles: API documentation<br/>
         
           5e26c7f 4 months ago Sylvain Joyeux bundles: implement bundle dependency support<br/>
         
           6edb319 4 months ago Sylvain Joyeux start the basic functionality needed for bundle support<br/>
         
           51f367c 5 months ago Sylvain Joyeux bin: in rock-model-browse, support loading dummy orogen models from a directory<br/>
         
           a4202f8 5 months ago Sylvain Joyeux add --help to rock-inspect<br/>
         
           05b609b 5 months ago Sylvain Joyeux implement support for types in Doc::HTML and rock-model-browse<br/>
         
           20047e5 5 months ago Sylvain Joyeux rock-model-browse: implement a reload function<br/>
         
           3701511 5 months ago Sylvain Joyeux create bin/rock-model-browse<br/>
         
           4b7218a 5 months ago Sylvain Joyeux move and cleanup some of the HTML generation code out of admin_scripts<br/>
         
         </td></tr>
       
       







       <tr class="name" id="base/templates/vizkit">
         <th>base/templates/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           7822c9e 9 days ago Alexander Duda update to new plugin structure<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 44 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           7c7a9b5 9 weeks ago Martin Fritsche made comparison operators for frame_size_t const to allow comparison const frame sizes<br/>
         
           150d769 10 weeks ago Alexander Duda SonarScan.h: bugfix beamIndexForBearing, memory_layout<br/>
         
           bf12533 10 weeks ago Alexander Duda SonarScan: add missing header + some getter functions<br/>
         
           81b712f 10 weeks ago Alexander Duda SonarBeam: add methods for copy and swap<br/>
         
           f468403 2 months ago Alexander Duda add base type sonar_scan + unit tests<br/>
         
           a0f7640 2 months ago Jakob Schwendner Revert "added kinematic state"<br/>
         
           29e1d24 2 months ago Matthias Goldhoorn Merge branch 'master', remote-tracking branch 'autobuild'<br/>
         
           c03d990 2 months ago Matthias Goldhoorn Defined Vector4d (e.g. colors)<br/>
         
           c84626b 2 months ago Jakob Schwendner added kinematic state<br/>
         
           624ce3b 3 months ago Jakob Schwendner time: added static function to construct from milliseconds value<br/>
         
           1bbb76c 3 months ago Jakob Schwendner added additional comments and helper functions to distance image<br/>
         
           7f4e1a9 3 months ago Sascha Arnold cmake: fix moc cpp-to-header convertion when the source directory contains backup files<br/>
         
           715b05d 3 months ago Jakob Schwendner rigid body state casting operator can also work with base::Affine3d instead of just Eigen::Affine3d<br/>
         
           bc0c0df 3 months ago Thomas Roehr Fix disabling logging for iostream style in release mode<br/>
         
           2b803a1 3 months ago Sylvain Joyeux cmake: in rock_vizkit_plugin, do not add a dependency on vizkit if we are in vizkit itself<br/>
         
           9aa4327 3 months ago Sylvain Joyeux cmake: fix rock_libraries_for_pkgconfig to accept dependencies already specified as -L/-l<br/>
         
           accc974 3 months ago Sylvain Joyeux cmake: fix export of public depencies to pkg-config-targetted variables<br/>
         
           76749c4 3 months ago Sylvain Joyeux cmake: use rock_library_common to define Ruby extensions<br/>
         
           0a4198b 3 months ago Sylvain Joyeux don't use "using namespace std" in headers<br/>
         
           a133441 3 months ago Sylvain Joyeux cmake: use normal dependencies as public dependencies if no public dependencies have been explicitely added<br/>
         
           4b6871b 3 months ago Sylvain Joyeux cmake: make rock_find_qt4 accept additional Qt modules<br/>
         
           aba495d 3 months ago Sylvain Joyeux cmake: add test/ after viz/ as we might want to test the visualization code<br/>
         
           8382c2f 3 months ago Sylvain Joyeux cmake: do not search for vizkit for a viz/ subdirectory in the vizkit package itself<br/>
         
           5a30322 3 months ago Sylvain Joyeux make convertScanToPointCloud a template so that both base::Vector3d and Eigen::Vector3d can be used<br/>
         
           b80ddd7 3 months ago Felix Rehrmann Changed implementation of RigidBodyState valid/invalid functionality.<br/>
         
           8e1908d 3 months ago Sylvain Joyeux cmake: add some more functionality to the target dependency tracking system<br/>
         
           ffef9e9 3 months ago Sylvain Joyeux cmake: make the build of vizkit plugins and unit tests optional<br/>
         
           86751be 3 months ago Sylvain Joyeux rbs: make the difference between invalid value and invalid covariance, and factor out the code<br/>
         
           3282a07 3 months ago Thomas Roehr Fix documentation - patched submitted by Jan Vogelsang<br/>
         
           239ac28 3 months ago Thomas Roehr Disable logging in release mode - merging patch by Jan Vogelsang<br/>
         
           2935b13 3 months ago Thomas Roehr Add define BASE_LOG_DISABLE<br/>
         
           54d8b37 4 months ago Sylvain Joyeux cmake: fix rock_ruby_library<br/>
         
           d75bdbc 4 months ago Sylvain Joyeux cmake: fix stray target_link_libraries in rock_ruby_rice_extension<br/>
         
           61951a5 4 months ago Sylvain Joyeux fix some ruby-related detections on Debian-based systems<br/>
         
           110db32 4 months ago Sylvain Joyeux time: reduce possibility of loss of precision when converting from double<br/>
         
           8415507 4 months ago Janosch Machowinski laserScan : Optimize point cloud conversion<br/>
         
           0e83780 4 months ago Janosch Machowinski laserScan: bugfix fix valid range check<br/>
         
           c837f40 4 months ago Janosch Machowinski fixed convertScanToPointCloud function<br/>
         
           17cb2cb 4 months ago Janosch Machowinski added * operator for base::Time<br/>
         
           9bc016e 5 months ago Alexander Duda frame.h: fix comment<br/>
         
           0c6f8c1 5 months ago Felix Rehrmann Added cmake scripts. Mainly for use with python bindings.<br/>
         
           2e03d27 5 months ago Stefan Haase Adds MODE_JPEG.<br/>
         
           5ea5e43 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           24ed30f 5 months ago Jakob Schwendner added clear method to distance_image<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           517d1a8 3 months ago Sylvain Joyeux define RigidBodyState.invalid<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 5 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           36ebfec 9 weeks ago iMoby stores the saturation status<br/>
         
           7d4c066 9 weeks ago iMoby fixes the saturation if the limits are not set; Stores the saturation status<br/>
         
           62190e5 5 months ago Ajish Babu using the struct PIDSettings inside the PID class and documentation for doxygen<br/>
         
           8c2e17e 5 months ago Felix Rehrmann Added setting PIV parameters with a structure.<br/>
         
           16b7bc5 5 months ago Felix Rehrmann Moved some lines to reset() and put reset into the functions.<br/>
         
         </td></tr>
       
       













       <tr class="name" id="drivers/aggregator">
         <th>drivers/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 35 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           2cf2978 3 months ago Janosch Machowinski removed streamAlignerWidget<br/>
         
           3667af4 3 months ago iMoby timestamper: improve status report by not setting time_reset_offset for the first call to resetBaseTime<br/>
         
           ae9b1dd 3 months ago iMoby timestamper: when detecting drops, add the NaNs before the new sample, as it should be<br/>
         
           2ba9cf6 3 months ago iMoby timestamper: small cleanup in updateReference<br/>
         
           c626824 3 months ago iMoby timestamper: in status, replace latency_raw by both the last input and last reference times<br/>
         
           e2dfcf7 3 months ago iMoby timestamper: export the raw latency<br/>
         
           6c4a3af 3 months ago iMoby timestamper: fix value stored in the lost_samples field of the statistics<br/>
         
           9c179f7 3 months ago iMoby timestamper: change how announced losses are handled<br/>
         
           0f4dfc7 3 months ago iMoby timestamper: one more round of code review, and some corner-case fixes<br/>
         
           7f762a4 3 months ago iMoby timestamper: cleanup and improve status report<br/>
         
           95237f3 3 months ago iMoby add some more comments / information after Janosch second code review<br/>
         
           2dc7cc8 3 months ago iMoby warn if we detect possibly lost samples even though indexes are provided<br/>
         
           6df881c 3 months ago iMoby timestamper: remove duplicate tests<br/>
         
           8d595e1 3 months ago iMoby timestamper: update tests<br/>
         
           a6a9569 3 months ago iMoby timestamper: fix updateReference<br/>
         
           9062c97 3 months ago iMoby timestamper: improve behaviour of updateReference across base time updates<br/>
         
           57ec945 3 months ago iMoby timestamper: improve the behaviour of hard base time reset in update()<br/>
         
           6f426b7 3 months ago iMoby timestamper: in tests, hardcode the max noise for the initial sample<br/>
         
           060dc36 3 months ago iMoby timestamper: fix how the initial period is handled<br/>
         
           699d1b7 3 months ago iMoby timestamper: do not call getPeriod if haveEstimate returns false<br/>
         
           b4e8cb7 3 months ago iMoby Revert "timestamper: simplify the special case for samples.empty() in update()"<br/>
         
           2ddbae1 3 months ago iMoby timestamper: simplify the special case for samples.empty() in update()<br/>
         
           eb863db 3 months ago iMoby timestamper: remove useless code line<br/>
         
           a3c0ef0 3 months ago iMoby timestamper: remove commented-out debugging output<br/>
         
           9e810a9 3 months ago iMoby timestamper: small code simplification due to push_back removing front elements in circular buffer<br/>
         
           ea639e0 3 months ago iMoby timestamper: in tests, always generate the csv files<br/>
         
           cab5a6a 3 months ago iMoby timestamper: do the complete estimation without latency<br/>
         
           2bd0ae2 3 months ago iMoby timestamper: fix shortenSampleList for cases where the whole sample list are lost events<br/>
         
           f1b6f3a 3 months ago iMoby timestamper: use base::unset() and base::isUnset() to mark lost events<br/>
         
           fc9b032 4 months ago Sylvain Joyeux timestamper: remove the timestamper, it has been integrated into the regular timestamp estimator<br/>
         
           256e04e 4 months ago Sylvain Joyeux timestamper: refactored the test cases to cover most of the possible combinations<br/>
         
           5fa9765 4 months ago Sylvain Joyeux documentation, code cleanup and fixes after Janosch (informal) code review<br/>
         
           14893f4 4 months ago Janosch Machowinski added testcases for the use case of a given hw timestamp<br/>
         
           ebfbc64 4 months ago Jakob Schwendner added enable/disable function for streams, and test case<br/>
         
           707d807 4 months ago Jakob Schwendner fixed test cases for out-of order behavior<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/camera_interface">
         <th>drivers/camera_interface</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="8"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_8"><td>
         
           6b9fdb0 10 weeks ago Felix Rehrmann Added int parameter PixelClock.<br/>
         
           b0690db 5 months ago Alexander Duda bugfix: setFrameToCameraFrameSettings<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/canbus">
         <th>drivers/canbus</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           ddb4d8c 4 months ago Sylvain Joyeux don't use m_fd directly. Use getFileDescriptor() instead<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="10"> 6 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_10"><td>
         
           8c8df67 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           8afc735 2 months ago Janosch Machowinski disabled debug output of G27 Driver<br/>
         
           850efaf 2 months ago Janosch Machowinski added Logitech G27 initalization tool<br/>
         
           22e1209 8 weeks ago Benjamin Girault Driver for the Logitech G27: extended to 32 buttons<br/>
         
           67a9250 3 months ago Janosch Machowinski bugfix: Fixed wrong check for success of fcntl<br/>
         
           01508c9 3 months ago Janosch Machowinski LogitechG27: Switch to nonblocking after init<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/hokuyo">
         <th>drivers/hokuyo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 8 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           e5724db 3 months ago iMoby fix timeout handling in readAnswer<br/>
         
           5d1f8f5 3 months ago iMoby fix motorSpeed definition and calculation<br/>
         
           e066733 4 months ago Janosch Machowinski move to iodriver_base/Driver.hpp<br/>
         
           c52a77c 4 months ago Janosch Machowinski bugfix: fix sample counter calculation in case remission is on<br/>
         
           5081c17 4 months ago Janosch Machowinski added sample count output to testprogramm<br/>
         
           89390d2 4 months ago Janosch Machowinski bugfix: Fix sample count calculation<br/>
         
           bb2c654 4 months ago Janosch Machowinski added calculation of a sample counter<br/>
         
           a888a46 4 months ago Janosch Machowinski bugfix: fix speed calculation<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="12"> 10 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_12"><td>
         
           8077209 13 days ago Sylvain Joyeux Fix using wrong end() in m_readBuffer.insert<br/>
         
           340add9 5 weeks ago Sylvain Joyeux remove hack from Patrick that made most of Driver public<br/>
         
           78aa093 5 weeks ago Matthias Goldhoorn Added TCPServer support to iodriver<br/>
         
           1826958 3 months ago Sylvain Joyeux rename B* baud rates to SERIAL_&lt;value&gt;<br/>
         
           3f0df41 4 months ago Alexander Duda improve error handling<br/>
         
           b7697d1 4 months ago Sylvain Joyeux some better error messages<br/>
         
           e3cc5cc 4 months ago Sylvain Joyeux implement opening a file (for instance for unix sockets and/or named pipes)<br/>
         
           7b8ac7b 4 months ago Sylvain Joyeux ignore vim swapfiles in git<br/>
         
           9e2db81 4 months ago Sylvain Joyeux refactor the I/O handling to abstract it<br/>
         
           153752f 5 months ago Felix Rehrmann Removed baudrate definitions that are already defined in termios.h.<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/aggregator">
         <th>drivers/orogen/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 21 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           cbf9b34 4 months ago Sylvain Joyeux rock: fix the pretty-printing of extension by oroGen<br/>
         
           f131b9b 4 months ago Jakob Schwendner plugin: disable stream when not connected at startup<br/>
         
           1baf188 5 months ago iMoby rock: fix mismatched set vs. write in property setters<br/>
         
           84597a2 5 months ago Sylvain Joyeux orogen: fix mismerges in the orogen plugin<br/>
         
           e69f779 5 months ago Sylvain Joyeux added property to control the period between aggregator status readings<br/>
         
           15f4a51 5 months ago Sylvain Joyeux orogen_plugin: add needs_configuration to every task using the aggregator<br/>
         
           da262ab 5 months ago Sylvain Joyeux bugfix: orogen plugin was not aware of different task names<br/>
         
           322be24 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/roby_integration'<br/>
         
           23afaf4 7 months ago Sylvain Joyeux orogen: fix attribute name in generated while(stream_align.step()) loop<br/>
         
           3f8390e 8 months ago Sylvain Joyeux orogen: rename the stream aligner attribute to _stream_aligner to follow oroGen's convention<br/>
         
           560f719 8 months ago Sylvain Joyeux the transformer has its own orogen package now, remove parts specific to it<br/>
         
           333f647 8 months ago Sylvain Joyeux roby: add the plugin path to the list of "framework" paths<br/>
         
           2b65709 8 months ago Sylvain Joyeux roby: remove some debugging stuff<br/>
         
           263f862 8 months ago Sylvain Joyeux orogen: make #stream_aligner callable multiple times<br/>
         
           9ee903d 8 months ago Sylvain Joyeux orogen: define an empty pretty_print on PortListenerPlugin::Extension<br/>
         
           8203071 8 months ago Sylvain Joyeux roby: create an orogen/roby plugin to automatically configure the stream aligners<br/>
         
           df5f197 8 months ago Sylvain Joyeux export vector&lt;RigidBodyState&gt; for the benefit of the stream aligner plugin<br/>
         
           4c2b4cd 8 months ago Sylvain Joyeux orogen_plugin: documentation<br/>
         
           cdb7da9 8 months ago Sylvain Joyeux orogen_plugin: move the determination of a stream's C++ type to the Generator class<br/>
         
           c2be60c 8 months ago Sylvain Joyeux better naming scheme<br/>
         
           b2a32ea 8 months ago Sylvain Joyeux refactor the oroGen plugin to separate specification and code generation<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/camera_firewire">
         <th>drivers/orogen/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 5 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           dd1f03a 3 months ago iMoby import types from orogen/aggregator so that we don't duplicate work in typekits<br/>
         
           58bce56 5 months ago imoby changed cam auto-shutter test script, works fine now<br/>
         
           63fc47e 5 months ago imoby added script for convenient live configuration of cameras<br/>
         
           e61e8ab 5 months ago Christopher Gaudig added a script for testing the sync of the auto-shutter values<br/>
         
           09e5d16 5 months ago iMoby allow the _fps to be set to zero, in which case the timestamp estimator does not get a default period<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 8 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           a276107 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           26bee44 2 months ago Janosch Machowinski added test script for steering wheel<br/>
         
           42cb6fe 2 months ago Benjamin Girault fixed the computation of the speed<br/>
         
           2d6eda4 3 months ago Janosch Machowinski bugfix: Init joyButtons before setting button bits<br/>
         
           27fd45b 3 months ago Janosch Machowinski added default constructor for RawCommand<br/>
         
           4f5d00a 8 weeks ago Benjamin Girault added the Brake in the driver<br/>
         
           aa5b4b8 8 weeks ago Benjamin Girault LogitechG27: extended to 32 buttons<br/>
         
           7127c84 3 months ago Janosch Machowinski SteeringWheelTask : Poll all events in update hook<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/orogen/fog_kvh">
         <th>drivers/orogen/fog_kvh</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           dc97b41 3 weeks ago auv changed device id due to kernel update<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/gps">
         <th>drivers/orogen/gps</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 4 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           2d6183e 3 months ago Sylvain Joyeux fix previous commit for older gpsmm APIs<br/>
         
           e208b1f 4 months ago Sylvain Joyeux fix compatibility with newer versions of libgpsmm<br/>
         
           d43afac 5 months ago Janosch Machowinski bugfix: clear fd watches if start failed<br/>
         
           0a566e9 5 months ago Janosch Machowinski added additional error checking in configure hook<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/hokuyo">
         <th>drivers/orogen/hokuyo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 10 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           ec0cc07 3 months ago Jakob Schwendner added simple test script<br/>
         
           d791a8f 3 months ago iMoby fix syntax error<br/>
         
           1853733 3 months ago iMoby re-add proper error reporting, and make sure we do empty the driver's buffer in the updateHook()<br/>
         
           100e3f9 3 months ago iMoby fix device period calculation<br/>
         
           90cb66e 3 months ago iMoby import types from orogen/aggregator so that we don't duplicate work done in typekits<br/>
         
           baddb57 4 months ago iMoby call startHook from the base class<br/>
         
           fa4b1ab 4 months ago iMoby fix infinite recursion in configureHook()<br/>
         
           566adcf 4 months ago Janosch Machowinski removed hard coded initial period and window size<br/>
         
           b5bcdb7 4 months ago Janosch Machowinski use sample counter from driver, code cleanup<br/>
         
           b29f194 5 months ago Janosch Machowinski export status output of the timestamp estimator<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/iodrivers_base">
         <th>drivers/orogen/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 4 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           a5e3115 3 months ago Sylvain Joyeux fix call logic for processIO()<br/>
         
           03e7821 4 months ago Sylvain Joyeux fix backward compatibility<br/>
         
           46509bc 4 months ago Sylvain Joyeux mention the unit test<br/>
         
           858af6c 4 months ago Sylvain Joyeux use the new IOStream and IOListener interfaces for iodrivers_base to implement port-based communication<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/xsens_imu">
         <th>drivers/orogen/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           27e3481 3 months ago iMoby import types from orogen/aggregator so that we don't duplicate work done in typekits<br/>
         
           d2ef5b7 5 months ago Janosch Machowinski export status output of the timestamp estimator<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 35 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           2b68244 2 months ago Sylvain Joyeux add some dumping methods for debugging purposes<br/>
         
           d244672 2 months ago Sylvain Joyeux also report the total number of generated transformations<br/>
         
           1711c08 2 months ago Sylvain Joyeux make getSourceFrame and getTargetFrame const<br/>
         
           577b696 2 months ago Sylvain Joyeux gather and report information about the transformer's behaviour<br/>
         
           d1b11a6 3 months ago Sylvain Joyeux use base's logger to report transformer changes<br/>
         
           34f2725 3 months ago Sylvain Joyeux ruby: provide #load_transformer_conf in configuration files<br/>
         
           03af6e0 3 months ago Sylvain Joyeux fix pretty-printing of transformations<br/>
         
           aaaae40 3 months ago Janosch Machowinski bugfix, yield for DynamicTransforms in each_dynamic_transform<br/>
         
           0e55738 3 months ago Janosch Machowinski added non aligned version of the transformer<br/>
         
           d0b1970 3 months ago Janosch Machowinski bugfix: check for existing transformation chain in transformation registration<br/>
         
           4674ab3 3 months ago Janosch Machowinski added method to unregister transformations<br/>
         
           028d3a0 3 months ago Janosch Machowinski remove obsolete dependency to drivers/orogen/aggregator<br/>
         
           bfc1c45 4 months ago Sylvain Joyeux ruby: accept overriding existing transformations<br/>
         
           aa5e49f 4 months ago Jakob Schwendner pass through stream enabling/disabling of streamaligner<br/>
         
           a6a7603 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/roby_integration'<br/>
         
           7275cc4 6 months ago Sylvain Joyeux ruby: allow the transformation_chain caller to specify additional producers<br/>
         
           548c72b 6 months ago Sylvain Joyeux ruby: small style fix<br/>
         
           0086d8f 6 months ago Sylvain Joyeux properly handle identity transformations<br/>
         
           433af9d 6 months ago Sylvain Joyeux ruby: slightly better error message<br/>
         
           d249418 6 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into roby_integration<br/>
         
           3455293 8 months ago Sylvain Joyeux ruby: change the syntax of #static_transform and #dynamic_transform<br/>
         
           c92d8d4 8 months ago Sylvain Joyeux ruby: better error messages<br/>
         
           f3377dd 8 months ago Sylvain Joyeux ruby: define TransformChain#partition<br/>
         
           6d1623e 8 months ago Sylvain Joyeux ruby: optimization in #transform_chain<br/>
         
           12607bd 8 months ago Sylvain Joyeux ruby: modify #load_configuration to accept a list of elements that get joined by File.join<br/>
         
           d7f3145 8 months ago Sylvain Joyeux ruby: fix attribute name in TransformNode<br/>
         
           b732352 8 months ago Sylvain Joyeux ruby: improve pretty-printing of TransformationChain<br/>
         
           d21bb99 8 months ago Sylvain Joyeux ruby: add methods to validate if a typelib type is a valid transformation representation<br/>
         
           663faf9 8 months ago Sylvain Joyeux ruby: documentation<br/>
         
           6d3e33f 8 months ago Sylvain Joyeux ruby: remove ambiguous case in the tests<br/>
         
           32e53d4 8 months ago Sylvain Joyeux ruby: rename Transforer::Transformer into TransformationManager to avoid clashes<br/>
         
           85271ea 8 months ago Sylvain Joyeux ruby: add a root logger to Transformer<br/>
         
           f4042cc 8 months ago Sylvain Joyeux fix installation after the removal of the orogen plugin<br/>
         
           157f649 8 months ago Sylvain Joyeux move the plugin to drivers/orogen/transformer<br/>
         
           4e731cf 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
         </td></tr>
       
       



















       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 39 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           4286cdd 9 weeks ago Alexander Duda disable Q_ENUMS(PositionStyle)<br/>
         
           fb0fe1b 9 weeks ago Alexander Duda disabled vtk/plot2d and added a new Qt based plot2d widget<br/>
         
           7f0f68d 10 weeks ago Sylvain Joyeux add missing dependency on drivers/aggregator<br/>
         
           dd5ee13 10 weeks ago Alexander Duda improve slider to be compatible with rock_replay<br/>
         
           92ad66b 10 weeks ago Allan E. Conquest timeline: use base::logging<br/>
         
           f379db0 10 weeks ago Allan E. Conquest dependency to base/types respective base-lib for logging<br/>
         
           0563244 10 weeks ago Allan E. Conquest add gimp original image for index slider<br/>
         
           c27bfe3 10 weeks ago Allan E. Conquest timeline: indexslider: removed boundingRect implementation<br/>
         
           0a703ff 10 weeks ago Allan E. Conquest renamed index slider image<br/>
         
           aaad5ad 10 weeks ago Allan E. Conquest modified .gitignore<br/>
         
           dcf652c 3 months ago Allan E. Conquest timeline: designer plugin: extended domXml() and implemented includeFile()<br/>
         
           2176f80 3 months ago Allan E. Conquest timeline: added icon for designer<br/>
         
           45f3f41 3 months ago Allan E. Conquest timeline: documentation<br/>
         
           1bc22aa 3 months ago Allan E. Conquest timeline: cleanup<br/>
         
           3b5aea2 3 months ago Allan E. Conquest timeline: changed slider interface. use initIdx instead of initPos.<br/>
         
           b236ffc 3 months ago Allan E. Conquest Merge branch 'timeline'<br/>
         
           e8cf69f 3 months ago Allan E. Conquest minor changes in main<br/>
         
           52e6802 3 months ago Allan E. Conquest improve marker positioning after ssetIndex calls<br/>
         
           9095846 3 months ago Allan E. Conquest emit signal after click on bookmark<br/>
         
           38bf933 3 months ago Allan E. Conquest tmp commit: working on clickable bookmarks. may not compile.<br/>
         
           5099efe 3 months ago Allan E. Conquest TimelineWidget: more slots; cleanup output<br/>
         
           7d40384 3 months ago Allan E. Conquest Slider inherits QObject as well in order to provide signals.<br/>
         
           ee9bc04 3 months ago Allan E. Conquest addBookmark: check for existing bookmarks<br/>
         
           bd5e703 3 months ago Allan E. Conquest slots for getting index values: use getLastIndex() instead of computing index from position<br/>
         
           8befec9 3 months ago Allan E. Conquest experimenting with timeline notification of slider move/release events<br/>
         
           7827d1d 3 months ago Allan E. Conquest IndexSlider now draggable like the others. IndexSlider has png as pixmap now, therefore removed property index_slider_height.<br/>
         
           a387743 3 months ago Allan E. Conquest adjust BoundarySlider position<br/>
         
           bbb1cb5 3 months ago Allan E. Conquest more slots<br/>
         
           28aab16 3 months ago Allan E. Conquest removed non-moccable headers from cmakelists<br/>
         
           8e2585d 3 months ago Allan E. Conquest the pointing offset of the boundary slider is now handled via coordinate translation (setOffset)<br/>
         
           e4a9dad 3 months ago Janosch Machowinski added stream aligner widget<br/>
         
           b125c6c 3 months ago Allan E. Conquest starting use of QGraphicsPixmapItem::setOffset()<br/>
         
           856517c 3 months ago Allan E. Conquest typo<br/>
         
           7599e26 3 months ago Allan E. Conquest Widget now available in Qt Designer through TimelinePlugin.h. Refactorings for that purpose.<br/>
         
           38eb9ad 3 months ago Allan E. Conquest cleanup<br/>
         
           ebc98c3 3 months ago Allan E. Conquest renamed TimelineWidget to Timeline<br/>
         
           8292f35 3 months ago Allan E. Conquest Migrated timeline widget to rock_widget_collection<br/>
         
           c927eea 3 months ago Alexander Duda vtk:SonarDisplay bugfix setUpSonar<br/>
         
           a762646 4 months ago Matthias Goldhoorn Fixed scaling vs. scrolling bugg in PlotWidget, now it scrolls if scroll function is calles<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 299 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           578a74a 5 days ago Alexander Duda vizkit.rb: bugifx calling config for controls<br/>
         
           b9c385e 7 days ago Alexander Duda vizkit.rb bugfix related to Vizkit.display XXX<br/>
         
           76e68b1 8 days ago Alexander Duda Merge branch 'master' into next<br/>
         
           5eef241 8 days ago Alexander Duda vizkit.rb improve calling widget.config<br/>
         
           d239557 8 days ago Alexander Duda vizkit.rb improve pretty_print<br/>
         
           1326da8 8 days ago Alexander Duda vizkit.rb: bugfix widget.config was called twice in some cases<br/>
         
           1beabd2 8 days ago Alexander Duda vizkit.rb: bugfix discovering callback<br/>
         
           f80235c 8 days ago Alexander Duda vizkit.rb fix spelling error<br/>
         
           7ac4350 8 days ago Alexander Duda vizkit.rb vizkit3d: small bugfix pretty_print<br/>
         
           1d4a8d6 8 days ago Alexander Duda vizkit.rb fix pretty_print for vizkit3d plugins<br/>
         
           3936655 10 days ago Alexander Duda Merge branch 'master' of /home/aduda/dev/csurvey/gui/vizkit<br/>
         
           f7e7c6e 10 days ago Alexander Duda vizkit.rb cleanup loading vizkit plugins<br/>
         
           1b667ce 10 days ago Alexander Duda vizkit.rb: bugix support for different vizkit plugin name on the ruby side<br/>
         
           9761609 10 days ago Alexander Duda vizkit.rb vizkit_widget: Do not force the user to have a registered call_back<br/>
         
           3d561ef 10 days ago Alexander Duda vizkit.rb vizkit pluign improve error message<br/>
         
           ddbdabf 11 days ago Alexander Duda vizkit.rb oqconnection: automatically set periodicity<br/>
         
           af2b745 11 days ago Sylvain Joyeux ruby: make sure that proxied_ports is initialized<br/>
         
           9c12c8c 11 days ago Sylvain Joyeux ruby: use Kernel.require instead of Kernel.load<br/>
         
           3f4a007 11 days ago Sylvain Joyeux fix Vizkit3DWidget initial camera setup: look towards X instead of Y<br/>
         
           f32645e 11 days ago Sylvain Joyeux ruby: fix collision betwee the port proxy extension using @ports, which is an instance variable already used by TaskContext<br/>
         
           867f3f1 11 days ago Sylvain Joyeux backport manifest from master<br/>
         
           c69091f 12 days ago Jakob Schwendner look for callback functions in different namespaces also<br/>
         
           6b131ec 12 days ago Sylvain Joyeux ruby: display all caught exceptions in the same way<br/>
         
           cc7e82e 12 days ago Sylvain Joyeux ruby: slightly improve information output<br/>
         
           d95dd63 12 days ago Sylvain Joyeux fix number of arguments for creation lambda in register_3d_plugin<br/>
         
           bca345e 12 days ago Sylvain Joyeux fix management of port_proxy output<br/>
         
           fdacf6d 12 days ago Sylvain Joyeux ruby: fix error message<br/>
         
           9226581 12 days ago iMoby make the osdeps for the ruby part of vizkit optional<br/>
         
           5f977f5 13 days ago Alexander Duda vizkit.rb disable log for port_proxy<br/>
         
           8f0293d 2 weeks ago Alexander Duda vizkit.rb TaskProxy add support for NoModel Exception<br/>
         
           9f86bc2 2 weeks ago Alexander Duda vizkit.rb: detect when TypelibQtAdapter is not build<br/>
         
           8977716 2 weeks ago Jakob Schwendner fix ruby to only take first argument<br/>
         
           8f6e41e 2 weeks ago Jakob Schwendner ruby: fix plugin discovery w.r.t. recent changes (and probably a mismerge)<br/>
         
           d645d64 2 weeks ago Alexander Duda vizkit.rb oqconnection: proper error message for connections to input ports<br/>
         
           8badacf 2 weeks ago Alexander Duda vizkit.rb port proxy: add methods to determine if it's an input or output<br/>
         
           7036580 2 weeks ago Alexander Duda vizkit.rb: add Vizkit::Timer<br/>
         
           de1bea6 2 weeks ago Jakob Schwendner typelibqtadapter: changed warn to info for queries which don't have a typelib type<br/>
         
           774c062 2 weeks ago Alexander Duda vizkit.rb: uiloader workaround to quit a running rock-replay<br/>
         
           8bd4598 2 weeks ago Alexander Duda vizkit.rb: uiloader save widgets created via load<br/>
         
           79ce55b 2 weeks ago Alexander Duda ruby.rb uiloader: bugfix ubuntu 10.04<br/>
         
           aa66d34 2 weeks ago Alexander Duda vizkit.rb log control: bug fix<br/>
         
           bd90e5c 2 weeks ago Alexander Duda vizkit.rb log_control: add workaround to close all windows<br/>
         
           d0ccdba 2 weeks ago Alexander Duda vizkit.rb log_conrol: allow setting the index<br/>
         
           4b4ea61 2 weeks ago Alexander Duda vizkit.rb uiloader. Check path before loading extensions<br/>
         
           1a364c7 3 weeks ago Sascha Arnold Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           22786b5 3 weeks ago Sascha Arnold added compatibility to get the callback function in the vizkit 3d plugin case<br/>
         
           ec97c2a 3 weeks ago Sylvain Joyeux ruby: fix if statement (was always true)<br/>
         
           fc184d1 3 weeks ago Sylvain Joyeux ruby: forward-compatibility fixes for Ruby 1.9<br/>
         
           1bdbed0 3 weeks ago Sascha Arnold fixed having multiple vizkit plugins of the same type<br/>
         
           01d980f 3 weeks ago Janosch Machowinski bugfix: Only raise invalid argument error if no update method AND filter are given<br/>
         
           d8bbcf8 3 weeks ago Alexander Duda rock-replay: improve error message if log file is empty<br/>
         
           6111ec2 3 weeks ago Alexander Duda vizkit.rb typelib qt adapter: improve error message for type miss-match<br/>
         
           416bd59 4 weeks ago Alexander Duda vizkit.rb: small clean up as port.reader.read always returns the last sample<br/>
         
           e2a5417 4 weeks ago Alexander Duda vizkit.rb uiloader: Do not raise if an extension can no be loaded<br/>
         
           c111011 4 weeks ago Alexander Duda vizkit.rb TaskProxy: Do not raise if a sub field is not available<br/>
         
           f0b32ae 4 weeks ago Alexander Duda vizkit.rb Plot2d: update to initialize_vizkit_extension<br/>
         
           b033649 4 weeks ago Sylvain Joyeux ruby: define Vizkit.ensure_orocos_initialized<br/>
         
           4b58bdc 4 weeks ago Matthias Goldhoorn Added SonarGround Distance visualization Plugin<br/>
         
           3f6f4e2 4 weeks ago Alexander Duda vizkit.rb ExportToYaml: fix window title<br/>
         
           b796417 4 weeks ago Alexander Duda vizkit.rb: Bugfix unit test<br/>
         
           345fc5c 4 weeks ago Alexander Duda vizkit.rb: default widget was not found in some cases<br/>
         
           8d1f45e 4 weeks ago Alexander Duda vizkit.rb: bugfix unit tests<br/>
         
           5dc8182 4 weeks ago Alexander Duda vizkit.rb StructViewer is now a default widget<br/>
         
           71e0a33 4 weeks ago Alexander Duda vizkit.rb TaskProxy: bugfix ping<br/>
         
           53e6a46 4 weeks ago Alexander Duda vizkit.rb ExportToYAML: remove debug output<br/>
         
           4852016 4 weeks ago Alexander Duda Merge remote branch 'autobuild/callbacks_are_block'<br/>
         
           f00f4ce 4 weeks ago Alexander Duda vizkit.rb: add plugin which exports a sample as YAML file<br/>
         
           3ac219b 4 weeks ago Alexander Duda vizkit.rb TaskProxy add method read to PortPorxy<br/>
         
           e2a5747 4 weeks ago Alexander Duda vizkit.rb TaskProxy: move method __subfield from Reader to port<br/>
         
           e46c91b 4 weeks ago Alexander Duda vizkit.rb tree_modeler: check if plugin is a Qt::Widget<br/>
         
           82159c6 4 weeks ago Alexander Duda vizkit.rb task_proxy.rb: bugfix type_name<br/>
         
           02e846a 4 weeks ago Alexander Duda vizkit.rb port_proxy: workaround for type_name int<br/>
         
           fca0393 4 weeks ago Alexander Duda vizkit.rb tree modeler: automatically remove old ports<br/>
         
           ec37c10 4 weeks ago Sylvain Joyeux ruby: extend load_extensions to search in $LOAD_PATH as well<br/>
         
           ec40b9f 4 weeks ago Sylvain Joyeux fix argument and return value handling in the typelib/qt adapter<br/>
         
           21655f1 4 weeks ago Sylvain Joyeux integrate the virtual joystick<br/>
         
           3d284a8 4 weeks ago Sylvain Joyeux properly report loading errors<br/>
         
           f22414c 4 weeks ago Sylvain Joyeux normalize all callback functions to the UnboundMethod API<br/>
         
           29523a6 4 weeks ago Sylvain Joyeux SonarDisplay does not exist if rock_widget_collection got compiled without VTK<br/>
         
           d77561a 4 weeks ago Alexander Duda vizkit.rb bugfix treeview related to containers<br/>
         
           98436a2 4 weeks ago Alexander Duda vizkit.rb: bugfix TaskProxy type_name<br/>
         
           608972a 4 weeks ago Alexander Duda vizkit.rb: Plot2d add time window cache<br/>
         
           5224aaa 5 weeks ago Chris Mueller Merge branch 'master' of http://git.gitorious.org/rock-gui/vizkit<br/>
         
           569f4b7 5 weeks ago Chris Mueller missing dependency for drivers/orogen/transformer. Otherwise each call for Vizkit ends up in a missing typekit for 'transformer'.<br/>
         
           6ca7196 5 weeks ago Javier Hidalgo Carrio Merge branch 'master' of http://git.gitorious.org/rock-gui/vizkit<br/>
         
           7555d98 5 weeks ago Javier Hidalgo Carrio plot2d.rb: plot added for base/vector3d type<br/>
         
           3546339 5 weeks ago Janosch Machowinski add updateData invocabels to multiple plugins<br/>
         
           d79d6d6 5 weeks ago Janosch Machowinski bugfix: return correct method signature<br/>
         
           7cc35f3 5 weeks ago Javier Hidalgo Carrio plot2d.rc: changed to /base/Quaterniond for orientation plot and angle values are now ploted in degrees<br/>
         
           f8967cf 6 weeks ago Alexander Duda vizkit.rb add widget to show the state of vizkit.rb<br/>
         
           c8d8d32 6 weeks ago Sylvain Joyeux vizkit.rb: in TaskProxy, cleanup the orocos-not-initialized error case<br/>
         
           ee78315 6 weeks ago Jakob Schwendner fixed colors for rigidbodystate visualization<br/>
         
           a1cc080 6 weeks ago Alexander Duda vizkit.rb: TaskProxy fixing bug related to sub fields and their type_names<br/>
         
           1285fa6 6 weeks ago Alexander Duda vizkit.rb: improve error message if an qt designer widget cannot be loaded<br/>
         
           b8e254c 6 weeks ago Allan E. Conquest Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           668c4ee 6 weeks ago Allan E. Conquest rename module QtTyplelibExtension to QtTypelibExtension (typo fix)<br/>
         
           f25395d 7 weeks ago Allan E. Conquest state_viewer: adapt to change in vizkit.rb from commit 0cc3ffcd8017bf1c001393a164a201dd1b08d60d: use_task? renamed to log_task<br/>
         
           0e82e84 7 weeks ago Allan E. Conquest state_viewer: adapt to change in vizkit.rb from commit 0cc3ffcd8017bf1c001393a164a201dd1b08d60d: use_task? renamed to log_task<br/>
         
           d8d9ae3 7 weeks ago Alexander Duda vizkit.rb: image view widget is not using qt typelib adapter per default<br/>
         
           bd2e19b 7 weeks ago Alexander Duda vizkit.rb qt typelib adapter: convert parameters into array<br/>
         
           cd10f59 7 weeks ago Alexander Duda vizkit.rb task_proxy: bugfix disconnect_from<br/>
         
           e04f178 7 weeks ago Alexander Duda vizkit.rb bugfix deleting port_proxy ports<br/>
         
           16ccfdd 7 weeks ago Alexander Duda vizkit.rb state_viewer bugfix<br/>
         
           72d9757 7 weeks ago Alexander Duda vizkit.rb: TaskProxy check if orocos is initialized<br/>
         
           c2ec6b1 7 weeks ago Alexander Duda vizkit.rb QtTypelibExtension: bugfix method_missing<br/>
         
           276d32c 7 weeks ago Alexander Duda Revert "vizkit.rb: use Delegator class to embed TypelibQtAdapter into all loaded plugins"<br/>
         
           e06d030 7 weeks ago Alexander Duda VizPluginBase::setPluginName: change to QString<br/>
         
           13a112a 7 weeks ago Alexander Duda vizkit.rb: use Delegator class to embed TypelibQtAdapter into all loaded plugins<br/>
         
           a4ef0e8 7 weeks ago Alexander Duda RigidBodyStateVisualization: set plugin name to loaded file name<br/>
         
           8e3c351 7 weeks ago Alexander Duda Vizkit3DPlugin: add support for changing plugin names<br/>
         
           966e73b 7 weeks ago Sylvain Joyeux bin: make rock-display set public_logs to false<br/>
         
           712451d 7 weeks ago Alexander Duda vizkit.rb VizkitPlugin, LaserScanViz: emit propertyCchanged<br/>
         
           b9aa34f 7 weeks ago Alexander Duda vizkit PropertyBrowser: do not expand by default<br/>
         
           55ad1b4 8 weeks ago Alexander Duda Vizkit3DWidget: factor out updateTransformations<br/>
         
           819f810 8 weeks ago Alexander Duda bin: make rock-display set public_logs to false<br/>
         
           6593df8 8 weeks ago Alexander Duda LaserScanVisualization: add colorize, disable polygon, cloneCurrentViz<br/>
         
           2019671 8 weeks ago Alexander Duda Vizkit3DPlugin: add mechanism to keep old visualization graphs<br/>
         
           9de14c1 8 weeks ago Alexander Duda vizkit.rb improve editor for rigid body state<br/>
         
           f047709 8 weeks ago Sylvain Joyeux ruby: make the port proxy extension instance-specific<br/>
         
           edaa076 8 weeks ago Sylvain Joyeux allow Ruby extensions to C++ widgets to have a initialize_vizkit_extension method<br/>
         
           69f7d6b 8 weeks ago Alexander Duda vizkit.rb: improve error message<br/>
         
           c40fa05 8 weeks ago Alexander Duda vizkit.rb trajectory viz: add support for Eigen::Vector3<br/>
         
           317b044 8 weeks ago Alexander Duda vizkit.rb typelib_qt_adapter: bugfix wrong method name<br/>
         
           c0fc394 8 weeks ago Alexander Duda vizkit.rb tree_modeler bugfix:<br/>
         
           76a4670 8 weeks ago Alexander Duda vizkit.rb: add widget to generate sequences of RigidBodyStates<br/>
         
           b3d2899 8 weeks ago Alexander Duda vizkit.rb plot2d: bugfix legend<br/>
         
           e15b4f0 8 weeks ago Alexander Duda vizkit.rb: add username to the port_proxy name<br/>
         
           e6b7ff1 8 weeks ago Alexander Duda vizkit.rb plot2d: limit replot to 4Hz<br/>
         
           f89e885 9 weeks ago Alexander Duda vizkit.rb remove some more to_a<br/>
         
           2d4acc9 9 weeks ago Alexander Duda vizkit.rb: update to_a to Array()<br/>
         
           d647b68 9 weeks ago Jakob Schwendner register TrajectoryVisualization with ui_loader<br/>
         
           0d67bd7 9 weeks ago Alexander Duda vizkit.rb small bugfix TaskProxy/TaskInspector<br/>
         
           9648ba6 9 weeks ago Alexander Duda vizkit.rb: small bugfix related to PortProxy<br/>
         
           cc32c5e 9 weeks ago Alexander Duda vizkit.rb TaskInspector: add black list<br/>
         
           29a3137 9 weeks ago Alexander Duda vizkit.rb TaskProxy: auto disconnect all port_proxy ports<br/>
         
           90f864e 9 weeks ago Alexander Duda vizkit.rb rock-display: add option --debug<br/>
         
           1953787 9 weeks ago Alexander Duda vizkit.rb plot2d: add support for LaserScan and some more vectors<br/>
         
           fcb5b41 9 weeks ago Alexander Duda vizkit.rb plot2d: add support for base/Angle<br/>
         
           ee8727a 9 weeks ago Alexander Duda vizkit.rb plot2d: all sub types are handled as strings<br/>
         
           4b1f4f5 9 weeks ago Alexander Duda vizkit.rb plot2d: add support for vector&lt;uint8_t&gt;<br/>
         
           cd1e330 9 weeks ago Alexander Duda vizkit.rb bugfix TaskProxy<br/>
         
           8348f02 9 weeks ago Alexander Duda vizkit.rb tree_modeler: bugfix<br/>
         
           9613c71 9 weeks ago Alexander Duda vizkit.rb plot2d: add support for plotting SonarBeam<br/>
         
           b1727b7 9 weeks ago Alexander Duda vizkit.rb bugfix related to port subfield display<br/>
         
           cb18a04 9 weeks ago Alexander Duda vizkit.rb rock-replay: fix --debug option<br/>
         
           dfb90b3 9 weeks ago Alexander Duda vizkit.rb plot2d: fixing plotting fields like port.data[i]<br/>
         
           e361999 9 weeks ago Javier Hidalgo Carrio vizkit.rb plot2d: x-axis time bug<br/>
         
           e7d472d 9 weeks ago Javier Hidalgo Carrio vizkiit.rb plot2d: add support for Eigen::Quaternion<br/>
         
           94ef210 9 weeks ago Patrick Merz Paranhos bug fix for missing method on ruby for the RigidBodyVisualization<br/>
         
           96718be 9 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           b677627 9 weeks ago Sylvain Joyeux Revert "rock-display: disable Bundles"<br/>
         
           181a32d 9 weeks ago Sylvain Joyeux Revert "do not keep the logs generated by the rock-display tool by default"<br/>
         
           40a49bd 9 weeks ago Alexander Duda vizkit.rb rock-plot improve help / indentation<br/>
         
           3261111 9 weeks ago Alexander Duda rock-display: disable Bundles<br/>
         
           3e303b5 9 weeks ago Alexander Duda rock-display improve error handling<br/>
         
           e65ea2f 9 weeks ago Alexander Duda vizkit.rb add Plot2d integration<br/>
         
           fe98aa4 9 weeks ago Alexander Duda vizkit.rb: do not use port porxy if Orocos is not initialized<br/>
         
           79cf90e 9 weeks ago Alexander Duda vizkit.rb uiloader: improve reuse of widgets<br/>
         
           7d915f0 9 weeks ago Alexander Duda vizkit.rb: context menu for subfields<br/>
         
           9064b9d 9 weeks ago Alexander Duda vizkit.rb bugfix: subfields for log ports were not working<br/>
         
           f368727 9 weeks ago Alexander Duda vizkit.rb bugfix port_proxy<br/>
         
           5ea93a6 9 weeks ago Alexander Duda vizkit.rb: bugfix structviewer<br/>
         
           65f95e9 9 weeks ago Alexander Duda Bugfix: Do not use Types::XXX if you cannot be sure the typekit is loaded<br/>
         
           9fb99dc 9 weeks ago Alexander Duda Bugfix: Do not use Types::XXX if you cannot be sure the typekit is loaded<br/>
         
           479cbb2 9 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           cd49421 9 weeks ago Sylvain Joyeux allow to load vizkit without requiring a server<br/>
         
           2fbd2e3 9 weeks ago Sylvain Joyeux ruby: redirect the port proxy output to a file, to avoid spamming the console<br/>
         
           ab8bfe6 9 weeks ago Sylvain Joyeux do not keep the logs generated by the rock-display tool by default<br/>
         
           05f8917 9 weeks ago Sylvain Joyeux ruby: in v3d support, properly report when a wrong data type is given to the view<br/>
         
           57613b2 9 weeks ago Sylvain Joyeux ruby: in the qt/typelib adapter, handle the presence of custom convertions properly<br/>
         
           5beefa0 9 weeks ago Sylvain Joyeux make rock-display use Bundles<br/>
         
           9d92271 10 weeks ago Alexander Duda vizkit.rb: bugfix OQConnection<br/>
         
           922ce4a 10 weeks ago Alexander Duda vizkit.rb: bugfix OQConnection<br/>
         
           7b558be 10 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           c2ddccc 10 weeks ago Alexander Duda vizkit.rb: improve log_control<br/>
         
           7d4031b 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           48cdf30 10 weeks ago Alexander Duda vizkit.rb: fix unit tests<br/>
         
           b428a9b 10 weeks ago Alexander Duda vizkit.rb improve treeView<br/>
         
           911d7df 10 weeks ago Alexander Duda vizkit.rb add units test for Vizkit.connect_port_to<br/>
         
           286160d 10 weeks ago Alexander Duda vizkit.rb: bugfix for connecting log ports to port_proxy<br/>
         
           17bb7d3 10 weeks ago Alexander Duda vizkit.rb bugfix: Vizkit.connect_port_to<br/>
         
           acd29f2 2 months ago Alexander Duda vizkit.rb: bugfix oqconnection<br/>
         
           e7d4905 2 months ago Alexander Duda vizkit.rb some improvements for live display<br/>
         
           7304dd4 3 months ago Alexander Duda vizkit.rb: improve error message when no default Uiloader is present<br/>
         
           ab545c8 3 months ago Sylvain Joyeux ruby: fix policy management in port proxying<br/>
         
           f9c842a 3 months ago Sylvain Joyeux ruby: fix clash in default policy definition for reader/writer proxies<br/>
         
           cf79986 3 months ago Sylvain Joyeux ruby: don't rescue Interrupt<br/>
         
           3f5eaa4 3 months ago Sylvain Joyeux ruby: fix proxying of ports that are opaques or contain opaques<br/>
         
           bf37e5a 3 months ago Sylvain Joyeux ruby: improve some error reporting<br/>
         
           c4f19c4 3 months ago Alexander Duda vizkit.rb: bugfix for commit aeba062ec3bfdcfa3563bd5567d944faaa166830<br/>
         
           ba1745d 3 months ago Alexander Duda vizkit.rb: bugfix related to Log::Ports and code blocks<br/>
         
           aeba062 3 months ago Sylvain Joyeux create the UILoader only when needed<br/>
         
           1c9a315 3 months ago Alexander Duda vizkit.rb: improve error message<br/>
         
           c9b6a07 3 months ago Alexander Duda vizkit.rb: set default widget for Frame and FramePair<br/>
         
           667142d 3 months ago Alexander Duda add dependency tools/port_proxy<br/>
         
           583e638 3 months ago Alexander Duda vizkit.rb: add noproxy option to task_inspector<br/>
         
           21dc1e3 3 months ago Alexander Duda vizkit.rb: add suport for disabling tooling in task_inspector<br/>
         
           6a526d1 3 months ago Alexander Duda Merge branch 'port_proxy'<br/>
         
           e64e1d5 3 months ago Alexander Duda vizkit.rb: move orogen port_proxy related stuff to the its TaskContext<br/>
         
           672b9d8 3 months ago Sascha Arnold deactivate vizualisation frame selection if no frame is available<br/>
         
           794361b 3 months ago Sylvain Joyeux remove debug mode<br/>
         
           d756927 3 months ago Alexander Duda vizkit.rb: change method name to get all plugins<br/>
         
           b2398cc 3 months ago Alexander Duda vizkit.rb: every ruby instance has its own task proxy<br/>
         
           4bbc2d7 3 months ago Alexander Duda vizkit.rb small bugfix related to replay of logfiles<br/>
         
           b627f2f 3 months ago Sascha Arnold improve style of the frame selection combo box<br/>
         
           086edaf 3 months ago Alexander Duda vizkit.rb some more bug fixes<br/>
         
           c124245 3 months ago Sylvain Joyeux viz: in LaserScanVisualization, remove usage of the old ruby binding API<br/>
         
           e301a07 3 months ago Sylvain Joyeux vizkit3d,ruby: add some debugging output<br/>
         
           5948f17 3 months ago Sylvain Joyeux ruby: small cleanup in the Typelib/Qt adaption logic<br/>
         
           26519cf 3 months ago Sylvain Joyeux v3d: pass the addPlugin / removePlugin calls in the same thread than the caller<br/>
         
           e2445a0 3 months ago Sylvain Joyeux viz: in laser scan viz, add a property to use Y as the forward axis<br/>
         
           18719dd 3 months ago Alexander Duda vizkit.rb: some bug fixes<br/>
         
           7658a5a 3 months ago Sylvain Joyeux ruby: when an ambiguity exists about widgets, display the list of possibilities<br/>
         
           0cc3ffc 3 months ago Alexander Duda vizkit.rb improve unit test + bug fixing<br/>
         
           e7a274d 3 months ago Jakob Schwendner fix compilation of TypelibQtAdapter<br/>
         
           fafbbfa 3 months ago Jakob Schwendner added QVisualizationTestWidget.hpp to headers<br/>
         
           afb499f 3 months ago Alexander Duda vizkit.rb moved all OQConnection realted stuff into oqconnection.rb<br/>
         
           20ebf47 3 months ago Alexander Duda vizkit.rb improve unit tests + some bug fixes<br/>
         
           04ccc90 3 months ago Alexander Duda vizkit.rb improve unit tests<br/>
         
           cde980d 3 months ago Alexander Duda vizkit.rb merged some classes (more testing is needed!!!)<br/>
         
           f317fcb 3 months ago Sylvain Joyeux add a pc file for the vizkit3d plugins<br/>
         
           cb1aa8c 3 months ago Sylvain Joyeux PickHandler can be needed by client code, expose the header<br/>
         
           49cb910 3 months ago Sylvain Joyeux forwar declare QComboBox for the Vizkit3DWidget<br/>
         
           e1f6d5a 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into transformer_integration<br/>
         
           a02d4f8 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/transformer_integration' into transformer_integration<br/>
         
           2e73c66 3 months ago Sylvain Joyeux cleanup inclusions, installed headers and CMake code<br/>
         
           d063dfb 3 months ago Alexander Duda vizkit.rb:TaskProxy: add support for subfield reader<br/>
         
           29bb24e 3 months ago Alexander Duda vizkit.rb TaskProxy is now compatible to port_proxy<br/>
         
           dc4d01d 3 months ago Janosch Machowinski added ComboBox for selecting the display frame<br/>
         
           f5ac372 3 months ago Janosch Machowinski remove debug output<br/>
         
           58dfb2a 3 months ago Janosch Machowinski register LaserScanViz as default 3d plugin for base laserscan<br/>
         
           6af2349 3 months ago Janosch Machowinski set correct frame for every plugin<br/>
         
           ccf0460 3 months ago Janosch Machowinski LaserScanViz: Bugfix, init position and orientation<br/>
         
           783306e 3 months ago Janosch Machowinski bugfix: Do not mix Qt and Typelib types in interfaces<br/>
         
           0ce7bf5 3 months ago Sylvain Joyeux convert to the Rock cmake macros<br/>
         
           f40e206 3 months ago Sylvain Joyeux viz: explicitely define destructors to avoid issues with inline-generated desctructors<br/>
         
           059f213 3 months ago Alexander Duda add readerproxy<br/>
         
           6350fb1 3 months ago Alexander Duda vizkit.rb: bugfix task_proxy: was mixing tasks<br/>
         
           a36df43 3 months ago Alexander Duda vizkit.rb: improve taskproxy CORBAError<br/>
         
           7e4e1aa 3 months ago Janosch Machowinski extended  Vizkit3DWidget all all Vizkit3dPlugins with the QtTypelibAdapter<br/>
         
           338ca62 3 months ago Janosch Machowinski TypelibQtAdapter: reworked passing of QObject pointer<br/>
         
           3533841 3 months ago Alexander Duda vizkti.rb: bugfix setup_widget<br/>
         
           7c78c85 3 months ago Janosch Machowinski extended  Vizkit3DWidget all all Vizkit3dPlugins with the QtTypelibAdapter<br/>
         
           a8c3def 3 months ago Janosch Machowinski TypelibQtAdapter: reworked passing of QObject pointer<br/>
         
           ed470a9 3 months ago Sylvain Joyeux viz: in the RBS visualizer, use the new slot-based communication mechanism instead of the old Ruby adapter mechanism<br/>
         
           5ce9c3a 3 months ago Sylvain Joyeux ruby: register the RBS visualization for RBS, not RBS_m<br/>
         
           9c178df 3 months ago Sylvain Joyeux remove some annoying debugging output<br/>
         
           50a37c0 3 months ago Sylvain Joyeux ruby: OutputPort#read does not exist, use #reader(:init=&gt;true).read<br/>
         
           bb83137 3 months ago Sylvain Joyeux ruby: pass information from the transformer broadcaster into the Vizkit3D widgets<br/>
         
           3a1829e 3 months ago Sylvain Joyeux ruby: move the 3D plugin registration methods to instance methods of UiLoader<br/>
         
           9da5ca6 3 months ago Sylvain Joyeux ruby: add a logger on Vizkit, and display exceptions with backtraces<br/>
         
           b6920a3 3 months ago Sylvain Joyeux add missing dependency on the transformer<br/>
         
           dae19dd 3 months ago Sylvain Joyeux Merge branch 'master' of http://git.gitorious.org/rock-gui/vizkit<br/>
         
           95b9f09 3 months ago Sylvain Joyeux add :init =&gt; true by default on all connection policies<br/>
         
           58d9536 3 months ago Alexander Duda vizkit.rb bugfix setup_widget<br/>
         
           d00854a 3 months ago Alexander Duda vizkit.rb add support for displaying log markers<br/>
         
           c06e11c 3 months ago Janosch Machowinski transformer vizkit integration<br/>
         
           470b14f 3 months ago Sylvain Joyeux Merge branch 'master' of http://git.gitorious.org/rock-gui/vizkit<br/>
         
           c9ea495 3 months ago Janosch Machowinski added vizkit3d plugin for base/samples/laser_scan<br/>
         
           1f1c494 3 months ago Janosch Machowinski moved vizkit base visualizers into own library<br/>
         
           a22ca74 3 months ago Janosch Machowinski added TypelibQtAdapter<br/>
         
           5742eea 3 months ago Alexander Duda add widget for generating log markers<br/>
         
           47d6e0d 3 months ago Alexander Duda rock-display: immediately refresh<br/>
         
           7feb345 3 months ago Alexander Duda vizkit.rb: display, control improvements<br/>
         
           69d7b18 3 months ago Alexander Duda vizkit.rb uiloader: some improvments<br/>
         
           78cba17 3 months ago Alexander Duda vizkit.rb: add multi_value? to widgets which can display multiple values<br/>
         
           3bdbc32 3 months ago Alexander Duda vizkit.rb tree_modeler add support for stream annotations<br/>
         
           c623400 3 months ago Sylvain Joyeux ruby: store the list of registered vizkit3d widgets<br/>
         
           a96b339 3 months ago Sylvain Joyeux ruby: store the path to the files in which the widgets are registered<br/>
         
           124fd0e 3 months ago Sylvain Joyeux ruby: allow users to register widgets for opaque types, not the intermediate types<br/>
         
           850c894 3 months ago Sylvain Joyeux cmake: build the Ruby API documentation, and make it accessible from the doxygen main page<br/>
         
           0d50557 3 months ago Sylvain Joyeux use Qt properties to configure the RBS visualizer<br/>
         
           45a0c93 3 months ago Alexander Duda vizkit.rb display meta data for output ports<br/>
         
           c04ec5a 3 months ago Alexander Duda vizkit.rb update CameraControl<br/>
         
           c3eeba9 3 months ago Alexander Duda vizkit.rb bug fix tree_modeler<br/>
         
           ebffec5 3 months ago Alexander Duda vizkit.rb: rock-replay opens a file dialog if no file is given<br/>
         
           05c990d 3 months ago Alexander Duda vizkit.rb: SonarDisplay default setting<br/>
         
           75be97f 3 months ago Alexander Duda vizkit.rb: tree_modeler reset_exception<br/>
         
           ca2a01b 3 months ago Alexander Duda vizkit.rb: SonarDisplay is automatically reconfigured<br/>
         
           66e7ac6 4 months ago Alexander Duda vizkit.rb:log_control was broken<br/>
         
           4faf842 4 months ago Alexander Duda vizkit.rb improve rock-display<br/>
         
           4794412 4 months ago Alexander Duda vizkit.rb:TreeModeler: add tool tip for tasks,ports,properties<br/>
         
           f16d665 4 months ago Alexander Duda ruby.rb:tree_modeler: extend task context menu<br/>
         
           d0d1f87 4 months ago Alexander Duda vizkit.rb: TreeModeler: eval double and float fields<br/>
         
           5b3b69b 4 months ago Alexander Duda vizkit.rb add widget to edit /base/Angle<br/>
         
           857358e 4 months ago Alexander Duda vizkit.rb: improve tree_modeler<br/>
         
           d15c918 4 months ago Alexander Duda vizkit.rb: add mechanism to load control widgets<br/>
         
           0cbc486 4 months ago Alexander Duda Vizkit3DPlugin: add mechanism to allow having children of Vizkit3DPlugins<br/>
         
           cecdaea 4 months ago Janosch Machowinski Added a new src file for small helper functions<br/>
         
           c9303b5 5 months ago Alexander Duda vizkit.rb: add integration for SonarDisplay<br/>
         
           5533152 5 months ago Sylvain Joyeux ruby: change how time is formatted in the tree modeler<br/>
         
           4b707c2 5 months ago Sylvain Joyeux add support for rock-replay to actually replay into a task<br/>
         
           879ba08 5 months ago Marc Hildebrandt vizkit.rb: improve recovering after a connection died<br/>
         
           4a22435 5 months ago Alexander Duda vizkit.rb: remove filtering for OQConnections and OLogConnections<br/>
         
           1be990a 5 months ago Alexander Duda vizkit.rb add cleanup to task inspector context menu<br/>
         
           222c2ca 5 months ago Alexander Duda vizkit.rb: rock-display displays all tasks if no task is specified<br/>
         
           821aada 5 months ago Alexander Duda vizkit.rb tree modeler no longer reads all ports<br/>
         
           a7f0916 5 months ago Alexander Duda vizkit.rb task inspector offers widgets for tasks as popup menue<br/>
         
           0bea5d4 5 months ago Alexander Duda vizkit.rb treemodeler: changed signature of initialize<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 7 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           a9e175e 3 months ago Jakob Schwendner fixed linking problem<br/>
         
           1a1a15b 3 months ago Jan Frädrich added a function to rotate frames by 180 degrees<br/>
         
           c23a419 4 months ago Jakob Schwendner added method to get the frame transform from the extrinsic parameters<br/>
         
           7c115bf 4 months ago Jakob Schwendner make stereo rectification zoom so that we only have valid pixels visible<br/>
         
           37c17b9 5 months ago Christopher Gaudig fixed manifest: depend close-tag<br/>
         
           a2222a4 5 months ago Stefan Haase Integrates MODE_JPEG using jpeg_conversion using IJG jpeg library.<br/>
         
           711df97 6 months ago Stefan Haase Re-adds boost components needed for compilation.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/libelas">
         <th>image_processing/libelas</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="25"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_25"><td>
         
           af401c5 5 months ago Jan Frädrich Merge branch 'upstream'<br/>
         
           60d8b0f 5 months ago Jan Frädrich upstream checkin from libelas website<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/orogen/image_preprocessing">
         <th>image_processing/orogen/image_preprocessing</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           898f44f 4 months ago Jakob Schwendner made dependency to base/types explicit and added it in orogen file<br/>
         
         </td></tr>
       
       



       <tr class="name" id="multiagent/fipa_acl">
         <th>multiagent/fipa_acl</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 12 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           dce0d77 9 weeks ago Thomas Roehr Really fix binary message parsing and corresponding unitests.<br/>
         
           d7814bc 2 months ago Thomas Roehr Add hasBinaryContent function<br/>
         
           d58f718 2 months ago Thomas Roehr Improve documentation<br/>
         
           8b95a2f 2 months ago Thomas Roehr Add failing message to negative-test-messages<br/>
         
           fb34932 2 months ago Thomas Roehr Fix handling of binary message content<br/>
         
           77be61a 3 months ago Thomas Roehr Fix unit tests<br/>
         
           d4510e9 3 months ago Thomas Roehr Add standard output for message generator<br/>
         
           84158bf 3 months ago Thomas Roehr Improve parser tests and debugging<br/>
         
           7a10e3a 3 months ago Thomas Roehr Fix missing namespace qualifier<br/>
         
           394b995 4 months ago Thomas Roehr Ajust to using exceptions and use boost::date_time for setting ReplyBy<br/>
         
           1fd32bb 4 months ago Thomas Roehr Fix performance of message generator<br/>
         
           1c05dab 5 months ago Thomas Roehr Adapt log level and switch to using compiler warning for default transitions.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 51 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           65f3923 11 days ago Sylvain Joyeux define getOpaqueSample, as the symmetric of getTypelibSample<br/>
         
           716f817 8 weeks ago Alexander Duda Merge remote branch 'autobuild/next'<br/>
         
           57f594e 9 weeks ago Sylvain Joyeux enable the mqueue by default<br/>
         
           2db3107 9 weeks ago Sylvain Joyeux fix the mqueue transport w.r.t. the latest changes in the typelib transport API<br/>
         
           11af363 9 weeks ago Sylvain Joyeux remove unneeded begin/rescue block<br/>
         
           282683a 9 weeks ago Sylvain Joyeux use #import_typekit in #using_typekit instead of #load_orogen_project<br/>
         
           5fed43f 9 weeks ago Sylvain Joyeux in Project#using_typekit, avoid loading the same typekit multiple times<br/>
         
           b0e174f 9 weeks ago Sylvain Joyeux fix ImportedTypekit#interface_type?<br/>
         
           8378fef 9 weeks ago Sylvain Joyeux use sets for imported typekit's typelist and interface_typelist<br/>
         
           5c5a5a8 9 weeks ago Sylvain Joyeux small fixes to manual orogen file registration<br/>
         
           275ca6e 9 weeks ago Sylvain Joyeux factor out common code in the typelib transports, and give access to the registry<br/>
         
           0faac58 9 weeks ago Sylvain Joyeux define used_task_libraries on ImportedProject<br/>
         
           30ae6da 9 weeks ago Sylvain Joyeux in #find_interface_type, avoid an expensive operation for a debug message<br/>
         
           2b860bf 9 weeks ago Sylvain Joyeux avoid some unnecessary computations by using the fact that typelib Type classes are immutable<br/>
         
           d34c69c 9 weeks ago Sylvain Joyeux avoid the &:symbol structure in hot codepaths<br/>
         
           2c44c97 9 weeks ago Sylvain Joyeux replace some STDERR.puts by Orocos.warn<br/>
         
           e29f10b 9 weeks ago Sylvain Joyeux send some load progress info on Orocos.info<br/>
         
           0404127 9 weeks ago Sylvain Joyeux spec: display whether a task needs configuration or not when pretty-printing<br/>
         
           3ce42fd 9 weeks ago Sylvain Joyeux remove debugging output<br/>
         
           21b7d0f 9 weeks ago Sylvain Joyeux implement find_opaques_for_intermediate<br/>
         
           d8cd3c6 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           0d8539a 2 months ago Jakob Schwendner int and other basic types don't have a typelib-normalized name in RTT, so add some special logic<br/>
         
           c2e449d 2 months ago Sylvain Joyeux gen: make the last argument of add_user_method and add_base_method an empty string<br/>
         
           84c8518 2 months ago Sylvain Joyeux make the generated transports return false if we don't add a new protocol handler<br/>
         
           71f9659 3 months ago Thomas Roehr Fix stray dot checking<br/>
         
           7ad2bf3 3 months ago Thomas Roehr Fix spelling<br/>
         
           07a2fed 3 months ago Jakob Schwendner corba: the transport must link to the typekit-dependent libraries<br/>
         
           b1ab340 3 months ago Sylvain Joyeux gen: factor out the symbolic link update logic<br/>
         
           cd343a3 3 months ago Sylvain Joyeux make using_library(name, :typekit =&gt; false) neither include nor link<br/>
         
           7a5f050 3 months ago Sylvain Joyeux fix occurence of &lt;:: in typelib-to-C++ code generation<br/>
         
           3a83ba1 3 months ago Jakob Schwendner fix intermediate_type_name_for to return normalized typenames<br/>
         
           346e85d 3 months ago Sylvain Joyeux expose the typename-to-TypelibMarshallerBase logic directly<br/>
         
           cc04c47 3 months ago Sylvain Joyeux generate default deployments for every tasks<br/>
         
           d3567c3 3 months ago Sylvain Joyeux avoid re-normalizing typenames that we do are already normalized<br/>
         
           2a9bbe2 3 months ago Thomas Roehr Improve warnings when a library dependency could not be found via pkgconfig.<br/>
         
           7a95c54 3 months ago Thomas Roehr Add checking for stray dots to improve error messages.<br/>
         
           9c5ba51 3 months ago Sylvain Joyeux fix some signed-to-unsigned comparison warnings in deployments<br/>
         
           2c16734 3 months ago Sylvain Joyeux define Spec::TaskContext#each_extension<br/>
         
           ca110d8 3 months ago Thomas Roehr Add validation of constructors in task files, in order to warn the user that constructors will need adaption, e.g. after adding a 'needs_configuration' statement.<br/>
         
           c434caa 3 months ago Felix Rehrmann added rename option to templates/main.cpp<br/>
         
           c848e54 3 months ago Sylvain Joyeux spec: allow arbitrary names for TaskContext.new<br/>
         
           331f4a9 4 months ago Sylvain Joyeux spec: indent the pretty-printing of extensions<br/>
         
           1ffd23c 4 months ago Sylvain Joyeux spec: allow to create anonymous interfaces (i.e. interfaces without a name)<br/>
         
           8bc505c 4 months ago Thomas Roehr Add constructor documentation<br/>
         
           9cc0144 5 months ago Sylvain Joyeux small fix<br/>
         
           f699887 5 months ago Sylvain Joyeux in StaticDeployment#load_type, make sure that the type can be found somewhere<br/>
         
           94dd65c 5 months ago Sylvain Joyeux more info on error in import_typekit(name)<br/>
         
           443ce52 5 months ago Sylvain Joyeux typekit: C arrays can't go on ports, use a PrimitiveTypeInfo if --no-rtt-scripting is given<br/>
         
           5efa174 5 months ago Sylvain Joyeux use RTT 2.5's PrimitiveTypeInfo instead of RTT's TemplateTypeInfoBase<br/>
         
           6cecea0 5 months ago Sylvain Joyeux fix typo<br/>
         
           4da6a1b 5 months ago Sylvain Joyeux spec: support loading orogen projects that are used for design purposes, not implementation<br/>
         
         </td></tr>
       
       





       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 8 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           fc6ba75 3 months ago Jakob Schwendner also generate an imagergb24 as texture<br/>
         
           08ef1b5 3 months ago Jakob Schwendner added tool to augment mls color information from a grid<br/>
         
           79cff54 3 months ago Jakob Schwendner moved fix terrain classes to tools directory<br/>
         
           bb08763 5 months ago Sylvain Joyeux remove debugging output<br/>
         
           fa824e3 5 months ago Sylvain Joyeux use createCorridorNode to display the selected corridor as well<br/>
         
           8502ce4 5 months ago Sylvain Joyeux viz: display a line at the beginning of each corridor to visualize the corridor direction<br/>
         
           1c20cd8 5 months ago Sylvain Joyeux viz: display left and right boundaries in distinctive colors<br/>
         
           00ad44c 5 months ago Sylvain Joyeux fix boundary reordering code on the corridor-to-spline convertion<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/nav_graph_search">
         <th>planning/nav_graph_search</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="30"> 3 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_30"><td>
         
           3aa2c2a 3 months ago Jakob Schwendner moved make_band_from_classes to tools<br/>
         
           5d71b88 3 months ago Sylvain Joyeux fix missing link to boost::filesystem and boost::system<br/>
         
           f822d41 5 months ago Sylvain Joyeux be robust to non-existing files<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/orogen/corridor_planner">
         <th>planning/orogen/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="31"> 3 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_31"><td>
         
           3aa657c 5 months ago Sylvain Joyeux update scripts/display_log to vizkit<br/>
         
           88184db 8 months ago Sylvain Joyeux scripts: remove a host of annoying debugging outputs<br/>
         
           1921f20 8 months ago Sylvain Joyeux scripts/run: use default deployments<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/vfh_star">
         <th>planning/vfh_star</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="32"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_32"><td>
         
           26696d8 4 months ago Janosch Machowinski bugfix, do not crash if laserScann is empty<br/>
         
           4ace7aa 5 months ago Janosch Machowinski export laser2Map transformation<br/>
         
         </td></tr>
       
       



       <tr class="name" id="rtt">
         <th>rtt</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="33"> 166 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_33"><td>
         
           741e239 5 months ago Sylvain Joyeux types: add the DataFlowTypeInfo between the TemplateTypeInfo and PrimitiveTypeInfo<br/>
         
           f7c16cd 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           fbf824a 7 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/toolchain-2.5'<br/>
         
           bf4f13d 7 months ago Sylvain Joyeux Revert "extract TemplateTypeInfoBase: TemplateTypeInfo without type introspection"<br/>
         
           80441b0 7 months ago Peter Soetens v2 ReferenceDSB, setReference returns bool success status<br/>
         
           9c8dcfc 7 months ago Peter Soetens Merge remote-tracking branch 'origin/master' into toolchain-2.5<br/>
         
           0434692 7 months ago Steven Bellens types: turn off debug output in PropertyDecomposition<br/>
         
           e74ef91 7 months ago Peter Soetens doc: added ROS section in release notes.<br/>
         
           73c6a6d 7 months ago Peter Soetens rtt: link orocos-rtt with xenomai posix skin when mqueue transport is enabled<br/>
         
           6c587f5 7 months ago Peter Soetens doc: update release script not to publish to mech account<br/>
         
           834315c 7 months ago Peter Soetens doc: fix typo in rtt-changes.<br/>
         
           af21d30 7 months ago Peter Soetens internal: fix minor missing header includes.<br/>
         
           1cb1d7a 7 months ago Peter Soetens debian: update package to 2.5.0-1<br/>
         
           cdae2fc 7 months ago Peter Soetens internal: initialize an array datasource to default values<br/>
         
           32bb52f 7 months ago Peter Soetens types: add missing/fix type info objects for primitive types<br/>
         
           0cf2365 7 months ago Peter Soetens doc: minor updates to release notes.<br/>
         
           f1407f8 7 months ago Peter Soetens plugin: More fixes for Boost filesystem v3 API changes<br/>
         
           69c4a3a 7 months ago Peter Soetens Merge branch 'toolchain-2.4'<br/>
         
           6053a62 7 months ago Peter Soetens Bump version to 2.5.0<br/>
         
           8f87fcf 7 months ago Peter Soetens Fix bug #891: OperationCaller gets blocked on send() of synchronous operations with non-void type with CORBA<br/>
         
           43a74e1 7 months ago Peter Soetens fix set but unused warnings<br/>
         
           7029057 7 months ago Peter Soetens rtt: do not convert type_info names to std::string<br/>
         
           7cd6256 7 months ago Peter Soetens transport corba : fix serialization of stl container of std::string.<br/>
         
           b2c684c 7 months ago Peter Soetens Initial v2.5.0 release notes<br/>
         
           417212f 7 months ago Peter Soetens Fix bug 889: Memory leak in the real-time memory pool when calling remote operations (cleaned up)<br/>
         
           1c50163 7 months ago Peter Soetens Revert "Fix bug 889: Memory leak in the real-time memory pool when calling remote operations"<br/>
         
           74495fb 7 months ago Peter Soetens Fix bug 889: Memory leak in the real-time memory pool when calling remote operations<br/>
         
           fc7d174 7 months ago Peter Soetens useorocos: look up libraries separately for each target<br/>
         
           4d90f71 7 months ago Peter Soetens useorocos: unset cached library dependencies to allow target switch<br/>
         
           c30f23e 7 months ago Peter Soetens xenomai: raise default stack size to 128kb in Xenomai<br/>
         
           5074b7f 7 months ago Peter Soetens xenomai: suppress cpu affinity warning when ~0 is given.<br/>
         
           0c11e34 7 months ago Peter Soetens xenomai: don't run the mainthread on priority 10<br/>
         
           dceb2d9 7 months ago Peter Soetens operations: don't log errors while building operations, just throw.<br/>
         
           2d01849 8 months ago Peter Soetens useorocos: install exe again in ROS packages and improved explanations when .pc file breaks.<br/>
         
           1391633 8 months ago Peter Soetens cmake: fixup creating symlink to install directory.<br/>
         
           a7ecdc3 8 months ago Eli Reekmans cmake: don't symlink to install dir since this does not work with remove_directory<br/>
         
           e09cd7d 8 months ago Eli Reekmans typekit: add ORO_SCHED_OTHER/RT to globals.<br/>
         
           c189a5b 8 months ago Eli Reekmans types: fix missing headers in BoostArrayTypeInfo<br/>
         
           5303aa5 8 months ago Eli Reekmans cmake: fix OROCOS_TARGET environment variable detection.<br/>
         
           d9745a1 8 months ago Peter Soetens internal: fix missing header in ArrayPartDataSource.<br/>
         
           621bdb7 8 months ago Peter Soetens types: fix missing include in CArrayTypeInfo<br/>
         
           2ee0037 8 months ago Peter Soetens types: fix for Bug 897, add missing headers<br/>
         
           24e3377 8 months ago Peter Soetens Fix undefined reference<br/>
         
           4147368 8 months ago Peter Soetens Fix undefined reference<br/>
         
           248c7a6 8 months ago Peter Soetens ports: fix race in clearing a connection<br/>
         
           01bcf60 8 months ago Peter Soetens Fix bug #886: Plain ports wake up the TC<br/>
         
           21889bb 8 months ago Peter Soetens Fixes compile errors with ORO_SIGNALLING_PORTS<br/>
         
           4504d64 9 months ago Ruben Smits gnulinux: clear affinity mask if it's zero.<br/>
         
           676cee4 9 months ago Ruben Smits os: only use affinity if non-zero<br/>
         
           396d9e7 9 months ago Ruben Smits xenomai: don't use RTHAL_NR_CPUS, use hardcoded value<br/>
         
           423fe9b 10 months ago Ruben Smits cmake: fix cmake removal of install dir in ROS.<br/>
         
           ceb12ef 10 months ago Peter Soetens Merge commit 'refs/merge-requests/18' of git://gitorious.org/orocos-toolchain/rtt<br/>
         
           1d1a8f4 10 months ago Peter Soetens gnulinux: cleanup indentation in fosi.<br/>
         
           68aefd5 10 months ago Peter Soetens xenomai: implement cpu affinity support.<br/>
         
           3662db9 10 months ago Peter Soetens Merge branch 'master-ros-refactoring'<br/>
         
           e294e25 10 months ago Peter Soetens Merge remote branch 'snrkiwi/toolchain-next'<br/>
         
           7a95de9 10 months ago Peter Soetens tests: don't test signalling operations if disabled.<br/>
         
           d0046d7 10 months ago Peter Soetens taskcontext: remove debugging left-overs.<br/>
         
           db79844 10 months ago Peter Soetens Merge branch 'master-ros-refactoring'<br/>
         
           d15817b 10 months ago Peter Soetens Merge branch 'toolchain-2.4-remove-signal'<br/>
         
           05daae6 10 months ago Peter Soetens signals: allow users to re-enable them in the build system.<br/>
         
           b704648 10 months ago Markus Klotzbuecher Extend ReferenceDataSource with setReference method<br/>
         
           186211c 10 months ago Markus Klotzbuecher Don't cache TypeInfo, always return global one<br/>
         
           6f4a3e2 10 months ago Peter Soetens Merge branch 'toolchain-2.4-type-primitives'<br/>
         
           7da0026 10 months ago Peter Soetens types: rewrite&add (Primitive)SequenceTypeInfo qnd SequenceTypeInfoBase<br/>
         
           8af7b76 10 months ago Peter Soetens scripting: fix bug where function may be called twice<br/>
         
           cbfcffc 10 months ago Peter Soetens scripting: introduce local/export/global function decorations<br/>
         
           16c6fd9 10 months ago Peter Soetens interfaces: check for null pointers when user provides objects.<br/>
         
           30127cf 10 months ago Peter Soetens useorocos: use project_name instead of cmake_project_name<br/>
         
           94e3053 10 months ago Peter Soetens clang: fixes to build with clang++ 2.9<br/>
         
           c859c3e 10 months ago Peter Soetens cmake: maintain install subdir for ROS backwards compatibility<br/>
         
           0be5b1e 10 months ago Peter Soetens cmake: fix IS_ROS_PACKAGE macros for ros-refactoring<br/>
         
           d87e0fa 10 months ago Peter Soetens useorocos: use IS_ROS_PACKAGE instead of ROS_ROOT.<br/>
         
           4545f7a 10 months ago Peter Soetens useorocos: fix typo in install path setting.<br/>
         
           efb4228 10 months ago Peter Soetens doc: cleanup corba transport docs and add an example.<br/>
         
           3b4ddc1 10 months ago Peter Soetens useorocos: allow to specify dependencies when generating the .pc file<br/>
         
           961b5b6 10 months ago Peter Soetens ports: replace signals in ports with callback<br/>
         
           4ac28db 11 months ago Peter Soetens operations: conditionally remove the signalling code<br/>
         
           766bdea 11 months ago Peter Soetens win32: support INSTALL_PATH for BC.<br/>
         
           c63c1c2 11 months ago Peter Soetens tests: rename value_test to rtstring test and check for rt-malloc<br/>
         
           9878d6e 11 months ago Stephen Roderick cmake: Refactor selecting one library from a list of libraries<br/>
         
           1e93fef 11 months ago Peter Soetens win32: add possibility to modify default component installation path using the new variable ORO_DEFAULT_INSTALL_PREFIX.<br/>
         
           bdfd2e9 11 months ago Peter Soetens win32: fix orocos-rtt installation path for windows 64 bits.<br/>
         
           02c575a 11 months ago Peter Soetens Fix bug #869: Mac OS X regression in types test<br/>
         
           9bc4bde 11 months ago Peter Soetens tests: only include test suite hack when specifically instructed<br/>
         
           d759c73 11 months ago Peter Soetens plugins: decorate internal functions with RTT_API because we unit-test them<br/>
         
           9d6eee2 11 months ago Peter Soetens cmake: create CMAKE_CFG_INTDIR before copying files to it.<br/>
         
           2c3c388 11 months ago Peter Soetens win32: use debug postfix for orocos_executable.<br/>
         
           daf47d4 11 months ago Peter Soetens win32: validate library suffixes in plugins loading to avoid mixing debug and release runtime libraries.<br/>
         
           ebd262d 11 months ago Peter Soetens win32: add OROCOS_TARGET suffix to orocos targets on win32.<br/>
         
           b7e1f9a 11 months ago Peter Soetens Refs #868, plugins: Prevent Mac OS X from double loading dynamic libraries<br/>
         
           4de529f 11 months ago Peter Soetens typekit: don't concatenate rt-string if rt_malloc is disabled.<br/>
         
           213aa7e 11 months ago Peter Soetens Merge branch 'master' into toolchain-2.4<br/>
         
           1bae55d 11 months ago Peter Soetens win32: fix typo in rtos_task_create argument list.<br/>
         
           4c87925 11 months ago Peter Soetens Merge branch 'toolchain-2.4' of gitorious.org:/orocos-toolchain/rtt into toolchain-2.4<br/>
         
           8889e5f 11 months ago Peter Soetens win32: fix two compile errors in oro_arch atomics.<br/>
         
           5284d74 11 months ago Stephen Roderick os: Log more data when creating a thread<br/>
         
           13db02c 11 months ago Stephen Roderick tests: Add CPU affinity test for Linux only<br/>
         
           5f03ec1 11 months ago Stephen Roderick gnulinux: Correct use of CPU mask. Log on failure to set affinity<br/>
         
           645b115 11 months ago Stephen Roderick macosx: Fixes for Lion's header changes<br/>
         
           77060a4 11 months ago Stephen Roderick Refs #868, plugins: Prevent Mac OS X from double loading dynamic libraries<br/>
         
           c9d9013 11 months ago Peter Soetens types: add support for primitive and array types.<br/>
         
           5294fe1 11 months ago Peter Soetens types: add support for fixed size arrays in type system.<br/>
         
           35b3e2d 11 months ago Peter Soetens marshalling: fix some big memleaks when (de)serializing<br/>
         
           aac4ca1 11 months ago Peter Soetens Merge branch 'toolchain-2.4' of gitorious.org:orocos-toolchain/rtt into stable<br/>
         
           bdb5adb 11 months ago Peter Soetens corba: fix finding .idl files in Natty and Squeeze.<br/>
         
           370991f 11 months ago Peter Soetens doc: updated introductions of the component builder manual<br/>
         
           5e1dd62 11 months ago Peter Soetens cmake: fix OROCOS_TARGET environment variable (2)<br/>
         
           4a43afc 11 months ago Peter Soetens call rosbuild init in ros mode if not done yet.<br/>
         
           5e22c21 11 months ago Peter Soetens cmake: fix OROCOS_TARGET environment variable.<br/>
         
           782ecf0 11 months ago Peter Soetens Fixes #867: Ensure dynamic library paths are fully specified on Mac OS X<br/>
         
           939a087 11 months ago Peter Soetens doc: fix documentation type in ports docs.<br/>
         
           e4da08d 11 months ago Peter Soetens macosx: fix hanging thread issue when using simulation thread<br/>
         
           6cd12a0 11 months ago Peter Soetens doc: update linking to OCL 2.x API.<br/>
         
           c9a8355 11 months ago Peter Soetens doc: fix typo in doc release script<br/>
         
           9c909c8 11 months ago Peter Soetens doc: fix typo in doc release script<br/>
         
           9ef3a49 11 months ago Peter Soetens doc: fixup version link update logic<br/>
         
           9e10562 11 months ago Peter Soetens doc: fixup version link update logic<br/>
         
           ea2bc76 11 months ago Peter Soetens docs: make updating link in release-docs smart.<br/>
         
           477a86a 11 months ago Peter Soetens docs: make updating link in release-docs smart.<br/>
         
           4669ddd 11 months ago Peter Soetens cmake: split lib names in .pc files since pkg-check-modules does not pick them up<br/>
         
           63711ff 11 months ago Peter Soetens cmake: split lib names in .pc files since pkg-check-modules does not pick them up<br/>
         
           9b70629 11 months ago Peter Soetens scripting: fix parser confusion when using constructor with equal name as service<br/>
         
           799d3c2 11 months ago Peter Soetens doc: update release notes.<br/>
         
           608ac23 11 months ago Peter Soetens extras: remove Configurator classes<br/>
         
           9b811a5 11 months ago Peter Soetens doc: update release notes for 2.4.0<br/>
         
           aee6f56 11 months ago Peter Soetens internal: fix warning in locked queue.<br/>
         
           a52ecb7 11 months ago Peter Soetens Merge branch 'toolchain-2.3-testports'<br/>
         
           df392a8 11 months ago Peter Soetens ports: no need to disconnect the signal in destructor.<br/>
         
           a057f75 11 months ago Peter Soetens signal: fix cleanup/disconnection logic of a signal<br/>
         
           fa2cb8e 11 months ago Peter Soetens tests: test adding/removing ports.<br/>
         
           b8f9d3b 11 months ago Peter Soetens Merge commit 'refs/merge-requests/16' of git://gitorious.org/orocos-toolchain/rtt<br/>
         
           46b94be 11 months ago Peter Soetens doc: add initial release notes.<br/>
         
           ba967de 11 months ago Peter Soetens Log error when unable to start a slave activity<br/>
         
           51bc9c2 11 months ago Peter Soetens Merge branch 'toolchain-2.3'<br/>
         
           c15e02b 11 months ago Peter Soetens typekit: split in smaller files to reduce memory footprint.<br/>
         
           e0700cc 12 months ago Peter Soetens tests: add string/rt_string conversion tests.<br/>
         
           6e40320 12 months ago Peter Soetens rt_string: add conversion constructor from rt_string to string.<br/>
         
           0654e0a 12 months ago Peter Soetens scripting: fix wrong assignment order in expressions.<br/>
         
           642e07d 12 months ago Peter Soetens scripting: Add unit test for wrong assignment order.<br/>
         
           76ddc5a 12 months ago Peter Soetens rt_string: add concatenation operators.<br/>
         
           7009d2c 12 months ago Peter Soetens tests: disable incorrect test and rename test suite.<br/>
         
           e3a97ef 12 months ago Peter Soetens scripting: tell alternative syntax for parse error.<br/>
         
           2c56289 12 months ago Peter Soetens rt_string: construct from plain string.<br/>
         
           0eba325 12 months ago Peter Soetens #789: Add test case for rt_string use in state machines<br/>
         
           b633356 12 months ago Peter Soetens #789: Add rt_string constructor<br/>
         
           04643a4 12 months ago Peter Soetens tests: fix compiler warnings.<br/>
         
           6bde0ff 12 months ago Peter Soetens useorocos: fix typo in orocos_component macro for setting the version.<br/>
         
           5cd6b08 12 months ago Peter Soetens Merge branch 'toolchain-2.3'<br/>
         
           2714f87 12 months ago Peter Soetens properties: beef up unit tests and fix remaining serialization issues<br/>
         
           76ee386 12 months ago Peter Soetens Merge branch 'toolchain-2.3'<br/>
         
           1ba99df 12 months ago Peter Soetens scripting: provide property to disable the zero period warning.<br/>
         
           8d8d767 12 months ago Peter Soetens cmake: force orocos_target if not empty<br/>
         
           e73bec4 12 months ago Peter Soetens types: fix updating of struct containing vectors<br/>
         
           d676293 12 months ago Peter Soetens types: avoid copies in type info code<br/>
         
           6512add 12 months ago Peter Soetens scripting: fix bug in peerparser that created services<br/>
         
           d197b7b 12 months ago Peter Soetens doc: small updates to inkscape graphics.<br/>
         
           6403b59 12 months ago Peter Soetens doc: minor updates to figures<br/>
         
           c4de74a 12 months ago Peter Soetens cmake: fix OROCOS_TARGET ENV detection.<br/>
         
           002a847 12 months ago Peter Soetens extras: work around warn_unused_result<br/>
         
           e013a1f 12 months ago Peter Soetens Add cpu affinity feature.<br/>
         
           8c45e02 12 months ago Peter Soetens Fix the rtos_task_create signature for ecos.<br/>
         
           311e98d 12 months ago Peter Soetens useorocos: don't lowercase the .pc filename.<br/>
         
           42ab265 12 months ago Peter Soetens tao: also link with lrt on Linux* systems<br/>
         
           57b8ca0 12 months ago Peter Soetens cmake: bump to v2.3.2<br/>
         
           fe7bc03 12 months ago Peter Soetens make: enable corba/Omniorb for ROS packages.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="slam/envire">
         <th>slam/envire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="34"> 115 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_34"><td>
         
           bf27a47 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           3e0925a 3 months ago Sylvain Joyeux avoid making boost::filesystem a public dependency of envire<br/>
         
           fb50a6b 3 months ago Jakob Schwendner grids: fixed bands ordering<br/>
         
           4265ce0 3 months ago Jakob Schwendner imagergb24 added functionality to write to single tiff for all bands<br/>
         
           e42d1e7 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           e0bfc07 3 months ago Sascha Arnold removed all constructors with serialization as parameter<br/>
         
           03b2d70 3 months ago Sascha Arnold added missing default constructors<br/>
         
           fb49fa3 3 months ago Sylvain Joyeux create a very dumb MLS-to-Grid operator<br/>
         
           189ac88 3 months ago Sylvain Joyeux install the GridFloatToMLS.hpp header<br/>
         
           03501b0 3 months ago Sylvain Joyeux the traversability operator does not depend on MLS at all, rename<br/>
         
           ca9079e 3 months ago Sylvain Joyeux in grid2mls operator, make the mls-to-grid coordinate convertion clearer<br/>
         
           38c1160 3 months ago Sylvain Joyeux viz: fix elevation grid visualizer<br/>
         
           9f1f846 3 months ago Sylvain Joyeux fix GDAL grid loading when the file has a non-positive scale element<br/>
         
           926d913 3 months ago Jakob Schwendner VizPlugin is deprecated (and was missing the right include here)<br/>
         
           e7c4ce3 3 months ago Sylvain Joyeux viz: remove unneeded include<br/>
         
           09a4b90 3 months ago Sylvain Joyeux fix call to setNoData when T != double<br/>
         
           501e38f 3 months ago Sylvain Joyeux ruby: fix write methods in envire/gdal<br/>
         
           e31f3d5 3 months ago Sylvain Joyeux don't emit readGridData for types that are not primitive types<br/>
         
           4a2607b 3 months ago Sylvain Joyeux small compilation fixes<br/>
         
           1c449e5 3 months ago Sylvain Joyeux tools: make env_grid_to_mls display the operator index<br/>
         
           cce1e81 3 months ago Sylvain Joyeux fix missing std:: prefix<br/>
         
           55a1e6f 3 months ago Sylvain Joyeux fix pkg-config definition<br/>
         
           29d6b4e 3 months ago Sylvain Joyeux stop using the deprecated VizPlugin.hpp header<br/>
         
           e3bd6e2 3 months ago Sascha Arnold don't delete the root node, just set its transformation matrix to identity<br/>
         
           d9f1b33 3 months ago Sascha Arnold set item id's in event if item available<br/>
         
           531922e 3 months ago Sascha Arnold overload getClassName function in Grid&lt;T&gt; because Grid&lt;T&gt; has its own declaration of className<br/>
         
           89aec3c 3 months ago Sascha Arnold fixed includes<br/>
         
           c38bc0c 3 months ago Sascha Arnold clear buffers of yaml serialization and added missing include<br/>
         
           a5b2c17 3 months ago Sylvain Joyeux env_add_grid: fix command-line parsing logic when a map type is given, but not -frame<br/>
         
           ad3dce5 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/new_serialization'<br/>
         
           204f1a4 3 months ago Sylvain Joyeux cmake: use the new public dependency support in Rock.cmake to make sure that all users of libenvire link to boost::system<br/>
         
           b3b74c0 3 months ago Sylvain Joyeux tools: remove unnecessary newline before the map ID output by env_(add|create)_grid<br/>
         
           d47d531 3 months ago Sylvain Joyeux tools: make env_grid_to_mls only update the new operator<br/>
         
           8ebde0e 3 months ago Sylvain Joyeux tools: add source band name in env_grid_to_mls input arguments<br/>
         
           c298e17 3 months ago Sylvain Joyeux tools: use the new generic grid factory method in env_create_grid<br/>
         
           7fa2646 3 months ago Sylvain Joyeux tools: allow to specify a specific grid type in env_add_grid<br/>
         
           ad7b8be 3 months ago Sylvain Joyeux tools: in env_add_grid, properly initialize the new grid's frame using the transformation stored in the GDAL file<br/>
         
           dbbe2bb 3 months ago Sylvain Joyeux core: offer a mechanism to use the deserialization as a factory mechanism, and use it for grids<br/>
         
           774faf7 3 months ago Sylvain Joyeux grid: remove from Grid&lt;T&gt; methods that are now defined on GridBase<br/>
         
           390f085 3 months ago Sylvain Joyeux grid: document GridBase and Grid&lt;T&gt; better<br/>
         
           4b16402 3 months ago Sylvain Joyeux mls: clear() at construction<br/>
         
           227f493 3 months ago Sylvain Joyeux maps: in copyFromDistanceImage, do y-first iteration as it is how the data is stored<br/>
         
           e557bd0 3 months ago Sylvain Joyeux mls: during unserialization, ignore the inexistence of the binary stream<br/>
         
           6e6d925 3 months ago Sylvain Joyeux maps: make the raster coordinates manipulation non-ambiguous<br/>
         
           01971ca 3 months ago Sylvain Joyeux core: move common code from (File|Binary)Serialization into Serialization itself<br/>
         
           1488e90 3 months ago Sylvain Joyeux core: remove useless private / friend combo<br/>
         
           800a8d9 3 months ago Sylvain Joyeux core: throw a specific exception when an unknown binary stream is referred to<br/>
         
           b475a8b 3 months ago Sylvain Joyeux core: make Serialization::read&lt;T&gt; return a boolean indicating if the requested value was found or not<br/>
         
           44d1f62 3 months ago Sascha Arnold moved serialization declarations in separated headers<br/>
         
           51832e9 3 months ago Sylvain Joyeux fix annoying bunch of logging messages<br/>
         
           bd48539 3 months ago Sylvain Joyeux ops: some adaptation to the new serialization API<br/>
         
           900b8fd 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/new_serialization'<br/>
         
           a34e111 3 months ago Sylvain Joyeux tools: make env_add_grid output the map ID<br/>
         
           b2af87f 3 months ago Sylvain Joyeux tools: in env_add_grid, make sure that we exit(1) on error<br/>
         
           15968e4 3 months ago Sylvain Joyeux grid: add operator to convert from Grid&lt;float|double&gt; to MLSGrid<br/>
         
           d252b58 3 months ago Sylvain Joyeux core: don't use const-ref to save the global class names, use a plain const std::string instead<br/>
         
           cf1f788 3 months ago Sylvain Joyeux tools: add env_create_grid, which allows to create a grid map of any type<br/>
         
           43715e8 3 months ago Sylvain Joyeux core: allow to declare arity for operator inputs and outputs<br/>
         
           61f4c69 3 months ago Sylvain Joyeux core: add the convenience functions relativeTransform(WithUncertainty)(CartesianMap*, CartesianMap*)<br/>
         
           e8638a4 3 months ago Sylvain Joyeux grid: add some missing deserialization plugins needed to properly handle all GDAL types<br/>
         
           7515270 3 months ago Sylvain Joyeux tools: add env_create and env_delete_item<br/>
         
           1fe9b22 3 months ago Sascha Arnold added a test case for grid map data serialization test<br/>
         
           e2a9fc3 3 months ago Sascha Arnold handle serialization of grid map data<br/>
         
           415c755 3 months ago Sascha Arnold delete deprecated method and check for valid iterator<br/>
         
           ed2819a 4 months ago Jakob Schwendner mlsgrid: only process cell color, if enabled<br/>
         
           989e632 4 months ago Jakob Schwendner made color hack less obtrusive and backward compatible<br/>
         
           198e706 4 months ago Jakob Schwendner added some documentation<br/>
         
           d986aca 4 months ago Jakob Schwendner added missing free to erase grid item<br/>
         
           b3ac20b 4 months ago Sascha Arnold added two binary item serialization test cases<br/>
         
           4e06f59 4 months ago Sascha Arnold the maps handle now istreams and ostreams from the serialization instead of opening the files by themselves<br/>
         
           56e6c67 4 months ago Sascha Arnold getMapFileName(classname) returns now only the filename without the path and added default getMapFileName(), which usses the known classname<br/>
         
           107e40e 4 months ago Sascha Arnold setClassName for the serialization is obsolete<br/>
         
           df1c3ca 4 months ago Sascha Arnold added new Serialization clsses<br/>
         
           16dc0ed 4 months ago Sascha Arnold use serialize/unserialize as method of the environment itself and don't create an instance of the Serialization<br/>
         
           80f434e 4 months ago Jakob Schwendner added a hack where pointcloud color information is displayed in an mls<br/>
         
           de7b353 5 months ago Sascha Arnold moved the unserialization part of each environment item from the constructor to the unserialize method<br/>
         
           b24dca5 5 months ago Jakob Schwendner fixed initialization of GridBase<br/>
         
           cc9ef54 5 months ago Jakob Schwendner icp: added ransac model which (crudely) takes errors into account.<br/>
         
           732691c 5 months ago Jakob Schwendner make mlsgrid offset aware<br/>
         
           d7fe55c 5 months ago Jakob Schwendner distanceGridToPointcloud will associate color information if an image24 is added as an input to the operator<br/>
         
           d817003 5 months ago Jakob Schwendner added method to copy a frame into an imagegrid<br/>
         
           0087dcb 5 months ago Jakob Schwendner viz: image24 takes grid offset into account now<br/>
         
           46e71f5 5 months ago Jakob Schwendner viz: show vertex color in pointcloud if available<br/>
         
           c2073dd 5 months ago Jakob Schwendner added option to perform deep detachment of items from environment<br/>
         
           b4c50b4 5 months ago Jakob Schwendner added convenience method<br/>
         
           32cfe03 5 months ago Jakob Schwendner removed debug output<br/>
         
           bd29ff9 5 months ago Sascha Arnold store serialization tests in a seperated file and improved some parts of the tests<br/>
         
           a3fb1fb 5 months ago Jakob Schwendner added psurf as a descriptor type<br/>
         
           cb61ef6 5 months ago Jakob Schwendner added standard EnvironmentItem macros to MergePointcloud<br/>
         
           ba87d24 5 months ago Jakob Schwendner made cycling of pointcloud colors a parameter<br/>
         
           fdccc3e 6 months ago Jakob Schwendner core: make uncertainty of PointWithUncertainty optional<br/>
         
           915858d 6 months ago Jakob Schwendner fix for when cgal is not available<br/>
         
           0524c58 6 months ago Patrick Merz Paranhos fixed a bug in the sampling method<br/>
         
           3994560 6 months ago Patrick Merz Paranhos added autosave file to ignore list<br/>
         
           1c477b7 7 months ago Jakob Schwendner compilation fix<br/>
         
           672245e 7 months ago Jakob Schwendner added a test case that performs iterative uncertainty transforms<br/>
         
           8721101 7 months ago Jakob Schwendner uncertainty transform: fixed some implementation errors<br/>
         
           c907337 7 months ago Jakob Schwendner added pre version of compositionInv function<br/>
         
           b378183 7 months ago Jakob Schwendner added a compositionInv method to transformWithUncertainty<br/>
         
           1aba256 7 months ago Jakob Schwendner added copyToRigidBodyState to TransformWithUncertainty<br/>
         
           1336681 7 months ago Jakob Schwendner added conversion from rigid_body_state to TransformWithUncertainty<br/>
         
           94b58aa 7 months ago Jakob Schwendner removed warnings<br/>
         
           d1feb93 7 months ago Jakob Schwendner viz: pointcloud show features made optional<br/>
         
           5ee678b 7 months ago Jakob Schwendner quick fix for include problem<br/>
         
           52ba003 7 months ago Jakob Schwendner ransac: made model threshold a proper parameter<br/>
         
           f7b5104 7 months ago Jakob Schwendner added method to estimate isometry transform between two pointclouds using RANSAC<br/>
         
           0c5c94b 8 months ago Jakob Schwendner features: add original image point to keypoint<br/>
         
           3e67683 8 months ago Jakob Schwendner icp: small update of comments<br/>
         
           a3747ed 8 months ago Jakob Schwendner features: encode features differently to make conversion to opencv easier<br/>
         
           1c515ad 8 months ago Jakob Schwendner graphviz: output label if present<br/>
         
           65b6693 8 months ago Jakob Schwendner pointcloud: added copyFrom feature, which can also handle transformations<br/>
         
           1de71f0 8 months ago Jakob Schwendner core: removed name attribute from layer and added more generic label to environmentitem<br/>
         
           1836c54 8 months ago Jakob Schwendner viz: improved visualization of features<br/>
         
           5b14b34 8 months ago Jakob Schwendner viz: added visualization for features in featureclouds<br/>
         
           e8950e2 8 months ago Jakob Schwendner added features and featurecloud<br/>
         
         </td></tr>
       
       









       <tr class="name" id="tools/logger">
         <th>tools/logger</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="35"> 4 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_35"><td>
         
           940db26 3 months ago Sylvain Joyeux merge the registries from the typelib transport instead of loading all TLB files<br/>
         
           aee10b8 5 months ago Sylvain Joyeux implement stream metadata and annotations support<br/>
         
           2fe4a1b 5 months ago Sylvain Joyeux replace scripts/test by a proper test unit testcase<br/>
         
           79f2dc8 8 months ago Matthias Goldhoorn Added Logger Type, this could be used for some hin't inside the stream<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="36"> 276 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_36"><td>
         
           e72f9ef 11 days ago Sylvain Joyeux handle the NoModel exception in orops<br/>
         
           2b2f568 11 days ago Sylvain Joyeux raise a new NoModel exception in TaskContext#initialize if the model can't be accessed<br/>
         
           e3eea6d 11 days ago Sylvain Joyeux make the path to the orocos logfile configurable, and allow /dev/null for both :output and :oro_logfile<br/>
         
           9857f96 11 days ago Sylvain Joyeux fix some error messages in Process.wait_running<br/>
         
           0bcaf94 11 days ago Sylvain Joyeux add support to start processes under gdbserver<br/>
         
           2531104 11 days ago Sylvain Joyeux make Process#kill robust to processes that are still starting up<br/>
         
           c67d3d0 11 days ago Felix Rehrmann Rename load_conf to apply_conf_file and added override to the arguments.<br/>
         
           e3c7532 8 weeks ago Alexander Duda replay: don't use Orocos.registry by default<br/>
         
           9034664 8 weeks ago Jakob Schwendner added ability to change the default log buffer size<br/>
         
           bd3a324 8 weeks ago Sylvain Joyeux roby: when creating logging ports, do not raise if a port with same name and type already exists<br/>
         
           2765d29 8 weeks ago Sylvain Joyeux roby,gui: don't display any annotation by default<br/>
         
           f516a65 8 weeks ago Sylvain Joyeux roby,gui: add a helper method on InstanciatedNetworkDisplay to display plans<br/>
         
           ea1d625 8 weeks ago Alexander Duda Orocos::Log::Replay update qt events with 100Hz instead of 10Hz<br/>
         
           49f3fc7 8 weeks ago Alexander Duda Merge branch 'master' of http://git.gitorious.org/rock-toolchain/orocos-rb<br/>
         
           7187620 9 weeks ago Sylvain Joyeux roby: remove debugging output<br/>
         
           82a2b29 9 weeks ago Sylvain Joyeux roby: add the --trace=DIR option to scripts/instanciate to display the merging process in graphical form<br/>
         
           e4807eb 9 weeks ago Sylvain Joyeux in Orocos.load_typekit_registry, #import_typekit does not update the master project. Use #using_typekit instead<br/>
         
           4a58fbb 9 weeks ago Sylvain Joyeux roby: fix some more issues related with using services in the global requirements<br/>
         
           c6d6a4e 9 weeks ago Sylvain Joyeux allow usage of strings to specify the connection policie's type and lock<br/>
         
           eb0861f 9 weeks ago Sylvain Joyeux roby: fix #connect_or_forward_ports in cases where a composition is connected externally (non-forward) to one of its children<br/>
         
           74821d8 9 weeks ago Sylvain Joyeux roby: in InstanceSelection.from_object, user_call == false should definitely not be the default<br/>
         
           e9ffd4a 9 weeks ago Sylvain Joyeux roby: in InstanceRequirements#use, validate the strings used as selections<br/>
         
           c094083 9 weeks ago Sylvain Joyeux roby: allow accessing the functionality of Roby's scripts/run through rock-roby run<br/>
         
           df9af75 9 weeks ago Sylvain Joyeux roby: in SystemModel#has_*?, provide meaningful error messages if the user called with snake_case instead of CamelCase<br/>
         
           640dcf9 9 weeks ago Sylvain Joyeux roby: in InstanceSpec.select_service_by_name, raise an explicit error if the requested service does not exist<br/>
         
           72015fd 9 weeks ago Sylvain Joyeux roby: bugfix in the NoMatchingService exception<br/>
         
           4d7b549 9 weeks ago Sylvain Joyeux roby: add some more info messages during loading<br/>
         
           506ad1d 9 weeks ago Sylvain Joyeux roby: accept 'parent.child_name' in #use() as a way to refer to the child of a parent<br/>
         
           24031cc 9 weeks ago Sylvain Joyeux remove debugging output<br/>
         
           e8c01c6 9 weeks ago Sylvain Joyeux roby: in #use_deployment, make sure that we did load the dependent task libraries<br/>
         
           64484a3 9 weeks ago Sylvain Joyeux make sure that projects loaded through a process server are also registered on the master porject<br/>
         
           731f75e 9 weeks ago Sylvain Joyeux roby: in app setup, don't wait for the local process server until really needed<br/>
         
           7dbf02b 9 weeks ago Sylvain Joyeux add an info message when we load plugin libraries<br/>
         
           ffe47e8 9 weeks ago Sylvain Joyeux roby: small fixes to the loading mess<br/>
         
           a7a71bc 9 weeks ago Sylvain Joyeux roby: in TaskContext.define_from_orogen, properly set the orocos_tasks cache<br/>
         
           13adb82 9 weeks ago Sylvain Joyeux roby: fix supermodel definition in TaskContext.define_from_orogen<br/>
         
           c7cbe14 9 weeks ago Sylvain Joyeux roby: scripts/run does not need display<br/>
         
           fccb426 9 weeks ago Sylvain Joyeux roby: fix banner of scripts/run<br/>
         
           b7b8ed3 9 weeks ago Sylvain Joyeux roby: in start_local_process_server, make sure we sleep in the loop path of the busy loop<br/>
         
           e3f342c 9 weeks ago Sylvain Joyeux roby: better formatting of InstanciationError exceptions<br/>
         
           3454a89 9 weeks ago Sylvain Joyeux roby: pass the plan to deployment postprocessing hooks<br/>
         
           dcfdc9e 9 weeks ago Sylvain Joyeux roby: in scripting, fix service name resolution logic<br/>
         
           d34d183 9 weeks ago Sylvain Joyeux roby: make #resolve_name augment InstanciationError exceptions with the definition chain<br/>
         
           f79db80 9 weeks ago Sylvain Joyeux roby: better error reporting if Engine#resolve_name finds an unknown name<br/>
         
           3f8903f 9 weeks ago Sylvain Joyeux fix usage of "dummy" oroGen files in Roby<br/>
         
           396d5ab 9 weeks ago Sylvain Joyeux roby: make the DataServiceInstance / ProvidedDataService pair behave as task instance and task model<br/>
         
           cc5bb09 9 weeks ago Sylvain Joyeux roby: allow explicitely selecting services in requirements<br/>
         
           a7d4af1 9 weeks ago Sylvain Joyeux roby: fix DataServiceInstance#connect_ports when the source port is unknown<br/>
         
           5a92ccc 9 weeks ago Sylvain Joyeux roby: define #to_s on DataServiceInstance<br/>
         
           a65d6b5 9 weeks ago Sylvain Joyeux roby: fix #find_input_port and #find_output_port for services when the port is unknown<br/>
         
           b31303c 9 weeks ago Sylvain Joyeux roby: no need for names in the defines<br/>
         
           23d25fe 9 weeks ago Sylvain Joyeux roby: #as_plan is now defined on all tasks, change the (hacky) way how we detect services or not in connection logic<br/>
         
           4bd9df4 9 weeks ago Sylvain Joyeux roby: in robot definition context, allow to access devices by calling the "device name"<br/>
         
           0eea23e 9 weeks ago Sylvain Joyeux roby: fix wrong indentation<br/>
         
           67442de 9 weeks ago Sylvain Joyeux roby: raise an explicit exception when a name cannot be resolved<br/>
         
           183861d 9 weeks ago Sylvain Joyeux roby: define ProvidedServiceModel#bind<br/>
         
           a1c64c3 9 weeks ago Sylvain Joyeux roby: define ProvidedServiceModel#add_slaves<br/>
         
           c2c4908 9 weeks ago Sylvain Joyeux roby: use #find_(input|output)_port instead of iterating using each_*_port<br/>
         
           fc2fc5a 9 weeks ago Alexander Duda Replay: remove obsolete `to_a'<br/>
         
           9dbdb39 9 weeks ago Alexander Duda Log::Replay improve connect_to<br/>
         
           1a12039 9 weeks ago Sylvain Joyeux roby: properly set public_logs and public_shell_interface in scripts/run<br/>
         
           c9e4cd3 9 weeks ago Sylvain Joyeux rock-roby: reset Roby.app.public_logs from the bundle default of true to the Roby default of false<br/>
         
           6b07278 9 weeks ago Alexander Duda Log::Replay: all tasks store now the parent Replay object<br/>
         
           e22a5f9 10 weeks ago Sylvain Joyeux roby: 1.9 fix in graphviz generation<br/>
         
           4a41b91 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           3e53750 10 weeks ago Felix Rehrmann Override is now settable via TaskContext's apply_conf, too.<br/>
         
           0868706 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           c056ead 10 weeks ago Alexander Duda Orocos::Log: add support for orocos_type_name<br/>
         
           46c5ac9 10 weeks ago Alexander Duda add rock_orocos_type_name to log meta data<br/>
         
           f3b22ad 2 months ago Sylvain Joyeux roby: fix calling #resolve_name with a composition model name<br/>
         
           d1ace86 2 months ago Sylvain Joyeux roby: use Generation::Project instead of the deprecated Generation::Component<br/>
         
           c634ab7 2 months ago Sylvain Joyeux properly convert the name to string in #attribute and #property<br/>
         
           85217fa 2 months ago Sylvain Joyeux roby: properly sort the annotation menu alphabetically<br/>
         
           edf9e6e 2 months ago Sylvain Joyeux roby: add a SVG export button to all plan displays<br/>
         
           d26a2f8 2 months ago Christopher Gaudig result should be a new array and not be logically compared with an array<br/>
         
           52e2866 2 months ago Alexander Duda bugfix TaskContext.doc<br/>
         
           59e1923 2 months ago Sylvain Joyeux use Orocos.default_working_directory for data logfiles as well<br/>
         
           651097b 2 months ago Sylvain Joyeux allow to set a default value for the working_directory argument of Orocos.run<br/>
         
           6034287 3 months ago Thomas Roehr Test available_projects before calling clear<br/>
         
           bb3b8e7 3 months ago Thomas Roehr Add prefix support, so that deployments can optionally be started with the &lt;robot_name&gt;_ prefix.<br/>
         
           79f6b96 3 months ago Thomas Roehr Add check for Orocos.orocos_logfile before trying to at_exit<br/>
         
           7a314f4 3 months ago Sylvain Joyeux do not silently reset the complete Orocos environment in Orocos.load<br/>
         
           83eb21d 3 months ago Sylvain Joyeux roby: define #fullfills? on compositions to handle specializations properly<br/>
         
           4aeb677 3 months ago Alexander Duda Log::OutputPort: add method to_orocos_port<br/>
         
           8ef7d4f 3 months ago Sylvain Joyeux roby: in dot, add newline between edge labels<br/>
         
           3d97b04 3 months ago Sylvain Joyeux roby: fix behaviour of DSL-loading methods w.r.t. recursive loading<br/>
         
           c4b8462 3 months ago Sylvain Joyeux roby: better presentation of provided services in system model UI<br/>
         
           8cf8411 3 months ago Sylvain Joyeux roby: remove some debugging output<br/>
         
           16ff1ac 3 months ago Sylvain Joyeux fix conflicting ORO_LOGFILE setting between bundles and Roby<br/>
         
           cd898e7 3 months ago Sylvain Joyeux make sure that the generated ORO_LOGFILE is a full path<br/>
         
           43e6ae7 3 months ago Alexander Duda add to_orocos_port to Orocos::Ports<br/>
         
           c234806 3 months ago Alexander Duda add methods force_local? and tooling?<br/>
         
           a052126 3 months ago Alexander Duda connect_to converting input_port to orocos_port if possible<br/>
         
           3d73e9b 3 months ago Sylvain Joyeux minor fixes to text logging<br/>
         
           bc64bf4 3 months ago Sylvain Joyeux don't killing every existing TaskContext and Process in Orocos.run, only the ones we actually started<br/>
         
           6937ea8 3 months ago Jakob Schwendner updated misleading info messages<br/>
         
           9b4d47c 3 months ago Sylvain Joyeux de-duplicate the typekit path searching logic<br/>
         
           76b42b3 3 months ago Sylvain Joyeux delete the orocos logfile generated for the Ruby process by default<br/>
         
           2d0577e 3 months ago Sylvain Joyeux rename the orocos.log from the ruby process to the same pattern than for the deployments<br/>
         
           2ec2ecd 3 months ago Sylvain Joyeux generate the orocos log file in the working directory if :working_directory is given<br/>
         
           8e2bc09 3 months ago Sylvain Joyeux remove the useless and very expensive call to pkg-config --list-all<br/>
         
           dbb213a 3 months ago Alexander Duda log::TaskContext changefd read/read_new to read/read_new(sample)<br/>
         
           0976e34 3 months ago Alexander Duda add methods find_typekit_for and plugin_libs_for_name<br/>
         
           4a8df33 3 months ago Alexander Duda add method typ_name to InputWriter and OutputReader<br/>
         
           5761df4 3 months ago Sylvain Joyeux conf: fix loading files with no "--- name:value" header at the top<br/>
         
           49a32aa 3 months ago Sylvain Joyeux remove the init_hook stuff<br/>
         
           50a24a6 3 months ago Sylvain Joyeux fix test teardown if the setup failed early<br/>
         
           e1c70ae 3 months ago Sylvain Joyeux make #each_port yield already existing ports returned by #port<br/>
         
           f03be09 3 months ago Sylvain Joyeux display process server port in --help<br/>
         
           798f64b 3 months ago Sylvain Joyeux fix typelib-to-ruby convertion in operation return values<br/>
         
           fcafcb3 3 months ago Sylvain Joyeux add possibility to register "init hooks"<br/>
         
           0906a22 3 months ago Sylvain Joyeux don't try again to load a plugin that failed to load<br/>
         
           2e9bf67 3 months ago Sylvain Joyeux add the ability to load runtime Ruby support on a per-extension basis<br/>
         
           ba7e769 3 months ago Thomas Roehr When option valgrind is in use, check that valgrind is actually installed. Raise a proper error message if not.<br/>
         
           bbdd56a 3 months ago Alexander Duda add support for stream annotations to replay<br/>
         
           8a5c56d 3 months ago Alexander Duda add ruby helper functions for stream annotation<br/>
         
           187a5ae 3 months ago Alexander Duda Replay: update to be compatible with meta data<br/>
         
           e28c4b3 3 months ago Felix Rehrmann Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb<br/>
         
           0d87aa9 3 months ago Felix Rehrmann Named the orocos log file according to the desired name.<br/>
         
           72130a0 3 months ago Felix Rehrmann Port_log_file is named after desired name, now.<br/>
         
           8e99ad1 3 months ago Felix Rehrmann Adapted script to new rename option in orogen.rb<br/>
         
           a22087b 3 months ago Sylvain Joyeux conf: fix #load_dir<br/>
         
           5e5b8c4 3 months ago Sylvain Joyeux test: add tests for ConfigurationManager#load_dir<br/>
         
           e855c90 3 months ago Sylvain Joyeux roby: properly instanciate the instanciate Qt GUI with the command-line spec<br/>
         
           e0a6990 3 months ago Sylvain Joyeux roby: fix DataServiceInstance#connect_ports<br/>
         
           e849a13 3 months ago Sylvain Joyeux roby: make Engine#add_instance return a DataServiceInstance if a service is explicitely required<br/>
         
           e9816e3 3 months ago Sylvain Joyeux roby: documentation<br/>
         
           db40c9a 3 months ago Sylvain Joyeux roby: reintroduce view-X-as-service-Y mechanisms<br/>
         
           e6c0cda 3 months ago Sylvain Joyeux improve error reporting if one of the state transition calls fails<br/>
         
           65b3e2d 3 months ago Sylvain Joyeux roby: fix tasks that never got executed if their inputs were removed after they were setup<br/>
         
           7e839bb 3 months ago Sylvain Joyeux define Orocos.loaded?<br/>
         
           0ac9e74 3 months ago Sylvain Joyeux roby: fix fixpoint detection in DataFlowComputation<br/>
         
           7eeeeb6 3 months ago Sylvain Joyeux roby: style fix<br/>
         
           1ddee7f 3 months ago Sylvain Joyeux roby: fix to #select_services_for(service_list)<br/>
         
           d7f6471 3 months ago Sylvain Joyeux roby: avoid doing unnecessary computations when compositions have no specializations<br/>
         
           44d8e96 3 months ago Sylvain Joyeux Merge branch 'bundles' of git://gitorious.org/rock-toolchain/orocos-rb into bundles<br/>
         
           bf692c5 3 months ago Sylvain Joyeux roby: fix call to #setup in rock-roby instanciate (1.8/1.9)<br/>
         
           0835c25 3 months ago Sylvain Joyeux roby: remove debugging output<br/>
         
           21c1684 3 months ago Sylvain Joyeux Revert "roby: do not attemp to connect tasks that failed to be configured"<br/>
         
           bf7d2c5 3 months ago Sylvain Joyeux roby: remove some useless debugging output<br/>
         
           0b64353 3 months ago Sylvain Joyeux roby: fix naming of the oroGen specs that we create internally<br/>
         
           83c11fc 3 months ago Sylvain Joyeux roby: fix handling of #setup? during error handling in #setup<br/>
         
           b58fbcd 3 months ago Sylvain Joyeux roby: do not attemp to connect tasks that failed to be configured<br/>
         
           84e6330 3 months ago Sylvain Joyeux since rock-run is going to use bundle support, move it to base/scripts<br/>
         
           bb472c9 3 months ago Sylvain Joyeux roby: fix rock-roby system_model<br/>
         
           e338cc0 3 months ago Sylvain Joyeux roby: display the roles in relation graphs<br/>
         
           b09dbbf 3 months ago Sylvain Joyeux roby: make dummy orogen interfaces truly anonymous<br/>
         
           bebb2ef 3 months ago Sylvain Joyeux roby: cleanup loading code<br/>
         
           818dfa3 3 months ago Sylvain Joyeux roby: greatly improve the Qt GUI for rock-roby instanciate<br/>
         
           9bc0b43 3 months ago Sylvain Joyeux roby: remove obsolete code in PlanDisplay<br/>
         
           6badb12 3 months ago Sylvain Joyeux roby: implement PlanDisplay#ensure_visible(task)<br/>
         
           9d571d0 3 months ago Sylvain Joyeux roby: in PlanDisplay, catch and report rendering errors<br/>
         
           be45779 3 months ago Sylvain Joyeux roby: remove debugging output<br/>
         
           4e7e108 3 months ago Sylvain Joyeux roby: fix behaviour of Engine#resolve under exception when :on_error == :commit<br/>
         
           a52f3a5 3 months ago Sylvain Joyeux roby: in Graphviz, make sure that an annotation is only added once<br/>
         
           dd02d21 3 months ago Sylvain Joyeux roby: fix some initialization issues in plan display<br/>
         
           4a9b07f 3 months ago Sylvain Joyeux roby: some more cleanup related to plan display<br/>
         
           8296ef2 3 months ago Sylvain Joyeux roby: make zooming smoother in plan display<br/>
         
           42d59e3 3 months ago Sylvain Joyeux roby: in rock-roby instanciate, display partial plans even if there is an error<br/>
         
           fa1d792 3 months ago Sylvain Joyeux roby: add UI to PlanDisplay so that it provides means to customize the display interactively<br/>
         
           4b42664 3 months ago Sylvain Joyeux roby: integrate task context models to the system_model GUI<br/>
         
           cdb405f 3 months ago Sylvain Joyeux roby: small code refactoring in scripts/system_model<br/>
         
           256e884 3 months ago Sylvain Joyeux roby: fix the composer GUI<br/>
         
           29e2c13 3 months ago Sylvain Joyeux stop polluting the place with orocos.log files<br/>
         
           3258205 3 months ago Sylvain Joyeux in tests, in #start, attach to existing components if they are there<br/>
         
           8557a3a 3 months ago Sylvain Joyeux define assert_state_change<br/>
         
           294f54b 3 months ago Sylvain Joyeux fix error message in assert_has_one_new_sample<br/>
         
           a62872b 3 months ago Sylvain Joyeux in #kill, don't do anything if the component is already dead<br/>
         
           3c7aed0 3 months ago Sylvain Joyeux roby: fix handling of excluded models in graphviz generation<br/>
         
           a508f69 3 months ago Sylvain Joyeux roby: convert find_files(:all =&gt; false) to #find_file<br/>
         
           2b46444 3 months ago Sylvain Joyeux roby: allow creating specializations of specializations<br/>
         
           aaf7bcc 3 months ago Sylvain Joyeux roby: properly update the #specializations set for specialized compositions<br/>
         
           a84692e 3 months ago Sylvain Joyeux roby: fix infinite recursion in compositions with specializations<br/>
         
           41cb1bf 3 months ago Sylvain Joyeux roby: remove dead code<br/>
         
           58b45af 3 months ago Sylvain Joyeux roby: fix specializations without specialization blocks<br/>
         
           e96d8bf 3 months ago Sylvain Joyeux roby: don't automatically propagate autoconnections to specializations<br/>
         
           a0072e6 3 months ago Sylvain Joyeux roby: make task.service_name_srv return the DataServiceInstance that represents "service_name" on task<br/>
         
           7841565 3 months ago Sylvain Joyeux roby: doc fix<br/>
         
           11989f9 3 months ago Sylvain Joyeux roby: more debugging output in #can_merge?<br/>
         
           c7ca59d 3 months ago Sylvain Joyeux roby: propagate the device configuration modules along the device model hierarchy<br/>
         
           64ce211 3 months ago Sylvain Joyeux roby: fix #resolve when no deployments are generated<br/>
         
           93f66f9 3 months ago Sylvain Joyeux roby: some fixes to the test_task test case<br/>
         
           4a8afc7 3 months ago Sylvain Joyeux roby: just use the generic unit testing support<br/>
         
           dd1b13e 3 months ago Sylvain Joyeux roby: TaskContext#configure always exists now, so no need to check if it exists<br/>
         
           c49673f 3 months ago Sylvain Joyeux roby: in #setup, set self.conf to ['default'] if no configuration has been selected<br/>
         
           6a0ca6d 3 months ago Sylvain Joyeux app: in SystemModel#load, normalize the path added to $LOADED_FEATURES<br/>
         
           98bd198 3 months ago Sylvain Joyeux roby: in scripts/system_model, don't display specializations in graphs<br/>
         
           2e8e416 3 months ago Sylvain Joyeux roby: in GUI, don't emit selectedObject if there is no actual object<br/>
         
           47cd1e4 3 months ago Sylvain Joyeux roby: in graphviz output, use annotations to format the specializations<br/>
         
           9242394 3 months ago Sylvain Joyeux roby: small renaming for clarification<br/>
         
           e748871 3 months ago Sylvain Joyeux roby: define #full_name on device description objects<br/>
         
           fb4b2ff 3 months ago Sylvain Joyeux roby: make #add_instance accept service specifications<br/>
         
           a11ab68 3 months ago Sylvain Joyeux roby: ensure unicity in DependencyInjection#candidates_for<br/>
         
           8bd46e3 3 months ago Sylvain Joyeux roby: accept to connect services together and/or to tasks<br/>
         
           cb769eb 3 months ago Sylvain Joyeux roby: make #short_name even shorter<br/>
         
           ae5d94d 3 months ago Sylvain Joyeux app: fix backward compatibility for tasks/orogen<br/>
         
           617a7c8 3 months ago Sylvain Joyeux roby: in scripts/system_model, rework the specialization browsing code<br/>
         
           50b8c87 3 months ago Sylvain Joyeux roby: remove dead code<br/>
         
           1a4df9a 3 months ago Sylvain Joyeux roby: fix handling of placeholder tasks when one of the models is a task model<br/>
         
           69de8e7 3 months ago Sylvain Joyeux roby: allow the graphviz output to generate non-directed graphs as well<br/>
         
           928e6ec 3 months ago Sylvain Joyeux roby: fix Composition.find_common_specialization_subset<br/>
         
           24cd3da 3 months ago Sylvain Joyeux roby: some documentation fixes<br/>
         
           27964e2 3 months ago Sylvain Joyeux roby: fix Composition.instanciate_specialization(Specialization.new, [])<br/>
         
           527e0fd 3 months ago Sylvain Joyeux roby: make sure that Specialization.new acts as a identity operator for #merge and #compatible_with?<br/>
         
           426b92a 3 months ago Sylvain Joyeux roby: fix some backtrace propagation<br/>
         
           8c7afe4 3 months ago Sylvain Joyeux roby: fix detection and handling of ambiguities in Composition#instanciate<br/>
         
           75d8c53 3 months ago Sylvain Joyeux roby: fix pretty-printing of NoMatchingService<br/>
         
           da17ecc 3 months ago Sylvain Joyeux roby: remove hardcoded INFO loglevel in scripts/system_model<br/>
         
           a3e1db7 3 months ago Sylvain Joyeux roby: remove obsolete methods<br/>
         
           fdfbf3e 3 months ago Sylvain Joyeux rock-roby: the Bundle namespace has been renamed to Bundles<br/>
         
           67aa01c 3 months ago Sylvain Joyeux roby: remove debugging output<br/>
         
           ffffbb5 3 months ago Sylvain Joyeux roby: in scripts, do not reset the filter_backtraces option to false from app.yml even if --debug is not given<br/>
         
           4ec7f4f 3 months ago Sylvain Joyeux roby: make system_model load all models if no arguments are given<br/>
         
           243edef 3 months ago Sylvain Joyeux roby: misc fixes related to the refactoring of specialization handling<br/>
         
           e3d3ba6 3 months ago Sylvain Joyeux in Orocos.load, un-export the last registry if we get called multiple times<br/>
         
           420473e 3 months ago Sylvain Joyeux gui: fix system_model visualization w.r.t. the refactored specialization code<br/>
         
           2840e38 3 months ago Sylvain Joyeux roby: define DataServiceModel#pretty_print<br/>
         
           b3020e0 3 months ago Sylvain Joyeux roby: rework the specialization handling<br/>
         
           fc0ed5a 3 months ago Sylvain Joyeux roby: generate a proper error when an ambiguity exists in CompositionChild#method_missing<br/>
         
           0be5d4b 3 months ago Sylvain Joyeux gui: in system model view, allow navigation through specializations graphically<br/>
         
           c098eec 3 months ago Sylvain Joyeux gui: in plan_display, implement generic click-to-object selection<br/>
         
           892624b 3 months ago Sylvain Joyeux gui: in graphviz generator, do display toplevel components<br/>
         
           32c34c3 3 months ago Sylvain Joyeux gui: lots of improvements to the system_model display<br/>
         
           cd188b7 3 months ago Sylvain Joyeux gui: in plan display, implement having multiple sections in the graphics view<br/>
         
           2b405b7 3 months ago Sylvain Joyeux gui: add port annotation for graphviz export<br/>
         
           9600c05 3 months ago Sylvain Joyeux roby: make rock-roby initialize through the bundle system<br/>
         
           df19b48 3 months ago Sylvain Joyeux roby: fix some file-searching issues<br/>
         
           1e1880a 3 months ago Sylvain Joyeux roby: modify system_model to have a proper browsing UI<br/>
         
           6bb294c 3 months ago Sylvain Joyeux gui: accept an IO as argument of display_svg<br/>
         
           fe67fc9 3 months ago Sylvain Joyeux roby: accept instantiating pure services<br/>
         
           b890e71 3 months ago Sylvain Joyeux roby: move the task-proxy creation for data services to SystemModel<br/>
         
           251ee27 3 months ago Sylvain Joyeux gui: fix displaying plans that have no hierarchy<br/>
         
           c664ade 3 months ago Sylvain Joyeux app: convert to the new Roby::Application file-resolution interface<br/>
         
           bb6a614 3 months ago iMoby Port#model can be nil for tasks without models and/or for dynamic ports<br/>
         
           7048c74 4 months ago Alexander Duda Task: add doc method for receiving information about the task<br/>
         
           e027c47 4 months ago Alexander Duda Port: add doc method for receiving information about the port<br/>
         
           9e7969d 4 months ago Alexander Duda TaskContext: add methods handling conf_files<br/>
         
           5ec6d41 4 months ago Alexander Duda configuration:apply: add default value for names<br/>
         
           2669b8f 4 months ago Alexander Duda configuration: factoring out load_file from load_dir<br/>
         
           b969a86 4 months ago Jakob Schwendner fix in replay with property log files<br/>
         
           fad1be5 4 months ago Jakob Schwendner reinstantiated fix for taking the latest log_file if multiple files provide the same stream<br/>
         
           8b2c9de 4 months ago Thomas Roehr Fix URL.<br/>
         
           b401133 5 months ago iMoby roby: remove debugging output<br/>
         
           85778de 5 months ago Janosch Machowinski logreplay: bugfix, only write non nil samples on seek<br/>
         
           1565e94 5 months ago Sylvain Joyeux test: allow selecting policies for writers and readers<br/>
         
           1eac174 5 months ago Sylvain Joyeux roby: allow deployment even if rock's logger is not used<br/>
         
           0c885cf 5 months ago Sylvain Joyeux roby: fix ::Logger vs. Orocos::RobyPlugin::Logger mismatch<br/>
         
           6bf6337 5 months ago Sylvain Joyeux make Orocos.load_typekit_for return the typekit that defines the type<br/>
         
           5cf95de 5 months ago Sylvain Joyeux roby: revive the test_deployment.rb test<br/>
         
           2b85c00 5 months ago Sylvain Joyeux roby: don't rely on the Logger being there in scripting and UI<br/>
         
           b5c295b 5 months ago Sylvain Joyeux roby: fix method-wide ensure block<br/>
         
           a7e57cd 5 months ago Sylvain Joyeux test for the prefix functionality<br/>
         
           a8c7093 5 months ago Sylvain Joyeux roby: load any orogen file added to models/orogen/ as dummy orogen definition<br/>
         
           48f1012 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           6918a1e 5 months ago Thomas Roehr roby: in InstanceSelection#select_services_for, don't do anything if the selection is of pure data services<br/>
         
           9a1ff5a 5 months ago Thomas Roehr roby: emit ready as soon as the process *is* ready<br/>
         
           197e17a 5 months ago Sylvain Joyeux roby: add missing service selection step during composition instanciation<br/>
         
           aa052f6 5 months ago Sylvain Joyeux roby: fix side-effect in InstanceSelection.from_object<br/>
         
           3e7aafe 5 months ago Sylvain Joyeux bin: add an experimental rock-run tool<br/>
         
           bed9367 5 months ago Sylvain Joyeux set the default configuration log file name to 'properties' to match Roby<br/>
         
           22c85c8 5 months ago Sylvain Joyeux set @attach to false in common_optparse_setup<br/>
         
           db487f2 5 months ago Sylvain Joyeux extend the configuration handling to common_optparse_setup<br/>
         
           2ec5dfb 5 months ago Sylvain Joyeux add the --gui option to common_optparse_setup<br/>
         
           eb7ff21 5 months ago Sylvain Joyeux bin: in oroconf logextract, make sure convert the typelib type to YAML, not the Ruby type<br/>
         
           741a9c8 5 months ago Sylvain Joyeux rename do_initialize to load_standard_typekits, and call it in Orocos.load<br/>
         
           ce51e1a 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           da30685 5 months ago Sylvain Joyeux really fix edb4b3efa7<br/>
         
           b366f55 5 months ago Sylvain Joyeux really fix edb4b3efa7<br/>
         
           edb4b3e 5 months ago Sylvain Joyeux fix Orocos.run 'deployment_name'<br/>
         
           10ff825 5 months ago Sylvain Joyeux in TaskContext.get, call the nameservice before we look for a process to support the new task<br/>
         
           9b5e71d 5 months ago Sylvain Joyeux roby: generate proper stream metadata when setting up loggers<br/>
         
           d037517 5 months ago Sylvain Joyeux add a logextract mode to oroconf<br/>
         
           f314ece 5 months ago Sylvain Joyeux make #log_metadata return a proper hash<br/>
         
           7b811b7 5 months ago Sylvain Joyeux in TaskContext.get, try resolving the name before we look for a process object<br/>
         
           e97e69c 5 months ago Sylvain Joyeux make the process server use Process#spawn instead of Orocos.run<br/>
         
           8405628 5 months ago Sylvain Joyeux in property log, make sure that Conf#apply generates the same logical timestamps for all written values<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="37"> 29 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_37"><td>
         
           2d042dc 9 weeks ago Sylvain Joyeux add a method to generate a file from another while renaming the streams<br/>
         
           fe0a976 4 months ago Sylvain Joyeux in index building, don't catch Interrupt<br/>
         
           799de40 4 months ago Sylvain Joyeux pocolog: make sure we apply the newly loaded typelib plugins to the displayed stream<br/>
         
           c840759 4 months ago Sylvain Joyeux do display the return value of --expr in pocolog<br/>
         
           183933d 4 months ago Janosch Machowinski stream_aligner.rb: re-added seek to time<br/>
         
           bef5492 4 months ago Jakob Schwendner add subfield access for compressed log entries<br/>
         
           a3c023a 4 months ago Janosch Machowinski bugfix always return 'used' time<br/>
         
           c297776 4 months ago Janosch Machowinski stream_aligner only decode subfield 'time' while indexing<br/>
         
           0d79b4b 4 months ago Janosch Machowinski data_reader::data() do not read file twice for same data<br/>
         
           0f06c2c 4 months ago Janosch Machowinski allow seeking without loading of data<br/>
         
           950a105 4 months ago Janosch Machowinski added ability to load only a sub field of a data stream<br/>
         
           86eaa71 5 months ago Janosch Machowinski readded the use_sample_time 'feature'<br/>
         
           c554de3 5 months ago Thomas Roehr Revert "fix wrong require for the priority queue implementation"<br/>
         
           d70330f 5 months ago Thomas Roehr fix wrong require for the priority queue implementation<br/>
         
           1f32d79 5 months ago Janosch Machowinski replaced priority queue gem by way more efficient one<br/>
         
           555292a 5 months ago Janosch Machowinski show progress while indexing in stream aligner<br/>
         
           da523e6 5 months ago Janosch Machowinski reworked stream aligner to work without the 'old' index<br/>
         
           9fd4757 5 months ago Janosch Machowinski removed old index and seek methods and replaced it by StreamIndex<br/>
         
           583bd32 5 months ago Janosch Machowinski added new class StreamIndex<br/>
         
           a8eb451 5 months ago Sylvain Joyeux Merge branch 'temp'<br/>
         
           c5418c6 5 months ago Sylvain Joyeux bin: remove debugging output<br/>
         
           b0f0e31 5 months ago Sylvain Joyeux if --metadata is given, also show it for empty streams<br/>
         
           8807d00 5 months ago Sylvain Joyeux test: fix name clash between test_file and test_data_stream<br/>
         
           bf96648 5 months ago Sylvain Joyeux bin: optionally display the metadata<br/>
         
           f0222f8 5 months ago Sylvain Joyeux implement #has_stream?(name)<br/>
         
           1515160 5 months ago Sylvain Joyeux test for the behaviour that 16e2ccd13c5394ea88858b5d9fd5dad88c8f9aba is fixing<br/>
         
           dfd90b0 5 months ago Sylvain Joyeux fix #last<br/>
         
           64a129c 6 months ago Sylvain Joyeux fix past-the-end behaviour on #next and #previous<br/>
         
           d289d2a 6 months ago Sylvain Joyeux implement metadata support<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="38"> 63 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_38"><td>
         
           ce8b031 7 days ago Sylvain Joyeux app: fix roby/standalone<br/>
         
           439a344 13 days ago Sylvain Joyeux core: in support.rb, make sure that DRb is there when we workaround DRb.here?<br/>
         
           4e9e2e5 13 days ago Sylvain Joyeux in roby/support.rb, require drb explicitely to make sure that we apply a DRb-related workaround on versions where it is needed<br/>
         
           4f7aaf7 8 weeks ago Sylvain Joyeux core: fix a corner-case where a failed dependency relation would be ignored<br/>
         
           a04f7f3 8 weeks ago Sylvain Joyeux app: add missing require for yaml<br/>
         
           e8ed81d 8 weeks ago Sylvain Joyeux app: don't create any directory in Application.unique_dirname (!)<br/>
         
           0e40d9c 8 weeks ago Sylvain Joyeux app: make sure we can load roby/app without side effects, and by itself<br/>
         
           d9c8bcc 8 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           0677d97 8 weeks ago Sylvain Joyeux dist: add logs generated in tests/ to gitignore<br/>
         
           6372926 8 weeks ago Sylvain Joyeux core: a specific event can be involved in more than one exception. Fix interaction with error inhibition mechanisms<br/>
         
           687d513 8 weeks ago Sylvain Joyeux core: properly report the internal error of raising an exception in a wrong place<br/>
         
           ae5b99f 8 weeks ago Sylvain Joyeux core: in ChildFailedError, makes sure that we have our own copy of the relation info<br/>
         
           eb3b5ae 8 weeks ago Sylvain Joyeux core: fix task given as a failure point to EmissionFailed.new<br/>
         
           64a312f 8 weeks ago Sylvain Joyeux core: make sure that EmissionFailedError gets an event<br/>
         
           7f7e0cd 8 weeks ago Sylvain Joyeux core: assign the most specialized source event as the failure point for ChildFailedError<br/>
         
           a08f402 9 weeks ago Sylvain Joyeux core: do display the backtrace in PlanningFailedError<br/>
         
           b9d66bb 9 weeks ago Sylvain Joyeux core: in Exception#pretty_print, add the first backtrace line before the message<br/>
         
           28ae32f 10 weeks ago Sylvain Joyeux app: start to cleanup the startup configuration API<br/>
         
           1c2090f 10 weeks ago Sylvain Joyeux shell: commit a workaround to a dRoby bug<br/>
         
           8684c8d 10 weeks ago Sylvain Joyeux core: define #as_plan on Roby::Task, and make sure that we call it in the Plan#add and Plan#remove methods<br/>
         
           ee86113 10 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           5e4a711 10 weeks ago Sylvain Joyeux rename the workaround file from .cc to .inl to hide it from extconf<br/>
         
           60c6fd5 10 weeks ago Sylvain Joyeux workaround broken bundled property support in boost graph 1.48 (fixed on trunk)<br/>
         
           60fc398 2 months ago Sylvain Joyeux app: do update the symlink from logs/current to log/$log_dir even though $log_dir already exists<br/>
         
           edd833f 3 months ago Thomas Roehr app: Fix find_files for the case robot_name != robot_type<br/>
         
           14b8c2d 3 months ago Sylvain Joyeux app: make #setup_dirs callable outside of Roby itself (used by Rock bundles)<br/>
         
           f7b63d5 3 months ago Sylvain Joyeux app: define Roby::Application#find_dir<br/>
         
           4346fbc 3 months ago Sylvain Joyeux log: disable the vizkit integration for now<br/>
         
           32c869e 3 months ago Sylvain Joyeux test: make the test setup/teardown cycle robust to early failures in #setup<br/>
         
           3e1f248 3 months ago Sylvain Joyeux Merge branch 'bundles' of git://gitorious.org/rock-toolchain/roby into bundles<br/>
         
           9835746 3 months ago Sylvain Joyeux core: in #quarantine, do not remove the execution agent relation<br/>
         
           247d207 3 months ago Sylvain Joyeux core: in ExtendedObject#method_missing, return false if xxx? is called while xxx is not a member but #xxx is defined as a method on the object<br/>
         
           03039d4 3 months ago Sylvain Joyeux app: improve error message display in the shell<br/>
         
           2ed36e9 3 months ago Sylvain Joyeux app: fix scripts/shell<br/>
         
           acc3e7c 3 months ago Sylvain Joyeux core: remove useless debugging output<br/>
         
           ffdb59d 3 months ago Sylvain Joyeux core: properly report non-fatal errors through both the ExecutionEngine logger and the shell interface<br/>
         
           e0f7688 3 months ago Sylvain Joyeux resurrect some of the attic pages<br/>
         
           5c1cdfa 3 months ago Sylvain Joyeux app: properly handle Roby.app.find_files('path/to/file.rb')<br/>
         
           a4d974e 3 months ago Sylvain Joyeux cleanup issues in the guide generation<br/>
         
           e3faeea 3 months ago Sylvain Joyeux app: add *all* lib/ directories from search_path into $LOAD_PATH<br/>
         
           be8efe0 4 months ago Sylvain Joyeux app: add banner to find-events<br/>
         
           ae78858 4 months ago Sylvain Joyeux app: some more cleanup of loading code<br/>
         
           e467fae 4 months ago Sylvain Joyeux core: fix Plan#deep_copy_to<br/>
         
           3344591 4 months ago Sylvain Joyeux core: make display_exception return the exception instead of only true<br/>
         
           932fd6e 4 months ago Sylvain Joyeux app: implement configuration reloading<br/>
         
           405eff6 4 months ago Sylvain Joyeux core,test: test make_path_relative<br/>
         
           027d460 4 months ago Sylvain Joyeux app: remove misplaced break<br/>
         
           b634e6b 4 months ago Sylvain Joyeux app: define Application#find_file (singular) and make Application#find_files return an array<br/>
         
           69239ef 4 months ago Sylvain Joyeux app: fix #find_dirs<br/>
         
           488a80f 4 months ago Sylvain Joyeux app: fix backward compatibility of models/planners w.r.t. planners/<br/>
         
           75cda46 4 months ago Sylvain Joyeux app: fix #find_files_in_dirs<br/>
         
           364254f 4 months ago Sylvain Joyeux in Application#require, make sure we give a normalized relative path to Kernel#require<br/>
         
           ebeac61 4 months ago Sylvain Joyeux app: fixes to file-resolution methods<br/>
         
           0b67255 4 months ago Sylvain Joyeux app: add some logger output<br/>
         
           3d59d86 4 months ago Sylvain Joyeux core: in Exception#pretty_print, do not display the backtrace<br/>
         
           19339e1 4 months ago Sylvain Joyeux app: make #find_files return absolute paths<br/>
         
           c7b6516 4 months ago Sylvain Joyeux app: accept absolute paths in #find_files<br/>
         
           6bd8409 4 months ago Sylvain Joyeux app: make #find_dirs and Application in general have a search_path attribute<br/>
         
           c162334 4 months ago Sylvain Joyeux app: replace some occurences of APP_DIR to Roby.app.app_dir<br/>
         
           ab9bb06 4 months ago Sylvain Joyeux app: use #find_files and friends in places where it makes sense<br/>
         
           b69838f 4 months ago Sylvain Joyeux app: allow to override app_dir<br/>
         
           f09ec2b 4 months ago Sylvain Joyeux app: cleanup the loading code, and adapt it to the future Rock-bundle directory layout<br/>
         
           1190bf8 4 months ago Thomas Roehr With facets 2.9.3 the conversion of / to :: is only available through 'modulize', and not provided anymore by 'camelcase'<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/service_discovery">
         <th>tools/service_discovery</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="39"> 16 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_39"><td>
         
           76b92eb 2 months ago Thomas Roehr Enforce recommended maximum payload size of 1300. Throw exception when payload exceeds that limit.<br/>
         
           5a7a463 2 months ago Thomas Roehr Fix compiler warnings<br/>
         
           fbab0b7 2 months ago Thomas Roehr Throw proper std::runtime_error messages<br/>
         
           89f33a2 2 months ago Thomas Roehr Fix log statements<br/>
         
           ad3e278 2 months ago Thomas Roehr Fix behaviour of addedService when a LocalService has not be instanciated yet<br/>
         
           ee43fb4 2 months ago Thomas Roehr Make updateStringList thread-safe<br/>
         
           060c92a 2 months ago Thomas Roehr Set -Wall<br/>
         
           f722e41 4 months ago TR Add configuration test<br/>
         
           2cdc53a 4 months ago TR Fix service update<br/>
         
           a47babe 5 months ago Thomas Roehr Remove project reference<br/>
         
           4954259 5 months ago Thomas Roehr Fix minor formatting issues<br/>
         
           3cca8a6 5 months ago Thomas Roehr Cleanup of deprecated files<br/>
         
           1948002 5 months ago Thomas Roehr Some minor documentation adaption<br/>
         
           bc01c15 5 months ago Thomas Roehr Add timeout information to log message<br/>
         
           bf39fed 5 months ago Thomas Roehr Cleanup cmake<br/>
         
           1689146 5 months ago Thomas Roehr Remove old base class<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/rock_tutorial">
         <th>tutorials/rock_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="40"> 9 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_40"><td>
         
           aa4b888 8 days ago Alexander Duda fix ruby run script<br/>
         
           1ead246 8 days ago Alexander Duda remove old macro VizPluginRubyAdapter<br/>
         
           ca1990f 8 days ago Alexander Duda add git ignore<br/>
         
           1afda55 11 days ago Alexander Duda update RockVisualization to be compatible with vizkit.rb<br/>
         
           9b3d970 12 days ago Javier Hidalgo Carrio the rock has to roll along the y-axis<br/>
         
           5e688bc 12 days ago Javier Hidalgo Carrio RockControl::computeNextPose follows now the rock convention, X forward<br/>
         
           74d13e0 3 months ago Felix Rehrmann Fixed vizkit plugin registration.<br/>
         
           0c0533e 3 months ago Felix Rehrmann Only has RigidBodyState, now.<br/>
         
           e82aae9 3 months ago Felix Rehrmann fix registration of the pose visualization on vizkit3d<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/vizkit3d_plugin_tutorial">
         <th>tutorials/vizkit3d_plugin_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="41"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_41"><td>
         
           49b3a69 9 days ago Alexander Duda add gitignore and vizkit_plugin.rb<br/>
         
           b6e068a 10 days ago Alexander Duda update tutorial to the new plugin mechanism<br/>
         
         </td></tr>
       
       



       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="42"> 24 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_42"><td>
         
           5a1411b 11 days ago Sylvain Joyeux ruby: better error messages when convertion fails<br/>
         
           c8739be 3 weeks ago Janosch Machowinski bugfix: evaluate return value of filter_source correctly<br/>
         
           3d72139 3 weeks ago Janosch Machowinski bugfix, write debug output to correct stream<br/>
         
           caee7d6 3 weeks ago Sylvain Joyeux ruby: fix char-to/from-string convertions when /char is not available<br/>
         
           2ff1e60 4 weeks ago Sylvain Joyeux ruby,test: test that ContainerType always returns the same wrapper<br/>
         
           a22a019 4 weeks ago Sylvain Joyeux ruby: add one more debug message when VERBOSE is set<br/>
         
           f7b8cc3 4 weeks ago Sylvain Joyeux ruby: display the memory pointer in MemoryZone#to_s<br/>
         
           2d0988b 4 weeks ago Sylvain Joyeux ruby: fix CompoundType.get_fields for CompoundType itself (was only working for subclasses)<br/>
         
           47c9d62 4 weeks ago Sylvain Joyeux ruby: fix Type#to_s<br/>
         
           a636577 4 weeks ago Sylvain Joyeux ruby: fix handling of invalidation<br/>
         
           51b1d66 4 weeks ago Sylvain Joyeux ruby,test: rework the specialized_types test suite<br/>
         
           a0aa8cd 4 weeks ago Sylvain Joyeux ruby: invalidate children in ContainerType#clear<br/>
         
           80405a8 7 weeks ago Sylvain Joyeux ruby: add API to create new types on a registry<br/>
         
           c128aeb 10 weeks ago Sylvain Joyeux ruby: offer cached #direct_dependencies and #recursive_dependencies<br/>
         
           42e1c56 10 weeks ago Sylvain Joyeux ruby: replace the storage in export_typemape by sets instead of arrays<br/>
         
           4392e8d 10 weeks ago Sylvain Joyeux ruby: cache the result of #export_solve_namespace<br/>
         
           62d801a 10 weeks ago Sylvain Joyeux ruby: reduce the number of define_method calls by caching modules that define the accessors<br/>
         
           3dfc564 3 months ago Thomas Roehr Merge branch 'master' of git://gitorious.org/orocos-toolchain/rock-typelib<br/>
         
           6af925f 3 months ago Thomas Roehr ruby: Fix second condition for validation of temporary files in gccxml<br/>
         
           dbcaee3 3 months ago Sylvain Joyeux ruby: apply changes from converted types before pretty-printing the values<br/>
         
           4092381 3 months ago Sylvain Joyeux properly ignore qualified types (const, volatile)<br/>
         
           dd11512 3 months ago Thomas Roehr Check whether gccxml generates incomplete xml data, e.g. due to missing space in the /tmp folder. Provide a proper error message if not.<br/>
         
           0eb4b31 5 months ago Sylvain Joyeux ruby: small doc fix<br/>
         
           647b0f7 5 months ago Sylvain Joyeux ruby: fix calling CompoundType.is_a?(typename)<br/>
         
         </td></tr>
       
       





       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="43"> 6 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_43"><td>
         
           767c189 3 months ago Sylvain Joyeux fix the behaviour of load_dsl_file to match how require handles $LOADED_FEATURES<br/>
         
           e73a900 3 months ago Sylvain Joyeux don't select black explicitely for INFO and DEBUG<br/>
         
           08ef51e 4 months ago Sylvain Joyeux logger: use different colors if highline is present<br/>
         
           3ce8e7d 5 months ago Sylvain Joyeux logger: fix include/extend mismatch in the documentation<br/>
         
           626d030 5 months ago Sylvain Joyeux kernel: make a nicer syntax for #validate_options and #filter_options<br/>
         
           2b1a3f1 5 months ago Sylvain Joyeux add documentation to the logger support<br/>
         
         </td></tr>
       
       


</table>
