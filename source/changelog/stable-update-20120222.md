---
title: "2012-02-22 - RC1"
sort_info: 997
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

    <li>drivers/dvl_teledyne</li>

    <li>drivers/orogen/dvl_teledyne</li>

    <li>drivers/orogen/fog_kvh</li>

    <li>tutorials/orogen/tut_brownian</li>

    <li>tutorials/orogen/tut_deployment</li>

    <li>tutorials/orogen/tut_follower</li>

</ul>




<h1>Package updates</h1>
<p>438 new commits in 28 packages<br/>
Affected packages: 
  <a href="#base/scripts">base/scripts</a>

  <a href="#base/types">base/types</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#control/orogen/trajectory_follower">control/orogen/trajectory_follower</a>

  <a href="#drivers/camera_firewire">drivers/camera_firewire</a>

  <a href="#drivers/camera_interface">drivers/camera_interface</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/orogen/aggregator">drivers/orogen/aggregator</a>

  <a href="#drivers/orogen/camera_base">drivers/orogen/camera_base</a>

  <a href="#drivers/orogen/camera_firewire">drivers/orogen/camera_firewire</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/iodrivers_base">drivers/orogen/iodrivers_base</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_navigation">planning/corridor_navigation</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/vfh_star">planning/vfh_star</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#tutorials/orogen/rock_tutorial">tutorials/orogen/rock_tutorial</a>

  <a href="#tutorials/rock_tutorial">tutorials/rock_tutorial</a>

  <a href="#typelib">typelib</a>

  <a href="#utilrb">utilrb</a>
</p>

