---
title: "2012-10-13"
sort_info: 995
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
    <li>slam/orogen/envire</li>
</ul>




<h1>Package status</h1>
<p>500 new commits in 46 packages<br/>
Affected packages: 
  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/scripts">base/scripts</a>

  <a href="#base/templates/vizkit">base/templates/vizkit</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#bundles/rock">bundles/rock</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#control/orogen/skid4_control">control/orogen/skid4_control</a>

  <a href="#control/orogen/trajectory_follower">control/orogen/trajectory_follower</a>

  <a href="#control/trajectory_follower">control/trajectory_follower</a>

  <a href="#drivers/camera_firewire">drivers/camera_firewire</a>

  <a href="#drivers/camera_interface">drivers/camera_interface</a>

  <a href="#drivers/camera_usb">drivers/camera_usb</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/orogen/aggregator">drivers/orogen/aggregator</a>

  <a href="#drivers/orogen/camera_base">drivers/orogen/camera_base</a>

  <a href="#drivers/orogen/camera_prosilica">drivers/orogen/camera_prosilica</a>

  <a href="#drivers/orogen/camera_usb">drivers/orogen/camera_usb</a>

  <a href="#drivers/orogen/fog_kvh">drivers/orogen/fog_kvh</a>

  <a href="#drivers/orogen/transformer">drivers/orogen/transformer</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#image_processing/jpeg_conversion">image_processing/jpeg_conversion</a>

  <a href="#image_processing/libelas">image_processing/libelas</a>

  <a href="#image_processing/orogen/stereo">image_processing/orogen/stereo</a>

  <a href="#image_processing/stereo">image_processing/stereo</a>

  <a href="#multiagent/fipa_acl">multiagent/fipa_acl</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_navigation">planning/corridor_navigation</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/nav_graph_search">planning/nav_graph_search</a>

  <a href="#planning/orogen/corridor_planner">planning/orogen/corridor_planner</a>

  <a href="#planning/vfh_star">planning/vfh_star</a>

  <a href="#tools/log_tools">tools/log_tools</a>

  <a href="#tools/logger">tools/logger</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/port_proxy">tools/port_proxy</a>

  <a href="#tools/service_discovery">tools/service_discovery</a>

  <a href="#tutorials/designer_widget_tutorial">tutorials/designer_widget_tutorial</a>

  <a href="#tutorials/orogen/message_producer">tutorials/orogen/message_producer</a>

  <a href="#tutorials/rock_tutorial">tutorials/rock_tutorial</a>

  <a href="#typelib">typelib</a>

  <a href="#utilrb">utilrb</a>
</p>