<table class="package_status">
       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 3 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           534a1f1 5 months ago Alexander Duda Revert "add rock-converter"This reverts commit 3844e8171bd06e7072e0672534c757c85351ab99.<br/>
         
           3844e81 5 months ago Alexander Duda add rock-converter<br/>
         
           78e6445 6 months ago Sylvain Joyeux inspect: fix displayed names of deployments and types<br/>
         
         </td></tr>
       
       









       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 11 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           cb2ce7e 3 months ago Sylvain Joyeux fix signed version of vectorToVector<br/>
         
           0b31ea8 3 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/master'<br/>
         
           17ef15e 3 months ago Matthias Goldhoorn Added pitch/roll conversation functions, added Matrix6d<br/>
         
           4bd397d 3 months ago Sankaranarayanan Natarajan Merge branch 'master' of git://gitorious.org/rock-base/types<br/>
         
           611cb0b 3 months ago Sankaranarayanan Natarajan in local serach the reference point should be const. bug fixed<br/>
         
           de050e2 3 months ago Sylvain Joyeux spline: sisl reports an error if no intersection is found, but that is not an error for findLineIntersections<br/>
         
           49d4030 3 months ago iMoby spline: validate dimensions when creating splines<br/>
         
           b5bff0b 3 months ago Jakob Schwendner added PoseUpdateThreshold class to pose.h<br/>
         
           e169d0d 4 months ago Jakob Schwendner added convenience functions for the intrinsic parameters<br/>
         
           179a98b 4 months ago Sylvain Joyeux simpler and clearer implementation of the signed version of vectorToVector<br/>
         
           88a4a89 4 months ago Sylvain Joyeux add computation of the angle between two vectors<br/>
         
         </td></tr>
       
       











       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 6 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           826b57a 4 months ago Alexander Duda bugfix: #warn is not a compiler directive<br/>
         
           6e5d76c 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           8dc6a24 4 months ago Ajish Babu added the new Position-Velocity-Torque Cascaded controller<br/>
         
           723ef86 4 months ago Sylvain Joyeux move to Rock's default layout<br/>
         
           03ad538 4 months ago Sylvain Joyeux install headers in include/motor_controller while keeping backward compatibility<br/>
         
           d23438e 4 months ago Ajish Babu changed from pointer based memory allocation to std::vector<br/>
         
         </td></tr>
       
       





       <tr class="name" id="control/orogen/trajectory_follower">
         <th>control/orogen/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           031b615 3 months ago Sylvain Joyeux send a zero motion command when the component gets stopped<br/>
         
         </td></tr>
       
       











       <tr class="name" id="drivers/camera_firewire">
         <th>drivers/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 10 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           8706efa 3 months ago Sascha Arnold added trigger mode fixed rate<br/>
         
           769a62e 3 months ago Sascha Arnold changed error fix for checking if trigger source 0 exists<br/>
         
           51e9742 3 months ago Sascha Arnold removed: setting trigger modes in grab method<br/>
         
           6698fe0 3 months ago Sascha Arnold removed: setting trigger modes in grab method<br/>
         
           19cf312 4 months ago Sascha Arnold check if framerate is supported and compute package size for format 7<br/>
         
           e02d1d7 4 months ago Sascha Arnold improved error handling in grab method<br/>
         
           55a66c1 4 months ago Sascha Arnold hdr configuration has changed for base::samples::frame<br/>
         
           5439bf5 4 months ago Sascha Arnold improved trigger configuration<br/>
         
           6b61095 4 months ago Sascha Arnold improved setAttrib framerate<br/>
         
           dfa51ee 4 months ago Sascha Arnold added missing dependency to base-lib<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_interface">
         <th>drivers/camera_interface</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           1a94210 3 months ago Stefan Haase Adds enum and int attributes which are needed by the v4l2 usb camera driver.<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           a575300 5 weeks ago Benjamin Girault Driver for the Logitech G27: extended to 32 buttons<br/>
         
         </td></tr>
       
       











       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="8"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_8"><td>
         
           b92ebdd 3 months ago Sylvain Joyeux add URL pointing to the device driver documentation<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/aggregator">
         <th>drivers/orogen/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           b3678e9 3 months ago Jakob Schwendner added property to control the period between aggregator status readings<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_base">
         <th>drivers/orogen/camera_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="10"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_10"><td>
         
           0751b56 3 months ago iMoby don't try setting the framerate if we're using a mode that does not require it<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_firewire">
         <th>drivers/orogen/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 3 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           0d00bc3 3 months ago iMoby use fixed framerate by default<br/>
         
           45654ba 4 months ago Sascha Arnold set default trigger properties<br/>
         
           9b3d08f 4 months ago Sascha Arnold deactivate gamma correction, because this produces a noise pattern<br/>
         
         </td></tr>
       
       







       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="12"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_12"><td>
         
           48950a6 in the future Benjamin Girault added the Brake in the driver<br/>
         
           d316467 4 weeks ago Benjamin Girault LogitechG27: extended to 32 buttons<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/iodrivers_base">
         <th>drivers/orogen/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           674fcae 3 months ago Sylvain Joyeux make the URL point to the device driver documentation<br/>
         
           e3f6311 4 months ago Leif Christensen add dependency to iodrivers<br/>
         
         </td></tr>
       
       













       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 20 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           76fe3a3 3 months ago Sylvain Joyeux Merge branch 'next' of git://gitorious.org/rock-drivers/transformer<br/>
         
           eb979d6 3 months ago Jakob Schwendner passing priority feature of the aggregator through the transformer and make the orogen_plugin aware<br/>
         
           8b7255c 4 months ago Janosch Machowinski orogen_plugin: add needs_configuration to task<br/>
         
           7853a5b 4 months ago Jakob Schwendner removed overloaded pushData for RigidBodyStates<br/>
         
           74adb81 5 months ago Jakob Schwendner added interpolation of uncertainties<br/>
         
           a483cb3 5 months ago Jakob Schwendner made interpolation of position slightly more efficient<br/>
         
           880068f 5 months ago Jakob Schwendner made get templated, so it can be used with both Transform and TransformWithUncertainty<br/>
         
           b4e6334 6 months ago Jakob Schwendner added dependency to orogen aggregator<br/>
         
           1aa3497 6 months ago Sylvain Joyeux Merge commit '60f78c7158c5b76f75303611488a61c564ef6b0d' into HEAD<br/>
         
           60f78c7 6 months ago Sylvain Joyeux static transformation handling should be done only once<br/>
         
           33b5fc2 6 months ago Sylvain Joyeux move to a rock standard layout (and use Rock CMake macros)<br/>
         
           8109290 6 months ago Sylvain Joyeux orogen: small improvement in code generated for static transformations<br/>
         
           b97e187 6 months ago Sylvain Joyeux orogen: allow to associate more than one port to a frame in #frames<br/>
         
           fa03c6d 6 months ago Sylvain Joyeux cleanup the transformer oroGen plugin<br/>
         
           96afe89 6 months ago Sylvain Joyeux ruby: update the example<br/>
         
           3f95046 6 months ago Sylvain Joyeux ruby: accept symbols as frame names in #transformation_chain<br/>
         
           da9fdb3 6 months ago Sylvain Joyeux ruby: require eigen in transformer.rb<br/>
         
           517c982 6 months ago Sylvain Joyeux ruby: test for the two loop cases<br/>
         
           5354dc8 6 months ago Sylvain Joyeux ruby: refactor and test the ruby-side library<br/>
         
           6ff74ca 6 months ago Janosch Machowinski added first draft of ruby side lib for the transformer<br/>
         
         </td></tr>
       
       



















       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 27 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           000dcb0 7 weeks ago Matthias Goldhoorn MultiView: removed a lot of debugging code, depricated code, hopefully really fixed size problems of buttons, designer integration still buggy sorry<br/>
         
           8dad856 10 weeks ago Alexander Duda Merge branch 'vtk'<br/>
         
           47deab2 10 weeks ago Alexander Duda clean up<br/>
         
           ea8aa9a 10 weeks ago Alexander Duda vtk sonar display: bugfix<br/>
         
           b6f7ea8 4 months ago Alexander Duda bugfix color display<br/>
         
           6f253e8 4 months ago Alexander Duda change slot parameter uint to int<br/>
         
           5d7e043 4 months ago Alexander Duda change slot parameters from uint to int<br/>
         
           6fd8ec4 4 months ago Jan Christian Albiez * Fixed memory bugs * Changed from QList/QVarArray to std::list/std::vector<br/>
         
           971f543 4 months ago Matthias Goldhoorn removed nonsense output on keypress for range view<br/>
         
           4f95af2 4 months ago Alexander Duda add some tests<br/>
         
           e331f95 4 months ago Jan Christian Albiez WaterfallDisplay: * Fixed properties bug * added functionality for uint_8/uint_16/uint_32 data<br/>
         
           f072d99 4 months ago Jan Christian Albiez Added WaterfallWidget for displaying data in a waterfall display<br/>
         
           2122767 4 months ago Alexander Duda Merge remote branch 'autobuild/master' into vtk<br/>
         
           66fa096 4 months ago Alexander Duda add test<br/>
         
           8e3849e 4 months ago Alexander Duda add test<br/>
         
           045324e 5 months ago Alexander Duda workaround: image geometry is worng until resize was called<br/>
         
           7620637 5 months ago Alexander Duda fix line display<br/>
         
           a45e6e9 5 months ago Alexander Duda extend draw(painter) to draw(painter,source,target)<br/>
         
           de29971 5 months ago Alexander improve plotting<br/>
         
           378c68a 5 months ago Alexander Duda some improvments<br/>
         
           cd3c368 5 months ago Alexander some improvements<br/>
         
           09e2721 5 months ago Alexander Duda add test script<br/>
         
           c5be373 5 months ago Alexander Duda some improvements<br/>
         
           5c4b464 5 months ago Alexander prototype sonar beam<br/>
         
           ed08fe8 5 months ago Alexander Duda started to develop sonar display<br/>
         
           c2d5a96 5 months ago Alexander Duda add vtk-qt4 as dependency<br/>
         
           227838c 5 months ago Alexander Duda add experimental vtk plot + empty SonarDisplay<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 134 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           418c826 12 days ago Alexander Dettmann make sure that we can compile with base/types on master<br/>
         
           9c46b08 3 months ago Alexander Duda Merge branch 'master' into next<br/>
         
           a517615 3 months ago Alexander Duda vizkt.rb add support to start a task via task inspector<br/>
         
           2475434 3 months ago Alexander Duda vizkit.rb: bugfix related to setting attributes from the task inspector<br/>
         
           12e7b5a 3 months ago Alexander Duda Revert "remove markers"<br/>
         
           0d801ef 3 months ago Christoph Müller Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           9df6786 3 months ago Christoph Müller add ruby setter for changing the color.<br/>
         
           a6035b8 3 months ago Alexander Duda vizkit.rb: bugfix right-clicking on ports that have no data<br/>
         
           345d150 3 months ago Alexander Duda vizkit.rb bugfix: the task was not immediately added<br/>
         
           60aa2e6 3 months ago Allan E. Conquest Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           8ad8a5a 3 months ago Allan E. Conquest typo<br/>
         
           9098b8f 3 months ago Alexander Duda vizkit.rb small bug fix<br/>
         
           19da440 3 months ago Alexander Duda vizkit.rb logreplay: do not show attributes if empty<br/>
         
           bc0b483 3 months ago Allan E. Conquest too many arguments error fixed, improved reliability with nil return<br/>
         
           763390c 3 months ago Alexander Duda vizkit.rb: bugfix for Vizkit.connect_port_to<br/>
         
           d3b3bee 3 months ago Janosch Machowinski bugfix, make updateData work with all data types<br/>
         
           ecb4c2f 3 months ago Alexander Duda vizkit.rb: treemodeler add support for Log::Properties<br/>
         
           e4eba5f 3 months ago Alexander Duda vizkit.rb bugfix attributes were deselected during modification<br/>
         
           c8f7a1b 3 months ago Alexander Duda vizkit.rb small bugfix<br/>
         
           1144eee 3 months ago Alexander Duda vizkit.rb update tree modeler<br/>
         
           82ee250 3 months ago Alexander Duda vizkit.rb structviewer: update to standard way for creation<br/>
         
           5417aa6 3 months ago Alexander Duda vizkit.rb uiloader: fix typo<br/>
         
           83b08eb 3 months ago Alexander Duda vizkit.rb Vizkit can now handle sub fields<br/>
         
           821c5ce 3 months ago Alexander Duda vizkit.rb improve TaskProxy<br/>
         
           0b0f149 3 months ago Alexander Duda vizkit.rb fix typo<br/>
         
           6c75e05 3 months ago Alexander Duda vizkit.rb workaround for object_id to QVariant<br/>
         
           3c5ecc0 3 months ago Alexander Duda vizkit.rb delete action_info<br/>
         
           c09a344 3 months ago Alexander Duda vizkit.rb remove struct viewer as default widget for frame<br/>
         
           aa47a9a 3 months ago Alexander Duda vizkit.rb bugfix context menu was no longer displayed for Log::OutputPorts<br/>
         
           226d6c2 3 months ago Alexander Duda vizkit.rb: small bugfix<br/>
         
           836a515 3 months ago Alexander Duda vizkit.rb improve rock-display<br/>
         
           7f511d8 3 months ago Alexander Duda vizkit.rb treeview: not all elements were deleted if a task was not reachable<br/>
         
           2688961 3 months ago Alexander Duda vizkit.rb: TaskProxy<br/>
         
           29971da 3 months ago Alexander Duda vizkit.rb: tree model big cleanup<br/>
         
           f277e87 3 months ago Alexander Duda vizkit.rb add proxy reader<br/>
         
           adde4b6 3 months ago Alexander Duda cleanup StructViewer, add placeholder for empty ports<br/>
         
           7da20ee 3 months ago Alexander Duda vizkit.rb first clean up taskinspector<br/>
         
           0e21d05 3 months ago Alexander Duda vizkit.rb clean up log_control<br/>
         
           1ec7836 3 months ago Alexander Duda vizkit.rb: Vizkit.display<br/>
         
           4a6ce02 3 months ago Alexander Duda vizkit.rb: add helper function to create a new widget<br/>
         
           31e3655 3 months ago Alexander Duda vizkit.rb improve error message<br/>
         
           9c3047c 3 months ago Alexander Duda vizkit.rb workaround: missing VizkitPluginLoaderExtension class<br/>
         
           803418f 3 months ago Sylvain Joyeux make the orientation widget the default for RBS for backward compatibility reasons<br/>
         
           7c8f36a 3 months ago Sylvain Joyeux declare the vizkit3d embedded RBS viewer so that it can be used in display and replay<br/>
         
           e5f3832 3 months ago Sylvain Joyeux fix weird usage of load vs. require<br/>
         
           3b8e2f2 3 months ago Sylvain Joyeux add register_default_3d_plugin_for to match register_default_widget_for<br/>
         
           8c10ece 3 months ago Sylvain Joyeux bin/rock-display: add the [:port_name] syntax to the banner<br/>
         
           70689fe 3 months ago Sylvain Joyeux ruby: accept plugin names without a "Visualization" suffix to make it simpler<br/>
         
           ba79bb4 3 months ago Allan E. Conquest Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           635e308 3 months ago Allan E. Conquest Tooltip informing about context menu<br/>
         
           f1485b7 3 months ago Allan E. Conquest Context menu for rock-replay (LogControl): The possibility to open any desired and available widget for an output port -- not just the default one.<br/>
         
           36cf834 3 months ago Thomas Roehr Fix usage of 'config' to using 'configuration' instead.<br/>
         
           c594eca 3 months ago Allan E. Conquest Merge branch 'master' of http://git.gitorious.org/rock-gui/vizkit<br/>
         
           1a2e5d0 3 months ago Sascha Arnold fixed a problem with adding plugins probably caused by multiple threadsfixed a problem propably caused multible thread<br/>
         
           52d7db1 3 months ago Allan E. Conquest cleanup<br/>
         
           eb6dd18 3 months ago Allan E. Conquest Fixed documentation.<br/>
         
           72fe25b 3 months ago Allan E. Conquest non-existing method call fixed<br/>
         
           4a12152 3 months ago Allan E. Conquest Bugfixig: Does not crash anymore if atomic types without grandparents are submitted.<br/>
         
           0d21048 3 months ago Alexander Duda Merge branch 'struct_viewer_reorganization'<br/>
         
           df17496 3 months ago Alexander Duda vizkit.rb: improve TaskProxy<br/>
         
           3bfa60c 4 months ago Allan E. Conquest cleanup<br/>
         
           af11917 4 months ago Allan E. Conquest tooltip informing about context menu<br/>
         
           d7b8935 4 months ago Allan E. Conquest direct_child method now public. new method get_direct_children.<br/>
         
           3f84be5 4 months ago Allan E. Conquest Merge branch 'master' of git://gitorious.org/rock-gui/vizkit into struct_viewer_reorganization<br/>
         
           6d2d5c5 4 months ago Allan E. Conquest Ports are being connected to the widgets.<br/>
         
           8afdb30 4 months ago Sascha Arnold added demangle for plugin name<br/>
         
           5732677 4 months ago Alexander Duda add task proxy<br/>
         
           21d8505 4 months ago Allan E. Conquest custom behavior for different context menu actions. no useful behavior yet.<br/>
         
           f147265 4 months ago Allan E. Conquest display of context menu at the cursor's position. getting clicked item not perfect because of hard coded offset -- but it works.<br/>
         
           367de93 4 months ago Matthias Goldhoorn removed old debugging output<br/>
         
           e79df64 4 months ago Alexander Duda Merge commit '733a01a8811a308df44d538003d6856346b3fe44'<br/>
         
           0ff563a 4 months ago Alexander Duda vizkit.rb bugfix related to sample drops<br/>
         
           0f35d70 4 months ago Sascha Arnold avoid some defined but not used warnings<br/>
         
           7369b9e 4 months ago Alexander Duda Revert "added CompressedFrame Support to image_view"<br/>
         
           6586b05 4 months ago Sascha Arnold added propery browser widget and osg widget to one layout<br/>
         
           5441c94 4 months ago Sascha Arnold made tracked nodes selectable<br/>
         
           c09d9e1 4 months ago Allan E. Conquest Context menu integration: Backup of intermediate result.<br/>
         
           5f061b2 4 months ago Sascha Arnold added missing dependency to limits.h<br/>
         
           e5d17ed 4 months ago Sylvain Joyeux plugins: always use the plugin factory to create vizkit plugins<br/>
         
           733a01a 4 months ago Allan E. Conquest slots changed / added for set & cancel buttons. MAX_ARRAY_FIELDS already defined in tree_modeler.rb<br/>
         
           6e818bf 4 months ago Allan E. Conquest put both buttons into a frame in order to hide both<br/>
         
           fa8ef27 4 months ago Allan E. Conquest Added "Cancel" Button<br/>
         
           81fa6fa 4 months ago Allan E. Conquest possible bugfix for compound type handling during read_object mode<br/>
         
           3248fc0 4 months ago Allan E. Conquest Documentation, cleanup<br/>
         
           28c64d0 4 months ago Alexander Duda add dependency to qtruby<br/>
         
           5676a4b 4 months ago Sascha Arnold added posibility to hide the ground grid and show the coodinate axes<br/>
         
           ed3fe98 4 months ago Sascha Arnold added some coments and fixed some small errors<br/>
         
           2f92e3a 4 months ago Alexander Duda vizkit.rb auto_connect<br/>
         
           bf00626 4 months ago Sascha Arnold don't use the providing widget as parent for the property browser widget, this was only for test purpose<br/>
         
           d8dd678 4 months ago Sascha Arnold added widget QPropertyBrowserWidget<br/>
         
           954c1b5 4 months ago Allan E. Conquest Only necessary items are editable.<br/>
         
           3b89e12 4 months ago Sascha Arnold added adjusted qtpropertybrowser library of qt-solutions package<br/>
         
           b579050 4 months ago Allan E. Conquest Log cleanup<br/>
         
           57964fe 4 months ago Allan E. Conquest removed include<br/>
         
           15ecace 4 months ago Allan E. Conquest doubleclicking enables property changing. compound attributes are now displayed correctly.<br/>
         
           94c1a7a 4 months ago Allan E. Conquest addition to last commit<br/>
         
           10b125e 4 months ago Allan E. Conquest use decimal point instead of comma in float strings<br/>
         
           d627052 4 months ago Allan E. Conquest Logger / debugger cleanup<br/>
         
           13c0efd 4 months ago Allan E. Conquest remove include<br/>
         
           f2a38fe 4 months ago Allan E. Conquest Set Property Button<br/>
         
           b79e11b 4 months ago Allan E. Conquest new attribute samples are now initialized with #zero!<br/>
         
           a1b4619 4 months ago Allan E. Conquest Support of Fixnum user input<br/>
         
           8eb8d85 4 months ago Allan E. Conquest User now has property change functionality (read_obj == true)<br/>
         
           47c3fbc 4 months ago Sascha Arnold added VizkitPluginFactory to support libraries with multiple vizkit plugins<br/>
         
           cf4902d 4 months ago Sascha Arnold added the possibility to activate or deactivate the vizkit plugin using a property<br/>
         
           81b041c 4 months ago Sascha Arnold add a signal to notify if a property in a plugin has changed<br/>
         
           ba5d874 4 months ago Sascha Arnold add QProperty vizkit3d_plugin_name and improved getPluginName method<br/>
         
           06820f3 4 months ago Sascha Arnold changes on the ruby side, because vizkit plugins are qobjects now<br/>
         
           999bf2c 4 months ago Sascha Arnold made vizkit plugin become a QObject and removed the VizkitQtPlugin and other obsolete parts.<br/>
         
           0422b50 4 months ago Patrick Merz Paranhos change methods from protected to public that shouldn't be in protected<br/>
         
           0ff985f 4 months ago Allan E. Conquest cleanup<br/>
         
           42cafd6 5 months ago Allan E. Conquest namespace<br/>
         
           49d1f66 5 months ago Allan E. Conquest fixed match issue<br/>
         
           d0414cf 5 months ago Allan E. Conquest Moved tree_modeler.rb to more central position: ruby/lib/vizkit/<br/>
         
           268cdc9 5 months ago Allan E. Conquest Now in module Vizkit. Using Vizkit's logger.<br/>
         
           4308894 5 months ago Allan E. Conquest removing clones by using TreeModeler<br/>
         
           630a4ef 5 months ago Allan E. Conquest column resize after update<br/>
         
           104cf24 5 months ago Allan E. Conquest child_items no longer private, support for task_inspector<br/>
         
           b3ae847 5 months ago Allan E. Conquest Switching back to old version while working on TreeModeler integration.<br/>
         
           e2ac60d 5 months ago Allan E. Conquest Cleanup. Renamed generate_sub_tree to update_sub_tree.<br/>
         
           42b2bf5 5 months ago Allan E. Conquest renamed direct_child? to direct_child<br/>
         
           e57746f 5 months ago Allan E. Conquest Started using TreeModeler<br/>
         
           376cd29 5 months ago Allan E. Conquest No brush needed<br/>
         
           0899084 5 months ago Allan E. Conquest Removed example and debug outputs.<br/>
         
           2f22a4c 5 months ago Allan E. Conquest Commented out debug outputs. Need logger.<br/>
         
           18b52cb 5 months ago Allan E. Conquest Example of inserting a sub tree under an arbitrary item (commented out)<br/>
         
           ddbb227 5 months ago Allan E. Conquest find_descendant method is now direct_child?. search only for direct descendants.<br/>
         
           1cb8fce 5 months ago Allan E. Conquest Adapted to sub tree generation. Not finished.<br/>
         
           7f50dfa 5 months ago Allan E. Conquest Sub tree generation. Produces infinite loop, to be tested.<br/>
         
           d5ef933 5 months ago Allan E. Conquest Documentation, code conventions<br/>
         
           001aa95 5 months ago Allan E. Conquest Syntax errors fixed<br/>
         
           ee7ecb2 5 months ago Allan E. Conquest Syntax errors fixed<br/>
         
           ae75d8a 5 months ago Allan E. Conquest backup of untested version.<br/>
         
           293e501 5 months ago Allan E. Conquest Extracted tree modeling to tree_modeler.rb.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 2 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           df443e9 4 months ago Jakob Schwendner added method to set calibrationcv objects to also include P and R for stereo<br/>
         
           abf4e49 4 months ago Jakob Schwendner add some comments<br/>
         
         </td></tr>
       
       









       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 5 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           671c76d 3 months ago Sylvain Joyeux spec: display whether a task needs configuration or not when pretty-printing<br/>
         
           7e2dd2d 3 months ago Stefan Haase Provides correct FindBoost.cmake for every component.<br/>
         
           2b678fc 4 months ago Sylvain Joyeux hoe is not a needed dependency anymore<br/>
         
           7a6a8db 4 months ago Sylvain Joyeux display default values when pretty-printing a property<br/>
         
           66eb1ac 4 months ago Sylvain Joyeux define Spec::TaskContext#periodic(period) as a way to define a default activity<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_navigation">
         <th>planning/corridor_navigation</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 3 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           6a04668 3 months ago Sylvain Joyeux in isTerminalNode, make the test robust to small computation errors<br/>
         
           5c021b7 3 months ago Sylvain Joyeux cleanup and test the check-if-projection-crosses-horizon test<br/>
         
           c8bbb75 3 months ago Sylvain Joyeux replace the doxyfile.in by the one from the cmake_lib template<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           c46e073 3 months ago iMoby ruby: fix access to boundary_curves[i] before it is actually initialized<br/>
         
         </td></tr>
       
       







       <tr class="name" id="planning/vfh_star">
         <th>planning/vfh_star</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 6 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           e42dbb1 3 months ago Sylvain Joyeux add optional dependency on vizkit for the vizkit plugins<br/>
         
           3d95453 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           8521bc0 3 months ago Sylvain Joyeux clarify the role of the boolean parameter returned by getProjectedPose<br/>
         
           4e140cf 3 months ago Sylvain Joyeux replace the doxyfile.in file by the one from the cmake_lib template<br/>
         
           bcd0cf3 3 months ago Sylvain Joyeux remove annoying debug display<br/>
         
           635d6cf 4 months ago Janosch Machowinski removed asguard specific laser filter code<br/>
         
         </td></tr>
       
       















       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 68 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           17b416b 3 months ago Sylvain Joyeux Revert "accept logging property changes to both log stream and port"<br/>
         
           f069d4a 3 months ago Sylvain Joyeux Revert "properly set metadata on all generated log streams"<br/>
         
           b337745 3 months ago Sylvain Joyeux Revert "add the orocos_type_name attr_reader to AttributeBase"<br/>
         
           f69317d 3 months ago Sylvain Joyeux Revert "accept Orocos.run "deployment_name" =&gt; "prefix""<br/>
         
           7493d00 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           7942943 3 months ago Sylvain Joyeux properly set metadata on all generated log streams<br/>
         
           09fb71e 3 months ago Sylvain Joyeux add instance method to start deployments and rename 'run' into 'start' to avoid clash with TestCase#run<br/>
         
           43c693f 3 months ago Sylvain Joyeux add the orocos_type_name attr_reader to AttributeBase<br/>
         
           f5336b4 3 months ago Sylvain Joyeux accept logging property changes to both log stream and port<br/>
         
           615533a 3 months ago Sylvain Joyeux accept Orocos.run "deployment_name" =&gt; "prefix"<br/>
         
           810cb4a 3 months ago Alexander Duda replay: disable check for loading tasks from multiple files<br/>
         
           537bcfe 3 months ago Alexander Duda replay: activate default support for properties.XX.log<br/>
         
           fdea426 3 months ago Alexander Duda replay: bugfix wrong array was checked during seek<br/>
         
           e7b4ec2 3 months ago Alexander Duda replay: bugfix typo<br/>
         
           d1c8a0b 3 months ago Alexander Duda replay.rb: bugfix loading streams<br/>
         
           f36e49b 3 months ago iMoby roby: replace the heavy-handed removal of Types::* by using the new typelib clear_exports<br/>
         
           6aca3e7 3 months ago iMoby app: use const_defined_here? (from utilrb) for 1.9 compatibility<br/>
         
           19b9f90 3 months ago iMoby app: in scripts, call #cleanup instead of directly stop_process_servers<br/>
         
           ae3df82 3 months ago iMoby roby: fix TaskContext#connected?<br/>
         
           01a1a74 3 months ago iMoby test: fix setup/teardown procedures<br/>
         
           6401a90 3 months ago iMoby test: no need to call stop_local_process_server in the teardown procedure<br/>
         
           10053bf 3 months ago iMoby app: do a full fork/exec to start the local process server<br/>
         
           7c2c2e5 3 months ago iMoby roby: remove debugging output<br/>
         
           2ea9a27 3 months ago iMoby roby: in tests, do redirect the process server to a log file<br/>
         
           114f645 3 months ago iMoby roby: add some documentation<br/>
         
           8bc3ab2 3 months ago iMoby test: cleanup the models and singletons *after* we actually shut the execution engine down<br/>
         
           336481c 3 months ago iMoby roby: define DataFlow#connected_to?<br/>
         
           91f9447 3 months ago iMoby roby: implement DataFlow#connected?(port_name)<br/>
         
           f15f246 3 months ago iMoby roby: support extend-by-module in TaskContext#configure<br/>
         
           6038224 3 months ago iMoby roby: documentation<br/>
         
           5214b43 3 months ago iMoby roby: use app.plan instead of the global Roby.plan<br/>
         
           2c198cf 3 months ago iMoby test: start a testing integration for both pure-ruby and rock-roby<br/>
         
           5ab29fe 3 months ago iMoby roby: in Engine#resolve, store the options in the engine instance to make them available to plugins<br/>
         
           dbd05f5 3 months ago iMoby roby: use the new Application#app_dir instead of the old APP_DIR global constant<br/>
         
           d152d8c 3 months ago Jakob Schwendner when opening multiple files omit the older file for clashes and warn instead of fail<br/>
         
           70093d2 3 months ago Sylvain Joyeux fix wrong documentation about inexistent Property#get and Property#set<br/>
         
           b7570e6 3 months ago Sylvain Joyeux roby: fix storage in MasterDeviceInstance, of the slaves as services instead of SlaveDeviceInstance<br/>
         
           cffd60b 3 months ago Sylvain Joyeux roby: make it so that MasterDeviceInstance#blabla_slave returns the definition for the 'blabla' slave of the device<br/>
         
           00283a9 3 months ago Sylvain Joyeux roby: make #each_device yield all devices (including the slaves) and define #each_master_device<br/>
         
           5c5f934 3 months ago Sylvain Joyeux gui: implement zooming in the plan view<br/>
         
           1f6e9ee 3 months ago Sylvain Joyeux gui: documentation<br/>
         
           0bd4f55 3 months ago Sylvain Joyeux roby: make sure the Qt display honors the view configuration (annotations, ...)<br/>
         
           44d404f 3 months ago Sylvain Joyeux roby: fix return value for #compute_connection_policies<br/>
         
           e9274ce 4 months ago Thomas Roehr Create log_dir if required in start_local_process_server<br/>
         
           9e659cb 4 months ago Thomas Roehr Change log_dir for ProcessServer from log/ to logs/<br/>
         
           c649b93 4 months ago Sylvain Joyeux Merge branch 'master' of http://git.gitorious.org/rock-toolchain/orocos-rb<br/>
         
           cd421db 4 months ago iMoby roby: fix generation of connection policies which involve transaction proxies<br/>
         
           dc0b195 4 months ago Sylvain Joyeux Revert "Revert "fix race condition during the ruby-internal task initialization""<br/>
         
           2fe4b9e 4 months ago Sylvain Joyeux Revert "Revert "fix race condition during the ruby-internal task initialization""<br/>
         
           1c2fb7c 4 months ago Sylvain Joyeux make the nameservice test idempotent and include it in the complete test suite<br/>
         
           3163d18 4 months ago Sylvain Joyeux in #peek_state, initialize the state queue with the rtt_state when using the state reader<br/>
         
           304422c 4 months ago Sylvain Joyeux use TaskContext.get in TaskContext.reachable? so that it works on AVAHI<br/>
         
           cf11d3f 4 months ago Sylvain Joyeux test: completely fix the test suite<br/>
         
           e3ff203 4 months ago Sylvain Joyeux indentation fix<br/>
         
           22e3bdb 4 months ago Sylvain Joyeux raise Orocos::NotInitialize when accessing a functionality that requires the CORBA layer to be initialized<br/>
         
           b3050ec 4 months ago Sylvain Joyeux test: only add the local prefix to PKG_CONFIG_PATH, don't reset it<br/>
         
           5448e26 4 months ago Sylvain Joyeux allow access to Orocos.loaded_plugins, mainly for debugging purposes<br/>
         
           471abd3 4 months ago Sylvain Joyeux test: small fix<br/>
         
           86d9a3c 4 months ago Sylvain Joyeux test: disable RTT scripting when building orogen components for tests<br/>
         
           fcc976c 4 months ago Sylvain Joyeux test: start fixing the test suite again<br/>
         
           f7364f1 4 months ago Sylvain Joyeux roby: make rock-roby BLA fail with a proper error message<br/>
         
           aa5ce57 4 months ago Sylvain Joyeux fix typo<br/>
         
           5cca4ae 4 months ago Sylvain Joyeux accept the --host option in oroshell<br/>
         
           eae01b7 4 months ago Sylvain Joyeux roby: implement orocos.restart_deployments and orocos.stop_deployments in the shell<br/>
         
           70502c8 4 months ago Sylvain Joyeux roby: change the model-to-const export to always make the models accessible at toplevel<br/>
         
           21a52f9 4 months ago Sylvain Joyeux accept --host=HOSTNAME:PORT in oroshell<br/>
         
           fe2784d 4 months ago Sylvain Joyeux use temporary files to get the SVG in the PlanDisplay widget<br/>
         
           149dea5 4 months ago Sylvain Joyeux Revert "fix race condition during the ruby-internal task initialization"<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 7 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           682347e 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next' into temp<br/>
         
           9bc3b14 4 months ago Sylvain Joyeux in DataStream, allow the minimal time to be lower than the beginning of the stream<br/>
         
           ea5a76d 4 months ago Sylvain Joyeux remove dependency on hoe, which is now optional<br/>
         
           2b2003e 4 months ago Sylvain Joyeux define StreamAligner#each<br/>
         
           4375eda 4 months ago Sylvain Joyeux in --show, accept evaluating ruby expressions for each samples<br/>
         
           e74edb5 4 months ago Sylvain Joyeux accept floating-point values as time specifications<br/>
         
           07b60f5 4 months ago Sylvain Joyeux documentation<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 85 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           86068bf 7 weeks ago Sylvain Joyeux app: fix loading of YAML with empty sections<br/>
         
           21a8318 7 weeks ago Sylvain Joyeux app: start the log server only if logging is enabled<br/>
         
           2a582b8 7 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           e0e3abb 7 weeks ago Sylvain Joyeux bin: fix the roby tool<br/>
         
           d658831 2 months ago Sylvain Joyeux core,test: test that errors on permanent tasks are not fatal<br/>
         
           985b130 2 months ago Sylvain Joyeux core: add dRoby marshalling support to planner models<br/>
         
           a34d3b0 2 months ago Sylvain Joyeux gui: add filtering support to the chronicle widget<br/>
         
           0632e14 2 months ago Sylvain Joyeux log: fix possible infinite stack recursion in find_invalid_marshalling_object<br/>
         
           733ff61 2 months ago Sylvain Joyeux app: move setup_global_singletons to #setup as well<br/>
         
           78004da 2 months ago Sylvain Joyeux app: fix the shell interface<br/>
         
           062672b 2 months ago Thomas Roehr Execute setup of druby server as last step in the setup.<br/>
         
           f3acda6 2 months ago Thomas Roehr Loading base configuration before setting up drb server. Otherwise the druby configuration would not apply.<br/>
         
           4e1f1e6 3 months ago Thomas Roehr Return from paintEvent if there are no tasks<br/>
         
           dd2dc1e 3 months ago Thomas Roehr Add fallback for Qt Versions that don't support toMSecSinceEpoch for DateTime<br/>
         
           64ce613 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           e6005d9 3 months ago Sylvain Joyeux fix setup/cleanup cycle for the DRb service<br/>
         
           d9c2557 3 months ago Sylvain Joyeux fix roby/standalone<br/>
         
           d533100 3 months ago Sylvain Joyeux fix roby/standalone<br/>
         
           e7cf95b 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           ce3c220 3 months ago Sylvain Joyeux core: do generate errors for permanent tasks<br/>
         
           1fb7464 3 months ago Sylvain Joyeux test: turn off the roby log server in tests<br/>
         
           d141587 3 months ago Sylvain Joyeux core: fix #garbage for events<br/>
         
           3f56d77 3 months ago Sylvain Joyeux app: stop the DRb service in #cleanup<br/>
         
           a8634fc 3 months ago Sylvain Joyeux app: define Application#log_server? and #log_server=<br/>
         
           af6a384 3 months ago Sylvain Joyeux app: set +x on find-events<br/>
         
           8ff7c82 3 months ago Sylvain Joyeux gui: in plan_rebuilder_widget, fix applying first snapshot<br/>
         
           71542db 3 months ago Sylvain Joyeux gui: fix loading of configuration files which have no 'main' section<br/>
         
           a5acd09 3 months ago Sylvain Joyeux bin: add --help to roby-display<br/>
         
           758758d 3 months ago iMoby app: fix return value of Application#using(plugin_name) if the plugin is already loaded<br/>
         
           6a90d4d 3 months ago iMoby app: setup Roby.plan before loading config/init.rb<br/>
         
           732babb 3 months ago Sylvain Joyeux test: in teardown, be robust to #plan being nil (if setup itself fails)<br/>
         
           09db8c4 3 months ago Sylvain Joyeux test: redirect the Robot logger to a file by default<br/>
         
           ce2388f 3 months ago Sylvain Joyeux sched: when loglevel == DEBUG, display more informative information about why we don't schedule an event<br/>
         
           b09a536 3 months ago Sylvain Joyeux test: use common Application setup and cleanup code in tests<br/>
         
           905707a 3 months ago Sylvain Joyeux app: make the plan application-local instead of global<br/>
         
           2f61e3b 3 months ago Sylvain Joyeux app: remove long-dead code<br/>
         
           6944fc2 3 months ago Sylvain Joyeux Merge branch 'gui'<br/>
         
           27ee6c5 3 months ago Sylvain Joyeux make hoe truly optional<br/>
         
           dd6333f 4 months ago Sylvain Joyeux gui: fix loading/saving options<br/>
         
           b4f745e 4 months ago Sylvain Joyeux gui: in chronicle display, implement different view modes<br/>
         
           dbda1f3 4 months ago Sylvain Joyeux gui: fix exception if #update is called without argument while no current time is yet selected<br/>
         
           6032647 4 months ago Sylvain Joyeux gui: fix minimal task line height<br/>
         
           54e6b81 4 months ago Sylvain Joyeux gui: misc fixes, add different visualization modes to the chronicles<br/>
         
           b8c9d14 4 months ago Sylvain Joyeux app: add find-events to the app template<br/>
         
           bd9b700 4 months ago Sylvain Joyeux app: remove obsolete scripts<br/>
         
           55fcacb 4 months ago Sylvain Joyeux app: create the find-events script<br/>
         
           0ca8191 4 months ago Sylvain Joyeux core: make Roby.format_time accept a format argument<br/>
         
           00aa5ca 4 months ago Sylvain Joyeux gui: disable the vizkit plugin for now<br/>
         
           524edfe 4 months ago Sylvain Joyeux log: use STDERR instead of STDOUT for output<br/>
         
           dbae438 4 months ago Sylvain Joyeux gui: fix info/warn message emission in the plan rebuilder widget<br/>
         
           819014d 4 months ago Sylvain Joyeux gui: fix path to UI files<br/>
         
           9a8bedb 4 months ago Sylvain Joyeux gui: properly integrate the various displays<br/>
         
           4acf244 4 months ago Sylvain Joyeux gui: in Chronicle, bind the object info to the history widget<br/>
         
           197c563 4 months ago Sylvain Joyeux gui: in object details view, emit a signal if a time field is double-clicked<br/>
         
           38fd489 4 months ago Sylvain Joyeux gui: add object info view to chronicle display<br/>
         
           c8ae9ec 4 months ago Sylvain Joyeux gui: in Chronicle, display a timeline<br/>
         
           bb2195c 4 months ago Sylvain Joyeux gui: in Chronicle, fix jump after zoom change<br/>
         
           e61fa98 4 months ago Sylvain Joyeux gui: in Chronicle, update the scrollbar ranges after zoom/unzoom<br/>
         
           455ca25 4 months ago Sylvain Joyeux gui: in Chronicle, emit timeChanged when the current time changed<br/>
         
           0443b34 4 months ago Sylvain Joyeux gui: extract the info view widget out of the relation display<br/>
         
           2c560bf 4 months ago Sylvain Joyeux log: cleanup and move the GUI stuff to log/gui<br/>
         
           f52d10c 4 months ago Sylvain Joyeux log: small tuning of the chronicle view<br/>
         
           1c191e8 4 months ago Sylvain Joyeux log: display the events<br/>
         
           a3a8a36 4 months ago Sylvain Joyeux log: implement scrolling behaviour in chronicle view<br/>
         
           ff2218f 4 months ago Sylvain Joyeux log: implement chronicle display (very minimal at the moment)<br/>
         
           8314cf3 4 months ago Sylvain Joyeux core: define PlanObject#addition_time, which keeps track of when the task got added in a plan<br/>
         
           99967bd 4 months ago Sylvain Joyeux core: in Task#start_time, return a value as soon as the task has been started<br/>
         
           25086ae 4 months ago Sylvain Joyeux app: much better formatting of messages in the shell<br/>
         
           398a236 4 months ago Sylvain Joyeux in attr_config, handle empty log sections<br/>
         
           292554a 4 months ago Sylvain Joyeux app: update the results script to handle the new logs/ structure<br/>
         
           161ca9f 4 months ago Sylvain Joyeux core: make sure that a planningfailederror leads to the removal of the planned task<br/>
         
           e3ff0b8 4 months ago Sylvain Joyeux app: add a job management interface to the shell<br/>
         
           ebf6889 4 months ago Sylvain Joyeux log: properly handle garbage-collected tasks<br/>
         
           faf6aad 4 months ago Sylvain Joyeux app: properly handle an empty config/app.yml file<br/>
         
           e281428 4 months ago Sylvain Joyeux app: when reconnecting the shell, call a #new_model hook to announce remote models<br/>
         
           04e5a0e 4 months ago Sylvain Joyeux app: in the shell, load the same plugins that the remote side has loaded<br/>
         
           a7dc8fa 4 months ago Sylvain Joyeux roby: add scripts/display, which automatically loads config/roby-display.yml if available<br/>
         
           5c7076a 4 months ago Sylvain Joyeux app: formatting fix<br/>
         
           3db7614 4 months ago Sylvain Joyeux app: hide some messages that were shown by default but are ignored by most people<br/>
         
           5f62b31 4 months ago Sylvain Joyeux app: style fix<br/>
         
           ab1567a 4 months ago Sylvain Joyeux app: announce when the application is ready to execute<br/>
         
           02bab2d 4 months ago Sylvain Joyeux app: remove some debugging output<br/>
         
           7f18fa3 4 months ago Sylvain Joyeux app: change the handling of log files<br/>
         
           353544b 4 months ago Sylvain Joyeux app: rework configuration handling<br/>
         
           18fcbcb 4 months ago Sylvain Joyeux app: define Application#app_dir to replace the APP_DIR global<br/>
         
         </td></tr>
       
       
         <tr class="to_commits_header">
           <td><a class="commit_event_toggler" id="25"> 2 commits</a> in stable but not in next</td>
         </tr>
         <tr class="to_commits" id="commits_25"><td>
         
           3288b14 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           db0d76d 3 months ago Sylvain Joyeux make hoe truly optional<br/>
         </td></tr>
       





       <tr class="name" id="tutorials/orogen/rock_tutorial">
         <th>tutorials/orogen/rock_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 1 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           6dde3ad 4 months ago Sylvain Joyeux add a base::samples::RigidBodyState port<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/rock_tutorial">
         <th>tutorials/rock_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 5 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           3024133 3 months ago Sylvain Joyeux ... and install BearingDistanceSensor instead of Heading<br/>
         
           dfb2c14 3 months ago Sylvain Joyeux fix naming of the bearingdistancesensor struct<br/>
         
           0955f15 3 months ago Sylvain Joyeux add missing headers in  the bearing-heading-sensor definition<br/>
         
           0a89df0 3 months ago Sylvain Joyeux add the vizkit_plugin.rb file to declare the visualizer as a widget for Pose_m<br/>
         
           28922b8 3 months ago Sylvain Joyeux add the definition of the BearingHeadingSensor type<br/>
         
         </td></tr>
       
       





       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 22 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           0d15ebb 3 months ago Sylvain Joyeux ruby: test for the fix in 39ef578d0e8451<br/>
         
           58f3b6e 3 months ago Sylvain Joyeux ruby: remove debugging output<br/>
         
           39ef578 3 months ago Sylvain Joyeux ruby: fix Registry#clear_exports<br/>
         
           ab3db5d 3 months ago Sylvain Joyeux ruby: properly invalidate values of modified containers<br/>
         
           f027b8d 3 months ago Sylvain Joyeux ruby: fix referencing of invalid memory in pointer handling during calls<br/>
         
           f35f698 3 months ago Sylvain Joyeux ruby: if VERBOSE is set, verify the validity of memory stored in MemoryTable<br/>
         
           ffb3e01 3 months ago Sylvain Joyeux ruby: add a lot of output for memory management debugging<br/>
         
           7174bbd 3 months ago iMoby ruby: implement Registry#clear_exports<br/>
         
           5669b06 3 months ago Sylvain Joyeux fix compilation of Ruby bindings when Boost is in a non-systemwide location<br/>
         
           49c0cb5 4 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           56c02d4 4 months ago Sylvain Joyeux add dependency on the facets gem<br/>
         
           121b295 4 months ago Peter Soetens cmake: fix TYPELIB_PLUGIN_PATH in rosdeb builds.<br/>
         
           c88a27b 4 months ago Sylvain Joyeux ruby: fix &lt;&lt; and concat() for std::string<br/>
         
           f07da5d 4 months ago Sylvain Joyeux gccxml: make the typename-manipulation code a lot faster<br/>
         
           c3afca0 4 months ago Sylvain Joyeux ruby: add some more ignored node types in the GCCXML loader<br/>
         
           36090c8 4 months ago Sylvain Joyeux ruby: improve performance of GCCXMLLoader.parse_template<br/>
         
           52c5398 8 months ago Peter Soetens make: update paths to smoothen transition to new stack layout<br/>
         
           6b5a622 8 months ago Peter Soetens Merge remote branch 'origin/master-ros-refactoring'<br/>
         
           33cef9f 8 months ago Peter Soetens Merge branch 'toolchain-2.4'<br/>
         
           3e09623 8 months ago Peter Soetens clang: cosmetic fixes to silence clang warnings.<br/>
         
           c4f3932 8 months ago Peter Soetens make: install in stack's install directory.<br/>
         
           fb88ca7 8 months ago Steven Bellens adding boost version checks<br/>
         
         </td></tr>
       
       





       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 9 commits</a> in next but not in stable</td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           582e639 3 months ago Sylvain Joyeux fix requiring const_defined_here_p.rb directly<br/>
         
           bd17339 3 months ago Sylvain Joyeux factor out some common code from different projects in Utilrb.spawn<br/>
         
           45d441b 4 months ago Sylvain Joyeux hash: add #map_key<br/>
         
           744f105 4 months ago Sylvain Joyeux bump version number, release gem<br/>
         
           754954c 4 months ago Sylvain Joyeux rename if_hoe_available and if_rdoc_available to simply hoe and rdoc<br/>
         
           4baf83f 4 months ago Sylvain Joyeux module: define dsl_attribute<br/>
         
           06f6db5 4 months ago Sylvain Joyeux pkg_config: define PkgConfig.available_package_names<br/>
         
           157e07f 4 months ago Sylvain Joyeux make the Hoe library optional (i.e. developer-only)<br/>
         
           43f9d0c 4 months ago Sylvain Joyeux start a rake library<br/>
         
         </td></tr>
       
       


</table>