<table class="package_status">


       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           03cbfca 4 months ago Janosch Machowinski export typekits for base/Trajectory and std::vector&lt;base/Trajectory&gt;<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 36 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           867ce05 11 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           953fbf3 8 days ago Sylvain Joyeux fix wrong translation of the URL manifest entry into HTML<br/>
         
           187213a 3 weeks ago Alexander Duda bugfix: QtTypelibExtension was moved into the namespace Vizkit<br/>
         
           3ff3e20 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           bc997bf 2 months ago Felix Rehrmann Added a reuqire 'orocos' to bundle.rb<br/>
         
           878f5ed 4 months ago Alexander Duda Bundles: fix Bundles.puplic_logs=<br/>
         
           6cac163 5 months ago Alexander Duda update rock-inspect to be compatible with PluginSpec<br/>
         
           71f4796 6 months ago Alexander Duda remove old script rock-create-viykit3d-plugin<br/>
         
           f50a1f7 6 months ago Alexander Duda compatibility fix for rock-inspect<br/>
         
           a2eb58f 6 months ago Sylvain Joyeux add API documentation generation<br/>
         
           7ee3c7e 6 months ago Alexander Duda remove old script rock-create-vizkit-plugin<br/>
         
           358ef2a 6 months ago Alexander Duda update rock-create-vizkit-widget<br/>
         
           57d2297 6 months ago Sylvain Joyeux bundles: if Orocos got initialized already in Bundles.initialize, raise a proper exception<br/>
         
           82380df 6 months ago Sylvain Joyeux rock-doc-preview: don't copy the base.template and default.template files from the local directory<br/>
         
           0d7471e 6 months ago Sylvain Joyeux doc-preview: add --debug<br/>
         
           f8022d0 6 months ago Sylvain Joyeux doc-preview: fix when there are subfolders<br/>
         
           02f2bdc 6 months ago Sylvain Joyeux fix display of "short definitions" in package pages<br/>
         
           68df971 7 months ago Sylvain Joyeux bundle: add some common setup for orocos-ruby scripting<br/>
         
           112ae50 7 months ago Janosch Machowinski bugfix, return all projects, not only the one on the first page<br/>
         
           3eb19b1 7 months ago Janosch Machowinski added method to get url to repository<br/>
         
           b3d573f 7 months ago Janosch Machowinski bugfix, replace spaces by - in the project url<br/>
         
           0dd0ba8 7 months ago Allan E. Conquest Merge branch 'master' of git://gitorious.org/rock/scripts<br/>
         
           a8ead4e 7 months ago Allan E. Conquest Merge branch 'rock-create-widget'<br/>
         
           1e31450 7 months ago Sylvain Joyeux in rock-inspect, #load_orogen_project is meant to return nil on load error, fix<br/>
         
           a3187ee 7 months ago Sylvain Joyeux bundle: automatically register oroGen-related files (*.orogen, *.typelist) stored in models/orogen/<br/>
         
           c818693 7 months ago Allan E. Conquest rock-create-designer-widget: Output msg reminding updating manifest.xml<br/>
         
           b86b033 7 months ago Sylvain Joyeux bundle: load Roby's config/app.yml before accessing the log directory name<br/>
         
           1934b0d 7 months ago Sylvain Joyeux unset ROCK_BUNDLE in $AUTOPROJ_ROOT_DIR when bundle-default is called without arguments<br/>
         
           d20675c 7 months ago Allan E. Conquest rename rock-create-widget =&gt; rock-create-qt-designer-widget<br/>
         
           21cf185 7 months ago Allan E. Conquest indentation<br/>
         
           933ddc9 7 months ago Allan E. Conquest --help text<br/>
         
           bfe0fbe 7 months ago Allan E. Conquest cleanup<br/>
         
           3f2578c 7 months ago Allan E. Conquest omit newline in templates if the line contains only ruby code<br/>
         
           5cd9bcc 7 months ago Allan E. Conquest refactoring: source out templates to templates/widget_generator/templates.rb<br/>
         
           7e6f21d 7 months ago Allan E. Conquest widget generator: copy .pc.in file generated by rock-create-lib back in src (from src.old)<br/>
         
           ab902f8 7 months ago Allan E. Conquest proposal: rock-create-widget Creates a Qt widget with a matching Qt Designer plugin at hand<br/>
         
         </td></tr>
       
       











       <tr class="name" id="base/templates/vizkit">
         <th>base/templates/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           035bdd0 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           88cc218 6 months ago Alexander Duda update to new plugin structure<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 18 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           1aba8bb 6 weeks ago Martin Fritsche converted define to warning to stop it messing up other modules<br/>
         
           ad16f04 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           5aa3d9e 3 months ago Janosch Machowinski bugfix: Set params to zero if curve is marked as singleton<br/>
         
           9ccdb3e 3 months ago Alexander Duda SonarScan: fix copying/swapping<br/>
         
           f6b9470 3 months ago Thomas Roehr Make sure test build correctly without SISL<br/>
         
           439741a 3 months ago Alexander Duda RigidBodyState: hasValidOrientation checks for unit quaternion<br/>
         
           667f7d0 4 months ago Matthias Goldhoorn Do an invalidation of the RBS by default, as mentioned on the mailinglist<br/>
         
           919170d 4 months ago Matthias Goldhoorn fixed invalidate and unit tests and added new method to init the rbs values unknown<br/>
         
           8986324 4 months ago Jakob Schwendner added missing include<br/>
         
           ab82f32 4 months ago Thomas Roehr Add fromString function and allow setting of the time resolution for toString. Switching to Microseconds precision as default for consistency reasons.<br/>
         
           5de5d2e 4 months ago Janosch Machowinski added new data type trajectory.<br/>
         
           9be75f9 4 months ago Janosch Machowinski bugfix: set correct include path for spline inside package<br/>
         
           34a1249 4 months ago Janosch Machowinski bugfix, throw in case of out of range, not in range<br/>
         
           ecef9fe 4 months ago Janosch Machowinski Spline: Bugfix, behave correct if split at start/end is requested<br/>
         
           437eeca 4 months ago Janosch Machowinski Spline: bugfix, relax boundary checks for curve parameter<br/>
         
           7139550 5 months ago Janosch Machowinski fix visibility of steaming operator for base::Time<br/>
         
           fe7f1dc 5 months ago Thomas Roehr Remove xor-constraint for &lt;libname&gt;.rb and &lt;libname&gt; directory for ruby extensions<br/>
         
           545c3a6 5 months ago Jakob Schwendner Added support for compact angle-axis representation in the pose class<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           46c5bf4 5 months ago Janosch Machowinski bugfix, normalize angle<br/>
         
         </td></tr>
       
       



       <tr class="name" id="bundles/rock">
         <th>bundles/rock</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 16 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           558919a 3 weeks ago Janosch Machowinski updated ICP Task model<br/>
         
           8f5c6f6 3 weeks ago Janosch Machowinski added odometry task model services and compositions<br/>
         
           877c694 2 months ago Janosch Machowinski moved code for corridor following via CS into composition.<br/>
         
           ae5e430 2 months ago Janosch Machowinski CF: Decreased look ahead on median curve<br/>
         
           5e98143 3 months ago Janosch Machowinski CS: use pose of composition not of global state<br/>
         
           de8b631 3 months ago iMoby CS: Output point that was reached<br/>
         
           70e1a60 3 months ago Janosch Machowinski CorridorServoing: Warn if the time of the global position estimation differs from odometry<br/>
         
           c97603f 3 months ago Janosch Machowinski compute CS heading from median curve not end of median curve<br/>
         
           dd1b87a 4 months ago Janosch Machowinski bugfix, only calculate target heading if there is an odometry sample<br/>
         
           072e660 4 months ago Janosch Machowinski added mapper to corridorServoing Composition<br/>
         
           cc01e43 4 months ago Janosch Machowinski CorridorServoing: disconnect direction writer of goal is reached<br/>
         
           2fe5e65 4 months ago Janosch Machowinski bufix: convert CorridorServoing heading into frame of relative pose provider<br/>
         
           c0c1a83 4 months ago iMoby in timestamping support, use find_local_tasks to be transaction-friendly<br/>
         
           eb2d5b8 5 months ago Janosch Machowinski possible bugfix, in Cmp::StereoProcessing<br/>
         
           845bc10 5 months ago Janosch Machowinski added orogen file for Stereo Processing<br/>
         
           57ee98a 5 months ago Janosch Machowinski make camera_firewire and Srv::ImageProvider<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           7542184 5 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/orogen/skid4_control">
         <th>control/orogen/skid4_control</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="8"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_8"><td>
         
           39a76ca 5 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/orogen/trajectory_follower">
         <th>control/orogen/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 7 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           0ca1871 4 months ago Janosch Machowinski added option to overwrite trajectory speeds<br/>
         
           ec78a2e 4 months ago Janosch Machowinski only call state if not in wanted state.<br/>
         
           f1747cb 4 months ago Janosch Machowinski moved task implementation into own class/ added multi trajectory feature<br/>
         
           b3e74ad 4 months ago iMoby bug fix<br/>
         
           5185424 4 months ago Ajish Babu added replay script for testing<br/>
         
           64ed6e3 4 months ago Janosch Machowinski possible bugfix for param past end of curve bug.<br/>
         
           290e90a 5 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       





       <tr class="name" id="control/trajectory_follower">
         <th>control/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="10"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_10"><td>
         
           5fe88d4 4 months ago Ajish Babu fix for moving in the reverse direction<br/>
         
           b40efb7 4 months ago Janosch Machowinski bugfix:  invert forwardLength and theta_e if driving backwards<br/>
         
           f7d322a 4 months ago Janosch Machowinski moved trajectory follower from orogen module into own class<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/camera_firewire">
         <th>drivers/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           982b564 11 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           d329ea0 5 days ago Sylvain Joyeux update Doxyfile.in using the template from Rock's cmake lib<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_interface">
         <th>drivers/camera_interface</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="12"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_12"><td>
         
           8e9cc13 3 months ago Felix Rehrmann Added MirrorYToOn and MirrorYToOff to enum_attrib.<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/camera_usb">
         <th>drivers/camera_usb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 14 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           8037a99 4 months ago Stefan Haase Initializes the non static components again.. could be a good idea.<br/>
         
           28786d6 4 months ago Stefan Haase GStreamer does not check the parameters using CamConfig by default anymore.<br/>
         
           423928b 4 months ago Stefan Haase Adds restart tests and a small test.<br/>
         
           8b5ccf3 4 months ago Stefan Haase Adds more secure deleting.<br/>
         
           aa54d98 4 months ago Stefan Haase Removes static GStreamer components / buffer.<br/>
         
           0476227 4 months ago Thomas Roehr Set buffer to null after call to unref<br/>
         
           dc69900 4 months ago Thomas Roehr Add debugging information<br/>
         
           561779e 4 months ago Thomas Roehr Allow restart of camera, which was prevented before due to an incomplete gstreamer reinitialization.<br/>
         
           0b8bf22 5 months ago Stefan Haase Integrates the v4l2 e-CAM32 controls and adapts its configuration.<br/>
         
           fb08633 5 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-drivers/camera_usb<br/>
         
           9320fcf 5 months ago Stefan Haase Adds omap_v4l2 header to use the private controls of the e-CAM32.<br/>
         
           c8cf541 5 months ago Stefan Haase Adds a function to request all available controls.<br/>
         
           1c00711 5 months ago Stefan Haase Changes regarding read- and write-only.<br/>
         
           5e79dbd 5 months ago Stefan Haase Adds read- and write-only controls and a small test-program in 'main_test'.<br/>
         
         </td></tr>
       
       

















       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           1ae39a0 11 days ago Sylvain Joyeux add missing header for close<br/>
         
           e21291a 11 days ago Sylvain Joyeux IOListener is polymorphic, add a virtual destructor<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/aggregator">
         <th>drivers/orogen/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           f793956 5 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_base">
         <th>drivers/orogen/camera_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           6ce1a16 5 months ago iMoby compile as release<br/>
         
           8b9da32 5 months ago iMoby bugfix: check if grabbing could be started<br/>
         
           e29b34c 5 months ago iMoby fix usage of error(), exception() and fatal() in startHook, and use the new report() method<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/camera_prosilica">
         <th>drivers/orogen/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           8c72654 9 weeks ago Alexander Duda Revert "added third standard camera deployment"<br/>
         
           c1806d8 9 weeks ago Alexander Duda Revert "cg added front camera deployment"<br/>
         
           0313a40 3 months ago DAGON PC 1 cg added front camera deployment<br/>
         
           7ddd837 5 months ago Sylvain Joyeux configureCamera now reports failure through its return value, update<br/>
         
           fd47d77 11 months ago Marc Hildebrandt added third standard camera deployment<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_usb">
         <th>drivers/orogen/camera_usb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 14 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           cf6162d 4 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-drivers/orogen-camera_usb<br/>
         
           01e41be 4 months ago Stefan Haase Adds just some lines of documentation.<br/>
         
           c309a48 4 months ago Stefan Haase Swichtes back to no-effect images.<br/>
         
           d772154 5 months ago Stefan Haase Adds adapted run-scripts for the Microsoft Life Cam and the Gumstix e-CAM32.<br/>
         
           7f0e0e4 5 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-drivers/orogen-camera_usb<br/>
         
           452174b 5 months ago Stefan Haase Adds information to the run_arm.rb script.<br/>
         
           727c914 5 months ago Thomas Roehr Add display_remote_camera.rb<br/>
         
           cfc1130 5 months ago Stefan Haase Integrates the configuration of the special e-CAM32 v4l2 controls.<br/>
         
           71cbe50 5 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-drivers/orogen-camera_usb<br/>
         
           0fa48c1 5 months ago Stefan Haase Integrates e-CAM32 controls! :P<br/>
         
           6e4653b 5 months ago Stefan Haase Merge branch 'master' of git://gitorious.org/rock-drivers/orogen-camera_usb<br/>
         
           40d107a 5 months ago Stefan Haase adapted script<br/>
         
           9447587 5 months ago Sylvain Joyeux configureCamera now reports errors through true/false, and use report() for error reporting<br/>
         
           c68c0d9 7 months ago Stefan Haase Adds udev symlinks to the ruby start script run_arm.rb.<br/>
         
         </td></tr>
       
       











       <tr class="name" id="drivers/orogen/fog_kvh">
         <th>drivers/orogen/fog_kvh</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           8fc0c9e 5 weeks ago Sylvain Joyeux add missing dependency on drivers/orogen/aggregator<br/>
         
           1cac51b 8 weeks ago Matthias Goldhoorn Fixed missing type include<br/>
         
           2c38888 8 weeks ago Matthias Goldhoorn Minimal addional calls for the timestamp estimator to get debug output, and marked package as stable<br/>
         
         </td></tr>
       
       













       <tr class="name" id="drivers/orogen/transformer">
         <th>drivers/orogen/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           cdf771f 4 months ago iMoby roby: when looking for the transformer broadcaster, use find_local_tasks to be transaction-friendly<br/>
         
           13fd4fa 5 months ago Janosch Machowinski mark as stable<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           bacc9c8 5 months ago Janosch Machowinski mark as stable<br/>
         
           5eaf908 5 months ago Janosch Machowinski fix broken pretty print of transformation trees<br/>
         
         </td></tr>
       
       

















       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 8 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           64975ef 10 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           1611d99 8 days ago Sylvain Joyeux update Doxyfile.in to conform to the one from the cmake template<br/>
         
           deb489b 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           d5e340b 3 months ago Alexander Duda use LineStyle and ScatterStyle to modify graphs<br/>
         
           e2df21a 3 months ago Sankaranarayanan Natarajan added a function to plot data in "dot" format<br/>
         
           ab99211 5 months ago Jakob Schwendner stream_aligner_status: fix bug with inactive streams<br/>
         
           d34a68b 5 months ago Jakob Schwendner stream_aligner_widget: improve naming of streams, in case there is none<br/>
         
           db7f481 5 months ago Jakob Schwendner updated stream_aligner_widget<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 112 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           1e6fe96 9 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           c9a1f6f 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           1ab492b 3 months ago Marc Hildebrandt added possibility to visualize trajectory on rigidbodystate type<br/>
         
           6dec7e7 3 months ago Alexander Duda TrajectViz: add property too limit number of points<br/>
         
           32a945a 3 months ago Alexander Duda rock-display: fix showing task belonging to tooling<br/>
         
           3f6f2e4 3 months ago Alexander Duda ruby OQConnection: improve parameter filtering<br/>
         
           4b5c101 3 months ago Alexander Duda ruby TaskProxy: fix connect logic<br/>
         
           6e5bdb8 3 months ago Alexander Duda ruby TaskProxy::port: check for wrong parameter names<br/>
         
           b6bfc94 3 months ago Matthias Goldhoorn Plot2d: changed name of axis scaling function to sneak case to meet ruby conventions<br/>
         
           e7d0f46 3 months ago Alexander Duda ruby: fix Vizkit.connect_to task<br/>
         
           324d02b 3 months ago Matthias Goldhoorn added manual scaling function for axis, if autoscrolling is disabled<br/>
         
           507479d 3 months ago Alexander Duda QThreadedWidget: support for stopping and restarting the QtApplication<br/>
         
           6835f10 3 months ago Alexander Duda ruby: uiloader improve register_widget_for<br/>
         
           a6db721 3 months ago Alexander Duda ruby TaskProxy: fix unit test + bug in TaskContext.get + log ports<br/>
         
           927ebf5 3 months ago Alexander Duda TypelibQtAdapter: fix exception handling<br/>
         
           f990aa4 3 months ago Felix Rehrmann Added messages size option to rock-display.<br/>
         
           0391c80 3 months ago Alexander Duda QtThreadedWidget: fix segfault during quit<br/>
         
           7c91421 3 months ago Alexander Duda TypelibQtAdapter: fix segfault for NoMethodErrors<br/>
         
           b85ff50 3 months ago Alexander Duda LaserScanVisualization: fix colorizing<br/>
         
           4925bf8 3 months ago Alexander Duda oqconnection: support for task.port.connect_to task<br/>
         
           1db181a 3 months ago Sankaranarayanan Natarajan bug fixed: forgot to add graph<br/>
         
           55ee125 3 months ago Alexander Duda vizkit3d: validate static dynamic transformations<br/>
         
           0b4f633 3 months ago Alexander Duda plot2d: add support for dot style<br/>
         
           4d6c354 3 months ago Alexander Duda ruby: improve plot2d to allow custom plots<br/>
         
           b036325 4 months ago Alexander Duda log_control: add support for key streams<br/>
         
           fbe9b92 4 months ago Alexander Duda log_control: disable gui during log export<br/>
         
           e2480c9 4 months ago Alexander Duda rock-replay close progress bar if still visible<br/>
         
           f37c71b 4 months ago Alexander Duda ruby TreeModeler: improve display for empty log output ports<br/>
         
           2c105fb 4 months ago Alexander Duda rock-replay: add support to export an interval of samples<br/>
         
           78c1c09 4 months ago Jakob Schwendner uncertainty: catch nan in eigenvectors and prevent them from going into osg (which doesn't like them)<br/>
         
           9ecb330 4 months ago Alexander Duda LaserScanViz: improve color display<br/>
         
           6f54ccc 4 months ago Alexander Duda ruby rock-display: Fix load configuration<br/>
         
           324612e 4 months ago Alexander Duda ruby tree_modeler: improve display for LogReplay<br/>
         
           4820b81 4 months ago Alexander Duda ruby rock-display: improve error handling if no task name is given<br/>
         
           2ff3bd6 4 months ago Alexander Duda ruby TaskProxy: Do not access methods of the port_proxy if unreachable<br/>
         
           d1cf0e9 4 months ago Alexander Duda ruby TaskProxy: bugfix for cases when orocos is not initialized<br/>
         
           6fd7d78 4 months ago Alexander Duda ruby: rock-display: adjust timeouts<br/>
         
           217f356 4 months ago Alexander Duda ruby TaskProxy: cleanup API<br/>
         
           577810a 4 months ago Alexander Duda rock-display: add corba timeouts<br/>
         
           15c465a 4 months ago Alexander Duda ruby TaskProxy: improve reconnect if nameserver went down<br/>
         
           16eae7f 4 months ago Alexander Duda vizkit.rb: detect if the port proxy is not responding during start<br/>
         
           b3e1a8b 4 months ago Alexander Duda ruby TaskProxy: add State :TaskCrashed<br/>
         
           dfeb9d7 4 months ago Alexander Duda ruby StateViewer: change font size, improve logging<br/>
         
           6504a9e 4 months ago Alexander Duda port_proxy: cleanup<br/>
         
           20fe463 4 months ago Alexander Duda ruby: tree-modeler improve performance<br/>
         
           aa4464f 4 months ago Alexander Duda ruby: rock-display remove dangling names by default<br/>
         
           5d6d650 4 months ago Alexander Duda redesign of the port proxy to limit the use of blocking calls<br/>
         
           7649d3c 4 months ago Alexander Duda rock-display: keep log files if --debug option is given<br/>
         
           7cb03fd 4 months ago Janosch Machowinski compilefix for testcase<br/>
         
           4713b9a 4 months ago Janosch Machowinski register Vizkit3DWidget for type /transformer/ConfigurationState_m<br/>
         
           2ecf62a 4 months ago Sascha Arnold seperate the pair of MotionCommand2D and Pose in MotionCommandVisualization in two different update methods for each type and made MotionCommandVisualization available in ruby for type MotionCommand2D<br/>
         
           be70f0c 4 months ago Sascha Arnold made TrajectoryVisualization available for type Spline&lt;3&gt;<br/>
         
           0f9096c 4 months ago Alexander Duda ruby vizkit: use all superclasses of task.model to find a plugin<br/>
         
           2fc3013 4 months ago Alexander Duda ruby TaskProxy: code block on connect is called with the task as argument<br/>
         
           bbc928b 4 months ago Alexander Duda ruby: improve TaskProxy.disconnect<br/>
         
           81b806c 4 months ago Alexander Duda ruby: ReaderWriterProxy.disconnect<br/>
         
           82e7d1b 5 months ago Alexander Duda ruby tree_modeler give more information about a OQConnection<br/>
         
           af6cc97 5 months ago Alexander Duda ruby uiloader: automatically add class name as objectName if no objectName is given<br/>
         
           68b36e7 5 months ago Alexander Duda ruby: state_viewer fix update frequency<br/>
         
           772e54f 5 months ago Alexander Duda ruby bugfix: port_proxy disconnect<br/>
         
           f719979 5 months ago Alexander Duda update camera_control<br/>
         
           a11bb78 5 months ago Alexander Duda ruby update StateViewer (use TaskProxy)<br/>
         
           35ac2a0 5 months ago Alexander Duda ruby rock-display: improve error message for cases where the name service is not working accordingly<br/>
         
           f4efb20 5 months ago Alexander Duda ruby remove warning Task port_proxy is managed by an other ruby instance<br/>
         
           d9d16b5 5 months ago Alexander Duda ruby TaskProxy: speed up pinging for situations where multiple task go offline<br/>
         
           1095d01 5 months ago Alexander Duda ruby TaskProxy: bugfix name clash option :type<br/>
         
           873df06 5 months ago Alexander Duda ruby: uniform control plugin<br/>
         
           b5b0829 5 months ago Alexander Duda ruby fix unit test releated to the local name service<br/>
         
           fe16726 5 months ago Alexander Duda ruby update virtual_joystik to be compatible to the new uiloader<br/>
         
           718c397 5 months ago Alexander Duda ruby treeview add support for controlling ports via plugins<br/>
         
           4aabc19 5 months ago Alexander Duda ruby treeview compatibility update<br/>
         
           bc5b804 5 months ago Alexander Duda ruby BlockAdapter fix bind<br/>
         
           e36baf3 5 months ago Alexander Duda ruby: bugfix related to subfields<br/>
         
           f9634d2 5 months ago Alexander Duda ruby TaskProxy: Workaround for bug #168:<br/>
         
           c8dd0c4 5 months ago Alexander Duda ruby console: disable paste via mouse middle button (for now)<br/>
         
           36301a6 5 months ago Alexander Duda ruby tree_modeler: check if task is still available before iterating<br/>
         
           89a7f81 5 months ago Alexander Duda ruby Plot2d: add methods for setting x and y title<br/>
         
           b8d1ce2 5 months ago Alexander Duda ruby: console add method to quit application<br/>
         
           c42efc7 5 months ago Alexander Duda ruby: TreeView do not set parent to tree view<br/>
         
           82010c1 5 months ago Alexander Duda ruby: improve Vizkit::Timer<br/>
         
           7386412 5 months ago Alexander Duda ruby: use task inspector as default plugin for task context<br/>
         
           7c7b66c 5 months ago Alexander Duda ruby console plugin: allow ports to be added as dynamic obj<br/>
         
           e33643b 5 months ago Alexander Duda Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           3809711 5 months ago Alexander Duda ruby: add ruby plugin console<br/>
         
           d8b1bf2 5 months ago Alexander Duda ruby: small bugfix for vizkit plugin handling<br/>
         
           728c2c9 5 months ago Alexander Duda ruby: deprecate plugins in a more natural way<br/>
         
           318d488 5 months ago Alexander Duda ruby: add mechanism for pluign namespaces<br/>
         
           a7b9ac0 5 months ago Alexander Duda ruby bugfix: PluginSpec.clone<br/>
         
           a7b489a 5 months ago Alexander Duda ruby: update vizkit to use the name_service to find log tasks<br/>
         
           377492c 5 months ago Alexander Duda ruby: add option --clean to rock-display<br/>
         
           e374ab2 5 months ago Alexander Duda update rock-display to be compatible with the ui loader<br/>
         
           583534d 5 months ago Alexander Duda ruby tree_modeler: update tool tip to display field type<br/>
         
           3c73a52 5 months ago Alexander Duda ruby: bugfix find plugins which are not depricated<br/>
         
           970446a 5 months ago Alexander Duda ruby: bugfix rename_plugin<br/>
         
           28618d6 5 months ago Alexander Duda add unit test for widgets<br/>
         
           3095fe7 5 months ago Alexander Duda add flags for plugin_specs<br/>
         
           da97881 5 months ago Alexander Duda add mechanism to depricate all lower case plugins<br/>
         
           1bcdfed 5 months ago Alexander Duda bugfix vizkit.setup_wigdet<br/>
         
           153a6ba 5 months ago Alexander Duda cleanup PortProxy.type_name subfield support<br/>
         
           a8cbabe 5 months ago Alexander Duda fix unit test<br/>
         
           668aa0c 5 months ago Alexander Duda vizkit.rb: fix disconnect for widgets which are no longer visible<br/>
         
           6afd852 5 months ago Alexander Duda vizkit.rb TaskProxy: type_name returns wrong typelib type<br/>
         
           ad3aac2 5 months ago Alexander Duda uiloader: allow multi-values for register_widget_for<br/>
         
           35eec1f 5 months ago Alexander Duda bugfix for plugins created via ui-file<br/>
         
           09e3244 5 months ago Alexander Duda vizkit.rb small bugfix for widgets created via ui loader<br/>
         
           fc83499 5 months ago Alexander Duda vizkit.rb: fix error message for cases where a callback is registered twice<br/>
         
           04e3c21 5 months ago Alexander Duda fix orientation_view<br/>
         
           642d812 5 months ago Alexander Duda vizkit.rb: bugfix for ruby plugins<br/>
         
           fa8bffd 5 months ago Alexander Duda compatibility fix ruby1.9<br/>
         
           93ff9ce 5 months ago Alexander Duda ruby: cleanup uiloader<br/>
         
           882c705 5 months ago Alexander Duda vizkit.rb: bugfix for subfields which are none typelib objects<br/>
         
           ac8432a 5 months ago Jakob Schwendner register the StreamAlignerWidget with the UiLoader<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 16 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           5a1fcf6 7 weeks ago Janosch Machowinski Merge branch 'master' into next<br/>
         
           1b094bf 7 weeks ago Janosch Machowinski moved convertToCvMath function from base::Frame to FrameHelper<br/>
         
           89e33b6 7 weeks ago Janosch Machowinski do not use deprecated opencv headers<br/>
         
           4ab41ee 7 weeks ago Janosch Machowinski do not use deprecated opencv header<br/>
         
           273e0c4 8 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           6182738 8 weeks ago Alexander Duda fix warning: comparison between signed and unsigned integer expressions<br/>
         
           2d6a267 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           3a14414 9 weeks ago Thomas Roehr Fix: check for a valid resize target before activating resize mode<br/>
         
           6522133 9 weeks ago crex Throws exception if compressed images should be resized.<br/>
         
           94d549d 5 months ago Alexander Duda bugfix cannot find -ljpeg_conversion<br/>
         
           27559e7 5 months ago iMoby remove garbage from manifest and mark as stable<br/>
         
           050776f 5 months ago Jakob Schwendner fix test suite<br/>
         
           8a1f831 5 months ago Jakob Schwendner add assertion for loading of calibration files<br/>
         
           054e9d1 5 months ago Marc Hildebrandt added exception when calibration calculation fails<br/>
         
           bba704b 5 months ago Marc Hildebrandt added copy operators<br/>
         
           3e84b5c 5 months ago Marc Hildebrandt added image width and height to calibration structure<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/jpeg_conversion">
         <th>image_processing/jpeg_conversion</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="25"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_25"><td>
         
           6a76a4b 4 months ago crex Adds test program.<br/>
         
           4c136d0 4 months ago crex Adds base-logging and now the image-independent-attributes are copied during conversion.<br/>
         
           f05391f 5 months ago Janosch Machowinski compile with optimizations<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/libelas">
         <th>image_processing/libelas</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           0749846 4 months ago Leif Christensen added explicit -msse2 cflag for libelas pkg-config<br/>
         
           3131df9 5 months ago iMoby throw instead of exit in triangle.cpp<br/>
         
           1deda2d 5 months ago iMoby build with optimizations<br/>
         
           ae1bd5a 6 months ago Sylvain Joyeux add API documentation generation<br/>
         
           9f0e561 7 months ago Jan Frädrich Merge branch 'upstream'<br/>
         
           f3dd5f6 7 months ago Jan Frädrich upstream checkin from libelas website<br/>
         
         </td></tr>
       
       





       <tr class="name" id="image_processing/orogen/stereo">
         <th>image_processing/orogen/stereo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 16 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           68f1170 7 weeks ago Janosch Machowinski use FrameHelper::converToCvMath, not Frame::convertToCvMath<br/>
         
           dd24bc7 3 months ago Leif Christensen added image scaling feature to orogen/stereo (property)<br/>
         
           a9c6617 4 months ago Leif Christensen some backward compatibility for ruby versions &lt; 1.9<br/>
         
           7000127 5 months ago iMoby catch exceptions from denseStereoProcessing and write no frame in case of error<br/>
         
           6e3d6f6 5 months ago iMoby build with optimizations<br/>
         
           e9c1e47 5 months ago Janosch Machowinski Fixed memory leak in case task is reconfigured<br/>
         
           756b071 5 months ago iMoby added needs_configuration<br/>
         
           eabc800 5 months ago Jakob Schwendner made scripts ruby1.9 compatible<br/>
         
           0eb1e99 5 months ago Jakob Schwendner testing for valid frame needs to be done before its actually used<br/>
         
           8beb660 5 months ago Janosch Machowinski changed input port for images to ro_ptrs of base::samples::frame::Frame<br/>
         
           66962a5 5 months ago Jakob Schwendner Revert "fix: setDistanceImage now gets references, not pointers"<br/>
         
           4a40f53 7 months ago Sylvain Joyeux fix: setDistanceImage now gets references, not pointers<br/>
         
           bfe271c 7 months ago Jakob Schwendner rotation actually needs to be performed before the rectification.<br/>
         
           f28d4a1 7 months ago Jakob Schwendner fix compilation error<br/>
         
           cd61cbb 7 months ago Jakob Schwendner added property for indicating that the input image is rotated by 180 degrees<br/>
         
           97379b3 7 months ago Jakob Schwendner added code for support of psurf<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/stereo">
         <th>image_processing/stereo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 12 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           ac68b79 7 weeks ago Janosch Machowinski added missing include<br/>
         
           1280eb1 3 months ago cuslam added adaptive detector param for gpu<br/>
         
           066a3aa 3 months ago Marc Hildebrandt added detector configuration function<br/>
         
           5e71e9e 5 months ago iMoby build with optimizations<br/>
         
           d79f23a 5 months ago Marc Hildebrandt changed check for .depth to .channels in error message, since .channels was meant<br/>
         
           84f3a37 5 months ago Marc Hildebrandt added test for external memory matching<br/>
         
           e795ed1 5 months ago Marc Hildebrandt switched to correct opencv header, added possibility to use external memory for matching<br/>
         
           5fee34b 5 months ago Marc Hildebrandt added access methods to internal data structures for extracted features and keypoints<br/>
         
           c0e6aa8 5 months ago Jakob Schwendner added uncertainty information to isometry filter<br/>
         
           e73fde1 5 months ago Jakob Schwendner added feature size filter to stereo correspondences<br/>
         
           c1ba482 5 months ago Jakob Schwendner small api change<br/>
         
           36dbb9f 5 months ago Jakob Schwendner updates to psurf<br/>
         
         </td></tr>
       
       



       <tr class="name" id="multiagent/fipa_acl">
         <th>multiagent/fipa_acl</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 21 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           47f324d 6 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           2415e05 8 days ago Sylvain Joyeux update Doxyfile.in to have the output directories match the cmake template<br/>
         
           9621dde 2 months ago Thomas Roehr Add fipa_acl header<br/>
         
           6e12182 2 months ago Thomas Roehr Use typedef for AgentIDList<br/>
         
           7307371 2 months ago Thomas Roehr Remove project specific protocol<br/>
         
           6d3d3bf 2 months ago Thomas Roehr Remove unnecessary initializeFields<br/>
         
           0fb5782 2 months ago Thomas Roehr Add typedefs (for external usage)<br/>
         
           f995a18 2 months ago Thomas Roehr Update documentation<br/>
         
           5bafda1 4 months ago Thomas Roehr Adapt function signatures to using bool instead of int as return value<br/>
         
           344955f 4 months ago Thomas Roehr Fix conversation_monitor test setup<br/>
         
           1f67fbb 4 months ago Thomas Roehr Remove AgentID custom copy constructor and assign operator<br/>
         
           9e1ec81 4 months ago Thomas Roehr Fix constructor<br/>
         
           deb1cd3 4 months ago Thomas Roehr Fix missing lazy_ntohs and lazy_ntohl<br/>
         
           a0d325a 4 months ago Thomas Roehr Fix testParser script<br/>
         
           c67c101 4 months ago Thomas Roehr Improve debug and add test<br/>
         
           995fece 6 months ago Thomas Roehr Review message parser<br/>
         
           a2be35c 6 months ago Thomas Roehr Update tests<br/>
         
           6e9cdc3 7 months ago Thomas Roehr Allow for proper ruby library installation<br/>
         
           f240c02 7 months ago Thomas Roehr Remove obsolet lines from CMakeLists.txt<br/>
         
           d57ec26 7 months ago Thomas Roehr Add search for boost to main CMakeLists.txt<br/>
         
           16c2254 7 months ago Thomas Roehr Adapt to Rock CMake Macros<br/>
         
         </td></tr>
       
       



       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="30"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_30"><td>
         
           ac95de9 5 months ago Thomas Roehr gen: fix pattern matching to allow typelist parsing to handle all known formats<br/>
         
           8e0a2fd 5 months ago Sylvain Joyeux gen: list also the aliases in the typelist files<br/>
         
           50da208 5 months ago Sylvain Joyeux gen: fix #minimal_registry to include the opaque intermediates as well<br/>
         
           4d2dcc3 5 months ago Sylvain Joyeux gen: fix shutdown in orogen-generated components<br/>
         
           cd22ddc 5 months ago iMoby define the generic "report" category, that allows to report issues in start, configure as well as runtime<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_navigation">
         <th>planning/corridor_navigation</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="31"> 14 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_31"><td>
         
           34150fb 2 months ago Janosch Machowinski return status on trajectory generation<br/>
         
           3910d69 3 months ago Janosch Machowinski Servoing: Minor optimization<br/>
         
           17663f9 3 months ago Janosch Machowinski fix calculation of robot rotation between parent and current node<br/>
         
           3126b02 3 months ago Janosch Machowinski fix check for direction change and backwards driving<br/>
         
           60bbb7b 3 months ago Janosch Machowinski added method to get a vector of trajectories<br/>
         
           6df97f1 4 months ago Janosch Machowinski do not allow to plan backwards into unknown terrain.<br/>
         
           dbd922f 4 months ago Janosch Machowinski CS: make directions changes expensive<br/>
         
           d84ca8d 4 months ago Janosch Machowinski remove additional cost for backwards driving<br/>
         
           9616ef2 4 months ago Janosch Machowinski bugfix, compute heading from pose, not from last wanted heading<br/>
         
           8a7978e 4 months ago Janosch Machowinski fix projection function in backwards driving case<br/>
         
           d5d65fc 4 months ago Janosch Machowinski bugfix: Set correct speed in point turn case<br/>
         
           53b8ee4 4 months ago Janosch Machowinski added backwards driving<br/>
         
           7525149 4 months ago Janosch Machowinski bugfix, set correct speed after point turn<br/>
         
           cc99d13 4 months ago Janosch Machowinski bugfix: Find correct position on spline corresponding to the current one<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="32"> 15 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_32"><td>
         
           89b8cb3 6 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           e216104 5 days ago Sylvain Joyeux update Doxyfile.in from Rock's CMake template<br/>
         
           2564959 7 weeks ago Janosch Machowinski Viz: Fix lighting error<br/>
         
           cdcecc1 7 weeks ago Janosch Machowinski ruby: fix initialization of new_corridor.boundary_curves in Corridor#split<br/>
         
           2ad94af 2 months ago Janosch Machowinski Fix width of corridors<br/>
         
           95b7e0d 2 months ago Jakob Schwendner fixed scaling of debug output<br/>
         
           8d34fa2 2 months ago Jakob Schwendner added writing of debug images for the voronoi diagram<br/>
         
           07509cc 3 months ago Janosch Machowinski write cost maps from dstar to ppm<br/>
         
           94d63b8 3 months ago Janosch Machowinski Write traversability map to ppm<br/>
         
           09ec92d 3 months ago Janosch Machowinski corridor_plan.rb: fix return of get_inverse_annotation<br/>
         
           4be4f44 4 months ago Janosch Machowinski bugfix: make radius of strong edge detection map scale invariant.<br/>
         
           277015f 4 months ago Janosch Machowinski ruby: enhanced pretty print by segment dimensions<br/>
         
           1b321e9 4 months ago Janosch Machowinski ruby: added functions to create inverse annotated segments.<br/>
         
           d4b3548 4 months ago Janosch Machowinski fix CorridorPlanView<br/>
         
           eef4b48 5 months ago Janosch Machowinski compile with optimizations<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/nav_graph_search">
         <th>planning/nav_graph_search</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="33"> 8 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_33"><td>
         
           c289cb2 2 months ago Janosch Machowinski fix smaller, bigger, equals checks for Cost class in dstar<br/>
         
           b2fa656 3 months ago Janosch Machowinski dstar: give proper error message if goal or target is within an obstacle<br/>
         
           735549a 3 months ago Janosch Machowinski TraversabilityMap: Added function to write map to stdout and ppm<br/>
         
           19c861f 3 months ago Janosch Machowinski dstar: Added function to write cost map to ppm<br/>
         
           14f476c 3 months ago Janosch Machowinski Added checks for planning through /from/to obstacles<br/>
         
           b657eef 4 months ago Jakob Schwendner previous commit would not work for rotated frames<br/>
         
           a5989b9 4 months ago Jakob Schwendner TraversabilityMap now takes offset parameters from envire maps into account<br/>
         
           330453f 5 months ago Janosch Machowinski compile with optimizations<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/orogen/corridor_planner">
         <th>planning/orogen/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="34"> 4 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_34"><td>
         
           b37c34b 4 months ago Janosch Machowinski api fix for corridor_plan_controls.rb<br/>
         
           2e957a2 5 months ago Janosch Machowinski compile with optimizations<br/>
         
           d6baa9f 5 months ago Janosch Machowinski set correct time on traversability map<br/>
         
           8a86da3 5 months ago Janosch Machowinski bugfix: Delete environment in stop hook<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/vfh_star">
         <th>planning/vfh_star</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="35"> 23 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_35"><td>
         
           0489eb9 10 weeks ago Janosch Machowinski bugfix: markUnknownInRectangeAs subtract distance to ground from unknown height<br/>
         
           b8c7ca2 10 weeks ago Janosch Machowinski bugfix: set height of unknown in markUnknownInRectangeAs to pose height not zero<br/>
         
           e15d747 10 weeks ago Janosch Machowinski added method to get Z height compensation from map generator.<br/>
         
           ac53432 2 months ago Janosch Machowinski bugfix: Create empty trajectory if zero nodes were given<br/>
         
           def0f21 3 months ago iMoby bugfix: do not segfault if no trajectory could be computed<br/>
         
           7fd6b47 3 months ago Janosch Machowinski Bugfix: Fix identity check<br/>
         
           67b06aa 3 months ago Janosch Machowinski Bugfix: Fix check if current node is better than close node.<br/>
         
           2a6b284 3 months ago Janosch Machowinski removed warning about unused variable<br/>
         
           ba6f74c 3 months ago Janosch Machowinski also precompute angles to obstacles<br/>
         
           7a71092 3 months ago Janosch Machowinski bugfix: return correct result if negative x and y is given<br/>
         
           89b5068 3 months ago Janosch Machowinski added missing class from last commit<br/>
         
           71f1e35 3 months ago Janosch Machowinski added look up table for distances<br/>
         
           74f9645 3 months ago Janosch Machowinski code refactoring<br/>
         
           f80fbaf 4 months ago Janosch Machowinski bugfix, apply height transformation to height measurements of apriori map<br/>
         
           10fcfe6 4 months ago Janosch Machowinski added possibility to get output trajectory in different frame<br/>
         
           eca5c14 4 months ago Janosch Machowinski bugfix for buildTrajectoriesTo<br/>
         
           5ec03c4 4 months ago Janosch Machowinski fix wrong warning about broken heuristic<br/>
         
           8bdb4bb 4 months ago Janosch Machowinski added methods to get a vector of trajectories<br/>
         
           d05dd43 4 months ago Janosch Machowinski reworked function to set apriori map<br/>
         
           31c7bf1 4 months ago Janosch Machowinski added function for moving the grid<br/>
         
           aa682ec 4 months ago Janosch Machowinski added method to compute world position from grid position.<br/>
         
           c8faada 4 months ago Janosch Machowinski fix in grid check<br/>
         
           ee44116 4 months ago Janosch Machowinski added function, add an envire::MLSGrid to current TRMap.<br/>
         
         </td></tr>
       
       



















       <tr class="name" id="tools/log_tools">
         <th>tools/log_tools</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="36"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_36"><td>
         
           59bff2e 3 months ago Alexander Duda convert: improve log message<br/>
         
           f2da7fd 3 months ago Alexander Duda convert: skip streams those type does not exist in the current orocos registry<br/>
         
           a1213fb 4 months ago Jakob Schwendner removed debug output<br/>
         
           d680a2d 4 months ago Alexander Duda sel_copy add black list for streams<br/>
         
           65d9d19 4 months ago Alexander Duda add script to selective copy log samples<br/>
         
           d1176cb 5 months ago Jakob Schwendner add some additional info for what time is being used in the stream<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/logger">
         <th>tools/logger</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="37"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_37"><td>
         
           b5b4fa0 6 months ago Sylvain Joyeux remove all logging ports on destruction<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="38"> 52 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_38"><td>
         
           9dbf8cb 9 weeks ago Alexander Duda Merge branch 'master' into next<br/>
         
           396ade3 10 weeks ago Alexander Duda log::TaskContext: improve setting filter<br/>
         
           670615c 10 weeks ago Alexander Duda process.rb kill: fix corner case when process was exit during the call<br/>
         
           e489145 10 weeks ago Alexander Duda test task echo: fix kill<br/>
         
           cdf8ff2 10 weeks ago Alexander Duda replay: fix error message<br/>
         
           bbed15e 3 months ago Alexander Duda Process.run: auto calling Orocos.initialize.<br/>
         
           ec4c95d 3 months ago Alexander Duda TaskContext: support for task.connect_to task<br/>
         
           2fb1df1 4 months ago Alexander Duda TaskContext: bugfix find_all_ports, add find_all_output_ports<br/>
         
           d168ef8 4 months ago Alexander Duda TaskContext: fix copy paste error<br/>
         
           68ddf22 4 months ago Alexander Duda Log::Replay: add support to export an interval of samples<br/>
         
           d98080d 4 months ago Alexander Duda Log::TaskContext add log_all_ports<br/>
         
           c9f39c7 4 months ago Alexander Duda TaskContext add support for log_all_ports<br/>
         
           88c233d 4 months ago Alexander Duda replay: getter for the global index of the last, first sample of a stream<br/>
         
           779f3c4 4 months ago Thomas Roehr roby: allow to configure service_discovery for deployments, e.g. in roby's app.yml<br/>
         
           23dfbd1 4 months ago Sylvain Joyeux fix gcc warnings and compilation error under Debian<br/>
         
           b16573b 4 months ago Sylvain Joyeux roby: use replacement resolution caching at the level of the network merge solver in Engine<br/>
         
           01070f4 4 months ago Sylvain Joyeux roby: in composition instanciation, apply merge resolution when checking for selected tasks<br/>
         
           872d295 4 months ago Sylvain Joyeux roby: be smarter about the caching of replacement resolution<br/>
         
           8e3d5a8 4 months ago Alexander Duda Log::TaskContext: add method connected?<br/>
         
           515161c 5 months ago Chris Mueller Event#when_unreachable in tools/roby expect a block that uses two arguments instead one.<br/>
         
           139882f 5 months ago Alexander Duda namservice interface add missing method enabled?<br/>
         
           64c8c2a 5 months ago Alexander Duda Log::Replay register_tasks bugfix<br/>
         
           a853f33 5 months ago Allan E. Conquest Reaction to renaming of script to script_engine. This seems to resolve ticket #169: Orocos::RobyPlugin::TaskScripting Refactoring Bug Please confirm.<br/>
         
           0d3c70f 5 months ago Thomas Roehr roby: emit :running, when task is entering orocos state RUNNING the first time<br/>
         
           3d3cbe2 5 months ago Thomas Roehr Workaround: parse_typelist exports arrays containing nil when hitting on 'unsigned char[8]' in a *.typelist file<br/>
         
           77a0cb4 5 months ago Thomas Roehr Fix spelling<br/>
         
           d7439df 5 months ago Alexander Duda improve error messages for Orocos::Log::Replay.open<br/>
         
           5d6c00d 5 months ago Alexander Duda automatically register all replayed log task on the local name service<br/>
         
           81dbb4f 5 months ago Alexander Duda Log::TaskContext add methods doc?, stop, error?<br/>
         
           ab1ec44 5 months ago Alexander Duda Log::TaskContext: compatibility fix for ruby1.9<br/>
         
           eb3c3a4 5 months ago Alexander Duda Log::Replay improve error messages<br/>
         
           3ce24f9 5 months ago Sylvain Joyeux roby: implement optional composition children<br/>
         
           650beae 5 months ago Alexander Duda improver error message for log ports connected to filters:<br/>
         
           ad08058 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           c5065f7 5 months ago Janosch Machowinski roby; in Engine#resolve, @network_merge_solver might be nil if we get an early errors<br/>
         
           4bf1939 5 months ago Janosch Machowinski roby: configure logging before finalizing the deployment<br/>
         
           e1f88ee 5 months ago Sylvain Joyeux roby: in tests, don't remove the log directory forcefully<br/>
         
           ad3debc 5 months ago Sylvain Joyeux roby: fix some transactions lying around in the device instances<br/>
         
           274f4be 5 months ago Sylvain Joyeux roby: start cleaning up the test support so that we can use it in applications<br/>
         
           d5aa1f5 5 months ago Sylvain Joyeux roby: detect if the user calls #connect_to_local_process_server without having started one<br/>
         
           0640ac3 5 months ago Sylvain Joyeux roby: detect if the process server crashed in #connect_to_local_process_server<br/>
         
           06f0ac5 5 months ago Sylvain Joyeux roby: do completely deprecate #use_conf in favor of #with_conf<br/>
         
           ad68a34 5 months ago Sylvain Joyeux roby: fix cleanup of DataFlow.modified_tasks on task finalization<br/>
         
           65378c7 5 months ago Sylvain Joyeux roby: avoid expensive operations in DependencyInjection#push when the new spec is empty<br/>
         
           fe65eec 5 months ago Sylvain Joyeux roby,test: start integrating some testing functionality<br/>
         
           175a0d1 5 months ago Sylvain Joyeux roby: apply merges to instances stored in Composition#child_selection<br/>
         
           5504b72 5 months ago Sylvain Joyeux roby: use #apply_merges_to_stored_instances to map all stored instances to the underlying plan<br/>
         
           1043fe3 5 months ago Sylvain Joyeux roby: avoid unnecessary calls to #flatten<br/>
         
           8ea07eb 5 months ago Sylvain Joyeux roby: remove an double initialization of @network_merge_solver<br/>
         
           f8a24a0 5 months ago Sylvain Joyeux roby: clear graphs when they are not needed anymore<br/>
         
           b6e1cee 5 months ago Sylvain Joyeux roby: set the name of graphs we create for debugging reason at the C++ level<br/>
         
           1ed7bf5 5 months ago Sylvain Joyeux discriminate between the two error cases in Orocos.find_typekit_for<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="39"> 21 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_39"><td>
         
           a4c05d0 2 months ago Jakob Schwendner fixed error in seek_to_time<br/>
         
           19ac6a8 4 months ago Jakob Schwendner improve error message for empty streams<br/>
         
           2ff402b 4 months ago Alexander Duda DataStream.copy_to add support for time intervals<br/>
         
           30a7bb9 4 months ago Alexander Duda DataStream: add method samples?<br/>
         
           3c1dc47 4 months ago Alexander Duda StreamAligner: add support to export an interval of samples to a new log file<br/>
         
           5c62716 4 months ago Alexander Duda DataReader: add support to copy an interval of samples to a new stream<br/>
         
           b667328 4 months ago Alexander Duda StreamAligner: fix OutOfBounds exception<br/>
         
           6833257 4 months ago Alexander Duda getter for the global index of the last, first sample of each stream<br/>
         
           82b16f0 5 months ago Janosch Machowinski bugfix: Set index to correct position if is requested position is after the stream<br/>
         
           85bdd58 5 months ago Janosch Machowinski bugfix: replaced non existing Error by RangeError<br/>
         
           4c9582b 5 months ago Janosch Machowinski fixed broken test cases<br/>
         
           9db741b 5 months ago Sylvain Joyeux fix stream_aligner2 test<br/>
         
           e9c8ee5 5 months ago Sylvain Joyeux bin: make sure pocolog -s never does any type convertion<br/>
         
           7eaf802 6 months ago Alexander Duda StreamAligner: raise an error for empty streams<br/>
         
           f02a052 6 months ago Alexander Duda StreamAligner: Bugfix for empty streams<br/>
         
           4fdadae 6 months ago Sylvain Joyeux in #new_file, allow the caller to specify the file name instead of autogenerating one<br/>
         
           0adec2c 6 months ago Sylvain Joyeux fix stream aligner test cases<br/>
         
           0b3edaf 6 months ago Sylvain Joyeux remove some weird magic in Logfiles.create<br/>
         
           19d114a 7 months ago Sylvain Joyeux fix --fields [].value for toplevel containers / arrays<br/>
         
           b32c328 7 months ago Sylvain Joyeux provide a generic write_data_block(io, ...) function<br/>
         
           18d5575 7 months ago Sylvain Joyeux replace instance_eval by send<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/port_proxy">
         <th>tools/port_proxy</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="40"> 4 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_40"><td>
         
           9107c87 4 months ago Alexander Duda improve log messages<br/>
         
           05d1839 4 months ago Alexander Duda fix unit test<br/>
         
           56c8862 4 months ago Alexander Duda disconnect writer port if reader port was disconnected<br/>
         
           ef0679d 4 months ago Alexander Duda add support for auto connect<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/service_discovery">
         <th>tools/service_discovery</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="41"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_41"><td>
         
           9e31443 6 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           62652a1 5 days ago Sylvain Joyeux update Doxyfile.in using Rock's CMake template<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/designer_widget_tutorial">
         <th>tutorials/designer_widget_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="42"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_42"><td>
         
           0f39d19 3 weeks ago Alexander Duda bugfix: QtTypelibExtension was moved into the namespace Vizkit<br/>
         
         </td></tr>
       
       







       <tr class="name" id="tutorials/orogen/message_producer">
         <th>tutorials/orogen/message_producer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="43"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_43"><td>
         
           6e8eec8 3 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           44826ab 6 months ago Alexander Duda add missing CMakeLists.txt<br/>
         
         </td></tr>
       
       













       <tr class="name" id="tutorials/rock_tutorial">
         <th>tutorials/rock_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="44"> 3 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_44"><td>
         
           5d1684c 6 months ago Alexander Duda Merge branch 'next'<br/>
         
           14f6656 6 months ago Alexander Duda Merge branch 'next'<br/>
         
           af167c2 6 months ago Alexander Duda add gitignore<br/>
         
         </td></tr>
       
       





       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="45"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_45"><td>
         
           105772e 5 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           7a5ee26 5 days ago Sylvain Joyeux doc: fix documentation generation to be in doc/ and doc/ruby<br/>
         
           209bb8d 5 days ago Sylvain Joyeux Update Doxyfile.in from the version in Rock CMake template<br/>
         
           e64a814 3 weeks ago Sylvain Joyeux add missing dependency on nokogiri and libxslt<br/>
         
           bf50360 4 months ago Sylvain Joyeux fix compilation under -Werror=format-security<br/>
         
           0f4de77 5 months ago Sylvain Joyeux ruby: remove over-eager caching<br/>
         
         </td></tr>
       
       





       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="46"> 4 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_46"><td>
         
           28944a4 5 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           1e2d249 4 weeks ago Sylvain Joyeux rdoc: don't specify a full path for included and excluded files for RDoc<br/>
         
           238268a 4 months ago Sylvain Joyeux fix gcc warning<br/>
         
           d7ee8dc 4 months ago Sylvain Joyeux fix compatibility with g++ 4.7, in which the -module option disappeared<br/>
         
         </td></tr>
       
       


</table>
