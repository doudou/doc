---
title: 2013-09
sort_info: 992
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
__vizkit__, Rock's visualization "framework", has been significantly rewritten to
deal a lot better with bad communication links and components that appear and
disappear. As a result, the rock-display tool now behaves very well remotely
through bad communication links.

The vizkit usage API changed because of this update. [The corresponding
documentation](http://rock-robotics.org/stable/documentation/graphical_user_interface/200_simple_gui.html)
has been updated. The integration of widgets and vizkit3d plugins has not
changed.

This is the first stable release of __syskit__, Rock's system management layer.
In its current state, syskit will still misbehave in complex cases, but is more
than capable to deal with what you can throw at it in most cases.

<h1>New packages</h1>
<ul>

    <li>base/orogen/std</li>

    <li>base/templates/ruby_lib</li>

    <li>bundles/rock_ugv_nav</li>

    <li>bundles/tutorials</li>

    <li>bundles/tutorials_scripts</li>

    <li>control/kdl</li>

    <li>control/orogen/kdl</li>

    <li>drivers/actuator_dispatcher</li>

    <li>drivers/aria</li>

    <li>drivers/orogen/aria</li>

    <li>drivers/orogen/ptu_directedperception</li>

    <li>drivers/ptu_directedperception</li>

    <li>tools/metaruby</li>

    <li>tools/pocolog_cpp</li>

    <li>tools/syskit</li>

</ul>




<h1>Package status</h1>
<p>1281 new commits in 66 packages<br/>
Affected packages: 
  <a href="#base/doc">base/doc</a>

  <a href="#base/numeric">base/numeric</a>

  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/scripts">base/scripts</a>

  <a href="#base/templates/bundle">base/templates/bundle</a>

  <a href="#base/templates/cmake_lib">base/templates/cmake_lib</a>

  <a href="#base/templates/doc">base/templates/doc</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#bundles/rock">bundles/rock</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#drivers/aggregator">drivers/aggregator</a>

  <a href="#drivers/camera_firewire">drivers/camera_firewire</a>

  <a href="#drivers/camera_ids">drivers/camera_ids</a>

  <a href="#drivers/camera_prosilica">drivers/camera_prosilica</a>

  <a href="#drivers/canbus">drivers/canbus</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/dynamixel">drivers/dynamixel</a>

  <a href="#drivers/hokuyo">drivers/hokuyo</a>

  <a href="#drivers/iodrivers_base">drivers/iodrivers_base</a>

  <a href="#drivers/laser_filter">drivers/laser_filter</a>

  <a href="#drivers/mb500">drivers/mb500</a>

  <a href="#drivers/orogen/aggregator">drivers/orogen/aggregator</a>

  <a href="#drivers/orogen/camera_base">drivers/orogen/camera_base</a>

  <a href="#drivers/orogen/camera_firewire">drivers/orogen/camera_firewire</a>

  <a href="#drivers/orogen/camera_ids">drivers/orogen/camera_ids</a>

  <a href="#drivers/orogen/canbus">drivers/orogen/canbus</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/gps">drivers/orogen/gps</a>

  <a href="#drivers/orogen/iodrivers_base">drivers/orogen/iodrivers_base</a>

  <a href="#drivers/orogen/laser_filter">drivers/orogen/laser_filter</a>

  <a href="#drivers/orogen/parport">drivers/orogen/parport</a>

  <a href="#drivers/orogen/transformer">drivers/orogen/transformer</a>

  <a href="#drivers/orogen/vicon">drivers/orogen/vicon</a>

  <a href="#drivers/orogen/xsens_imu">drivers/orogen/xsens_imu</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#drivers/vicon">drivers/vicon</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/frame_helper">image_processing/frame_helper</a>

  <a href="#image_processing/stereo">image_processing/stereo</a>

  <a href="#multiagent/fipa_acl">multiagent/fipa_acl</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_navigation">planning/corridor_navigation</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/nav_graph_search">planning/nav_graph_search</a>

  <a href="#planning/orogen/corridor_navigation">planning/orogen/corridor_navigation</a>

  <a href="#planning/orogen/corridor_planner">planning/orogen/corridor_planner</a>

  <a href="#rtt">rtt</a>

  <a href="#rtt_typelib">rtt_typelib</a>

  <a href="#slam/envire">slam/envire</a>

  <a href="#slam/odometry">slam/odometry</a>

  <a href="#slam/orogen/orientation_estimator">slam/orogen/orientation_estimator</a>

  <a href="#slam/quater_ikf">slam/quater_ikf</a>

  <a href="#slam/quater_ukf">slam/quater_ukf</a>

  <a href="#tools/log_tools">tools/log_tools</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#tutorials/orogen/rock_tutorial">tutorials/orogen/rock_tutorial</a>

  <a href="#tutorials/orogen/tut_deployment">tutorials/orogen/tut_deployment</a>

  <a href="#tutorials/orogen/tut_follower">tutorials/orogen/tut_follower</a>

  <a href="#tutorials/orogen/tut_sensor">tutorials/orogen/tut_sensor</a>

  <a href="#tutorials/rock_tutorial">tutorials/rock_tutorial</a>

  <a href="#typelib">typelib</a>

  <a href="#utilrb">utilrb</a>
</p>


<table class="package_status">

       <tr class="name" id="base/doc">
         <th>base/doc</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 72 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           4c4ee7e 7 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           a4b8c6c 5 weeks ago Sylvain Joyeux integrate the "Syskit Concepts" video<br/>
         
           38bd089 5 weeks ago Sylvain Joyeux fix some broken links<br/>
         
           e983b08 7 weeks ago Sylvain Joyeux syskit: update the transformer documentation to syskit<br/>
         
           9fef240 7 weeks ago Sylvain Joyeux syskit: finish the transformer tutorial<br/>
         
           241fca4 7 weeks ago Sylvain Joyeux syskit: add transformer tutorial<br/>
         
           d6837fd 7 weeks ago Sylvain Joyeux fix definition of static transforms<br/>
         
           c31fe9f 7 weeks ago Sylvain Joyeux add tutorial on reusing profiles, as a stepping stone towards the transformer<br/>
         
           d01c209 7 weeks ago Sylvain Joyeux fix issues in follower_def at the end of the device tutorial<br/>
         
           19b4d87 7 weeks ago Sylvain Joyeux syskit: add tutorial on devices<br/>
         
           aaf1b9d 7 weeks ago Sylvain Joyeux syskit: complete the file structure tutorial to reuse the rock bundle<br/>
         
           7200200 7 weeks ago Sylvain Joyeux fix the leader-follower tutorial to add deployment selection to all definitions<br/>
         
           49d9d5a 7 weeks ago Sylvain Joyeux fix installation instructions<br/>
         
           d627326 8 weeks ago Sylvain Joyeux add documentation for the dynamic services<br/>
         
           746638e 8 weeks ago Sylvain Joyeux syskit: small improvements in the interactions page<br/>
         
           44df456 9 weeks ago Sylvain Joyeux add new style used by the orogen HTML templates<br/>
         
           09909c9 9 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           b4168b6 9 weeks ago Sylvain Joyeux syskit: mention where the result of each tutorial is located<br/>
         
           2cab94e 2 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           5723fd0 2 months ago Sylvain Joyeux fix the file-structure syskit tutorial<br/>
         
           fa8c4c9 2 months ago Sylvain Joyeux add last tutorial about how the modelling parts are split into the bundle file hierarchy<br/>
         
           9d006ef 2 months ago Sylvain Joyeux finish convertion of system management bundles to syskit<br/>
         
           f2ecfbd 2 months ago Sylvain Joyeux finish converting to syskit<br/>
         
           5a11e9f 2 months ago Leif Christensen fixing driver class example doc<br/>
         
           aa187c2 3 months ago Thomas Roehr Merge branch 'next'<br/>
         
           eadc04b 3 months ago Sylvain Joyeux add style for oroGen and type documentation(s)<br/>
         
           bd12750 3 months ago Sylvain Joyeux fix API documentation for #static_transform and #dynamic_transform (fixes #203)<br/>
         
           e1d41de 3 months ago Leif Christensen Merge branch 'stable'<br/>
         
           5a4bc13 3 months ago Leif Christensen Added few lines to make hand-made logging example functional<br/>
         
           ee0276b 3 months ago Allan E. Conquest typos<br/>
         
           c59874b 3 months ago Allan E. Conquest CompoundDisplay: removed obsolete 'include Orocos'<br/>
         
           b8bafe7 3 months ago Sylvain Joyeux must put more than three dashes as title markers, otherwise webgen interprets it as end of content<br/>
         
           994470a 3 months ago Sylvain Joyeux orocosrb: document the debugging possibilities<br/>
         
           ecb7f1d 3 months ago Sylvain Joyeux Merge remote-tracking branch 'origin/next'<br/>
         
           051d39d 3 months ago Sylvain Joyeux improve the description of declaration of ROS mappings<br/>
         
           396d59b 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           cd151b2 3 months ago Allan E. Conquest CompoundDisplay: Continued.<br/>
         
           41b1ec1 3 months ago Allan E. Conquest Merge remote-tracking branch 'origin/master' into compound_display<br/>
         
           024d05f 4 months ago Thomas Roehr Fix example of loading transformer configuration<br/>
         
           00afb7d 4 months ago Thomas Roehr Be more verbose in the example of the transformer<br/>
         
           4094877 4 months ago Allan E. Conquest Starting documentation on CompoundDisplay. Might be moved to a different place.<br/>
         
           6c2dccb 4 months ago Allan E. Conquest fix use of warning box<br/>
         
           1f2f1cd 4 months ago Sylvain Joyeux fix tumblr video integration on the home page<br/>
         
           ccbe088 4 months ago Thomas Roehr Additional fixes to ros documentation<br/>
         
           a027c79 4 months ago Thomas Roehr Fix naming in ros section<br/>
         
           8e49d4a 4 months ago Sylvain Joyeux fix syskit-enabled bundles creation commands<br/>
         
           abb4f39 4 months ago Sylvain Joyeux Merge remote-tracking branch 'origin/syskit'<br/>
         
           85794a6 4 months ago Thomas Roehr Update ROS integration documentation<br/>
         
           b00e995 5 months ago Sylvain Joyeux document the topic access API completely<br/>
         
           c6cd96d 5 months ago Sylvain Joyeux add the ROS/Rock bridge section at the right place in the left menu<br/>
         
           20b2d94 5 months ago Sylvain Joyeux ros: document the current state of the ROS/Rock bridge<br/>
         
           d464260 6 months ago Sylvain Joyeux Merge remote-tracking branch 'origin/next'<br/>
         
           cb923e5 6 months ago Sylvain Joyeux updates to the rock-create-orogen usage<br/>
         
           2baaba6 6 months ago Alexander Duda update graphical user interface to vizkit Async<br/>
         
           400a8d0 6 months ago Alexander Duda add simple gui and simple task ruby file<br/>
         
           8d4e45e 7 months ago Sylvain Joyeux syskit: go on with converting the tutorials<br/>
         
           fe695d2 7 months ago Sylvain Joyeux syskit: start converting the tutorials<br/>
         
           9812907 7 months ago Sylvain Joyeux syskit: fix references to models/compositions (should be models/blueprints)<br/>
         
           37b3af6 7 months ago Sylvain Joyeux syskit: finish the pages that were half-started<br/>
         
           d30acf1 7 months ago Sylvain Joyeux syskit: start the file layout page<br/>
         
           43725ab 7 months ago Sylvain Joyeux misc fixes of errors reported by webgen<br/>
         
           a0e673e 7 months ago Sylvain Joyeux fix some YAML parsing errors in webgen tags when running on 1.9 (psych)<br/>
         
           3fbde22 7 months ago Sylvain Joyeux disable line numbers when using coderay through kramdown<br/>
         
           e87dfc3 7 months ago Sylvain Joyeux small improvements<br/>
         
           9515e57 7 months ago Sylvain Joyeux more updates for syskit<br/>
         
           79c896e 7 months ago Sylvain Joyeux go on converting the system modelling to syskit<br/>
         
           7385692 7 months ago Sylvain Joyeux start migrating the system management documentation to syskit<br/>
         
           66590a5 8 months ago Sylvain Joyeux Merge remote-tracking branch 'origin/stable'<br/>
         
           0704f36 8 months ago Allan E. Conquest typo<br/>
         
           6444d5e 9 months ago Sylvain Joyeux orogen: add missing hyperlink<br/>
         
           0819c6c 9 months ago Sylvain Joyeux orogen: in plugin writing, reference the TaskBase.hpp file directly<br/>
         
           47a44ad 9 months ago Sylvain Joyeux add information about the ROS mappings<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/numeric">
         <th>base/numeric</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 15 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           b96e7fb 3 months ago Felix Rehrmann stats: stats for a matrix is not a template anymore<br/>
         
           0153918 3 months ago Felix Rehrmann stats class for time series data at once<br/>
         
           3c03f4c 3 months ago Felix Rehrmann stats: added delta degree of freedom parameter for adjusting variance estimates<br/>
         
           1cc2489 3 months ago Felix Rehrmann test for base::VectorXd stats<br/>
         
           f2afd12 4 months ago Thomas Roehr Remove 'typename' from template specialization<br/>
         
           0a4bfb3 4 months ago Thomas Roehr Declare template specialization as inline.<br/>
         
           a151294 4 months ago Felix Rehrmann made Stats template useable for base::VectorXd<br/>
         
           044b593 6 months ago Jakob Schwendner refactored planefitting<br/>
         
           48eb47d 6 months ago Jakob Schwendner extended plane fitting to also do covariance calculation<br/>
         
           ca0ee95 7 months ago Jakob Schwendner planefit: add update method which takes another planefit object<br/>
         
           bf75c7e 7 months ago Jakob Schwendner updated plane fitting and added test cases<br/>
         
           541b0ff 7 months ago Jakob Schwendner started planefitting<br/>
         
           dca7efd 9 months ago Jakob Schwendner small fix for stats class, to prevent division by zero<br/>
         
           c92c7a0 9 months ago Jakob Schwendner updated Histogram class<br/>
         
           dfcba03 9 months ago Jakob Schwendner added documentation to Histogram class<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 6 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           487a7e7 4 months ago Sylvain Joyeux do not forcefully load the std typekit<br/>
         
           95736ac 4 months ago Sylvain Joyeux import the base/orogen/std orogen project<br/>
         
           7491dea 5 months ago Sylvain Joyeux ros: add ros-rock convertion for ro_ptr(frame) as well as frame<br/>
         
           dcb592a 5 months ago Sylvain Joyeux add a ROS mapping for std::string as well<br/>
         
           a34f02b 6 months ago Sylvain Joyeux export SonarScan<br/>
         
           b381772 7 months ago Thomas Roehr Add more general template for converting Eigen types<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 23 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           5e2a94c 8 weeks ago Sylvain Joyeux bundle: forward arguments to Orocos.initialize<br/>
         
           98e99a0 8 weeks ago Sylvain Joyeux fix usage message for rock-create-vizkit-widget<br/>
         
           ddaabfe 2 months ago Thomas Roehr Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           ae72e3f 3 months ago Sylvain Joyeux inspect: allow searching for deployments by task model<br/>
         
           e817ea8 3 months ago Sylvain Joyeux inspect: fix the no_widgets option flag<br/>
         
           ea140dd 3 months ago Sylvain Joyeux bundle: fix Bundle.get when Orocos::Log is not yet loaded<br/>
         
           484e304 3 months ago Sylvain Joyeux replace STDIN.readline by Orocos.watch in rock-run<br/>
         
           55c02a1 3 months ago Sylvain Joyeux define Bundles.has_selected_bundle?<br/>
         
           325f61d 4 months ago Sylvain Joyeux bin: don't use bash-isms in rock-create-lib<br/>
         
           412fd94 4 months ago Sylvain Joyeux doc: generate documentation for numerical types as well<br/>
         
           b67cb13 4 months ago Sylvain Joyeux bin: improvements to rock-run<br/>
         
           4c0166c 4 months ago Thomas Roehr Add optional dependency to tools/roby.<br/>
         
           9be11f1 5 months ago Sylvain Joyeux bin: in rock-browse, silence the autoproj loading messages<br/>
         
           582f1eb 5 months ago Sylvain Joyeux fix insertion order of the bundle's paths into $LOAD_PATH<br/>
         
           b73c6e2 6 months ago Sylvain Joyeux bundle: fix all bundles having public_logs set to true regardless of the user-provided setting<br/>
         
           3edba9a 6 months ago Raul Dominguez bundle: fix .get for log tasks<br/>
         
           5e79b04 6 months ago Sylvain Joyeux make rock-create-orogen a two-step process to ease the overall package creation<br/>
         
           21f8084 7 months ago Sylvain Joyeux bundles: add the ROCK_BUNDLE_PATH in Roby's search_path<br/>
         
           07e802b 7 months ago Sylvain Joyeux created template and creation command for Ruby libraries<br/>
         
           86104f6 7 months ago Sylvain Joyeux bundle: set app.public_logs in Bundles.initialize only<br/>
         
           aa02860 7 months ago Sylvain Joyeux use utilrb's find_matching_parent to look for the root bundle dir<br/>
         
           fc08f61 7 months ago Sylvain Joyeux better error message<br/>
         
           1befcbd 7 months ago Sylvain Joyeux add a roby plugin to get bundle support from Roby controllers<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/templates/bundle">
         <th>base/templates/bundle</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 7 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           0ce7105 3 months ago Sylvain Joyeux add the config/orogen/ directory to the bundle template<br/>
         
           35922d4 7 months ago Sylvain Joyeux add logs/ to gitignore<br/>
         
           78206f1 7 months ago Sylvain Joyeux add some ruby-specific entries to gitignore and gitattributes<br/>
         
           b5a1f2f 7 months ago Sylvain Joyeux add "rock" as a default dependency on all bundles<br/>
         
           c2796a8 7 months ago Sylvain Joyeux add the stanza to enable transformer support, but commented out<br/>
         
           977e442 7 months ago Sylvain Joyeux add a roby-specific config/init.rb that loads syskit and sets the temporal scheduler<br/>
         
           fcad823 7 months ago Sylvain Joyeux move app.yml to bundle.yml so that roby init installs the full app.yml template<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/templates/cmake_lib">
         <th>base/templates/cmake_lib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           a71f933 3 months ago Sylvain Joyeux add test template<br/>
         
           d59e161 3 months ago Sylvain Joyeux fix mixup dummy_project/dummyproject<br/>
         
         </td></tr>
       
       





       <tr class="name" id="base/templates/doc">
         <th>base/templates/doc</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           b33744d 7 months ago Sylvain Joyeux update style file from rock-robotics.org<br/>
         
           7cf7808 7 months ago Sylvain Joyeux don't show line numbers when using kramdown's syntax highlighting<br/>
         
         </td></tr>
       
       





       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="8"> 9 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_8"><td>
         
           a1d8e5b 10 days ago Sylvain Joyeux fix getCurveLength<br/>
         
           25b726e 10 weeks ago Sylvain Joyeux frame: fix size validation in init() and setImage()<br/>
         
           50a010b 3 months ago Leif Christensen typo in cmake message<br/>
         
           7424c30 5 months ago Janosch Machowinski Added test case for spline::sample()<br/>
         
           e110fa1 5 months ago Janosch Machowinski Revert "Added method to get point in spline without parameters"<br/>
         
           9c6eaa3 6 months ago Janosch Machowinski Added method to get point in spline without parameters<br/>
         
           e151c43 6 months ago Janosch Machowinski Added constructor to DistanceImage<br/>
         
           cda6766 7 months ago Janosch Machowinski added missing include<br/>
         
           1010377 7 months ago Janosch Machowinski added helper methods to base::actuator::Command and base::actuator::Status<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 3 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           99d9156 10 days ago Sylvain Joyeux getCurveLength's non-const version has been removed, remove there as well<br/>
         
           ef4e617 6 months ago SeekurJr fix SplineBase#interpolate when no point types are given<br/>
         
           b3993b3 7 months ago Thomas Roehr Fix reading with row_major for MatrixX<br/>
         
         </td></tr>
       
       



       <tr class="name" id="bundles/rock">
         <th>bundles/rock</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="10"> 31 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_10"><td>
         
           b75a2c6 3 months ago Sylvain Joyeux move to a more 'canonical' syntax for specializations and connections<br/>
         
           e338a05 4 months ago Sylvain Joyeux fix #configure code for camera_firewire<br/>
         
           faa6a34 4 months ago Sylvain Joyeux integrate camera_usb::Task<br/>
         
           1055463 5 months ago Sylvain Joyeux fix generic timestamping support<br/>
         
           8af3a8e 5 months ago Sylvain Joyeux dev: move device definitions out of models/orogen into models/blueprints/devices when possible<br/>
         
           1fafe75 5 months ago Sylvain Joyeux canbus: declare that we should use the component's 'in' port as the common writer port for all slaves<br/>
         
           075d42d 5 months ago Sylvain Joyeux can: style fix<br/>
         
           e4530ac 5 months ago Sylvain Joyeux the bundle depends on the transformer to be available<br/>
         
           ccaabf2 5 months ago Felix Rehrmann Merge branch 'syskit' of git://gitorious.org/rock/bundle into syskit<br/>
         
           1b180ac 5 months ago SeekurJr added definitions for laser_filter::Task<br/>
         
           b15df1e 6 months ago Matthias Goldhoorn Added 3D Mouse<br/>
         
           dedb7ad 6 months ago Sylvain Joyeux fix frame name in xsens_imu::Task declarations<br/>
         
           9f8f039 6 months ago Sylvain Joyeux Revert "Check wehter the FourWheelCommand type is defined or not"<br/>
         
           1720fd6 6 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/syskit' into syskit<br/>
         
           66f4b73 6 months ago SeekurJr fix the transformer broadcaster support<br/>
         
           5e6ee7b 6 months ago SeekurJr add some additional transformer configuration to hokuyo and sick<br/>
         
           7446c45 6 months ago Matthias Goldhoorn Check wehter the FourWheelCommand type is defined or not<br/>
         
           dfe0dc2 7 months ago Sylvain Joyeux orogen: move the setup for the odometry oroGen project to rock_ugv_nav<br/>
         
           3c9c5f6 7 months ago Sylvain Joyeux add missing require<br/>
         
           ae88dd3 7 months ago Sylvain Joyeux add support for iodrivers_base<br/>
         
           df447fc 7 months ago Sylvain Joyeux add missing require<br/>
         
           2e30c68 7 months ago Sylvain Joyeux add missing require<br/>
         
           347f9a7 8 months ago Sylvain Joyeux define the PTU device type<br/>
         
           9bf4be7 8 months ago Sylvain Joyeux fix some issues with timestamping support<br/>
         
           7b731ec 8 months ago Sylvain Joyeux add models for laserscanner_sick<br/>
         
           206abe4 8 months ago Sylvain Joyeux add the definitions of device namespaces in blueprints/devices instead of blueprints/sensors<br/>
         
           4c788f8 8 months ago Sylvain Joyeux move the odometry stuff to rock-nav<br/>
         
           38fd91e 8 months ago Sylvain Joyeux rename Rock::Base into Base::<br/>
         
           3372100 8 months ago Sylvain Joyeux fix remaining orocos/roby_plugin =&gt; syskit issues<br/>
         
           89bd6cd 8 months ago Sylvain Joyeux fix minor issues<br/>
         
           ee208be 8 months ago Sylvain Joyeux start converting the Rock bundle to syskit<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 3 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           f58bbe8 4 months ago Sylvain Joyeux add a state structure for the PID controller<br/>
         
           9ecb7b5 4 months ago Sylvain Joyeux fix various issues related to setting the configuration of the PID controller<br/>
         
           8de6d2d 8 months ago Matthias Goldhoorn Added == and != operator to PIDSetting Struct.<br/>
         
         </td></tr>
       
       













       <tr class="name" id="drivers/aggregator">
         <th>drivers/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="12"> 4 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_12"><td>
         
           7554b9c 3 months ago Alexander Duda StreamStatus: change file period from int to int64_t<br/>
         
           f673133 4 months ago Jakob Schwendner add priority to StreamAlignerStatus<br/>
         
           1761d83 4 months ago Jakob Schwendner compile fix<br/>
         
           7482e99 4 months ago Jakob Schwendner changed cerr output to logging<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_firewire">
         <th>drivers/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           43a0696 10 weeks ago Sylvain Joyeux fix framerate setting in mode 7<br/>
         
           90920a3 10 weeks ago Sylvain Joyeux fix image size given to Frame::init()<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/camera_ids">
         <th>drivers/camera_ids</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 7 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           c60e0ff 3 months ago Felix Rehrmann added license and copyright marks<br/>
         
           24f21b8 3 months ago SeekurJr Add exposure value as frame attribute.<br/>
         
           e2ae18c 8 months ago Felix Rehrmann fixed some bug related to the bayer commit<br/>
         
           feef826 8 months ago Felix Rehrmann this camera uses a RGGB bayer filter<br/>
         
           f86330f 8 months ago Felix Rehrmann using ueye.h defines to determine api version<br/>
         
           3564865 8 months ago Felix Rehrmann color mode constant renamed in ueye api version 4.2<br/>
         
           0859f0d 10 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/camera_prosilica">
         <th>drivers/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 3 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           2bd5fc5 4 months ago Thomas Roehr Add binary to display all prosilica cameras found<br/>
         
           556c976 5 months ago Sylvain Joyeux add missing ARCH.in file<br/>
         
           49aef98 5 months ago Sylvain Joyeux build and install the useful prosilica examples<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/canbus">
         <th>drivers/canbus</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 5 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           308ed12 3 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           640ecde 7 months ago Matthias Goldhoorn Make LOSTARB non Cirtical, and added error_counter getter<br/>
         
           c9a9bc0 7 months ago Matthias Goldhoorn Cleanup work<br/>
         
           03e1ee7 7 months ago Matthias Goldhoorn Let the drivers really implement the interface for sending.<br/>
         
           e04b150 7 months ago Matthias Goldhoorn Created new base class for doing an abstraction to the canbus<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 4 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           dfa8d27 4 months ago Matthias Goldhoorn Fixed initialization of 6DMouse<br/>
         
           dbf4dee 6 months ago Matthias Goldhoorn Make the joystick destructor virtual to prevent compiler warnings in orogn task<br/>
         
           7182ef9 6 months ago Matthias Goldhoorn Added button values to non-raw feedback<br/>
         
           aff00c6 6 months ago Matthias Goldhoorn Moved the 3D Mouse plugin to the controldev<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/dynamixel">
         <th>drivers/dynamixel</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           e808ccd 3 months ago Matthias Goldhoorn Make the gcc 4.6.3 happy<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/hokuyo">
         <th>drivers/hokuyo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           5524bf6 3 months ago Sylvain Joyeux remove unused bool return for the hokuyo driver<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/iodrivers_base">
         <th>drivers/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 9 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           05633d2 11 days ago Sylvain Joyeux explicitly load the header for lock_guard<br/>
         
           89c98a9 3 months ago Sylvain Joyeux fix compilation warnings<br/>
         
           0986bde 3 months ago Sylvain Joyeux fix Driver::hasPacket when the internal buffer is empty<br/>
         
           09f1e03 3 months ago Sylvain Joyeux make openURI and close virtual<br/>
         
           6177b03 3 months ago Sylvain Joyeux add binary_com to return a binary buffer converted to hex<br/>
         
           8920fc0 5 months ago Stefan Haase Adds the boost system lib to the mix.<br/>
         
           d335a24 5 months ago Thomas Roehr Explicitly add include_directories to disambiguate boost include dirs<br/>
         
           bc62d4e 5 months ago Felix Rehrmann added pthread library for linking<br/>
         
           8e93f66 5 months ago Stefan Changes the boost thread lib integration, otherwise the boost header/lib versions conflict.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/laser_filter">
         <th>drivers/laser_filter</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           e26d558 5 months ago Raul Dominguez Changes in the Noise Filter to remove measures outside the Maximum Range<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/mb500">
         <th>drivers/mb500</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           9630f16 3 months ago Matthias Goldhoorn Adapatation to iodriver_base<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/aggregator">
         <th>drivers/orogen/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 4 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           7875bd8 3 months ago Javier Hidalgo fixed bug in port.type and right tabular of generated code<br/>
         
           b2b1dd4 3 months ago Javier Hidalgo support ReadOnlyPointer ready to merge to master<br/>
         
           bfcdc07 3 months ago Javier Hidalgo fixed the support for ReadOnlyPointer for port types<br/>
         
           3592138 3 months ago Alexander Duda support for ReadOnlyPointer for port types<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_base">
         <th>drivers/orogen/camera_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           0cf30cb 10 weeks ago Sylvain Joyeux add missing using_library stanza for camera_interface<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_firewire">
         <th>drivers/orogen/camera_firewire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="25"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_25"><td>
         
           681d004 10 weeks ago Sylvain Joyeux fix segv during cleanup/configure cycle<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_ids">
         <th>drivers/orogen/camera_ids</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           b2c9d6c 3 months ago SeekurJr set exposure value only if mode is set to manual<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/canbus">
         <th>drivers/orogen/canbus</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           64e7347 7 months ago Matthias Goldhoorn Added Error Counter to Statistics, see canbus for aditional inform.<br/>
         
           5d5e10c 7 months ago Matthias Goldhoorn Created abstract implementation of an Canbus Driver.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 8 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           b227277 3 months ago auv Only send the raw values IF there was an incoming message<br/>
         
           c9b1ea4 5 months ago Matthias Goldhoorn bool vectors not supported, so use uint8_t for now<br/>
         
           c9c4c5d 5 months ago Javier Hidalgo Carrio Revert "uncomment deprecated method for keeping backwards compatibility (e.g.: Asguard rover control)"<br/>
         
           7c52f7b 6 months ago jhidalgocarrio uncomment deprecated method for keeping backwards compatibility (e.g.: Asguard rover control)<br/>
         
           66219f2 6 months ago Matthias Goldhoorn Added scaling option for Mouse3D<br/>
         
           00bbbea 6 months ago Matthias Goldhoorn Stupid error, now initialized pointer...<br/>
         
           6548c30 6 months ago Matthias Goldhoorn Added 3D Mouse input device<br/>
         
           f039fbc 6 months ago Matthias Goldhoorn Cleanup of the Datatype RawCommand, see Doc<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/gps">
         <th>drivers/orogen/gps</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           4b842d3 4 months ago Matthias Goldhoorn Make sure that all data's are read from the GPSd itself. Added some debugging functions.<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/iodrivers_base">
         <th>drivers/orogen/iodrivers_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="30"> 5 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_30"><td>
         
           e0f5262 3 months ago Sylvain Joyeux validate that at least one input source is specified<br/>
         
           5967292 3 months ago Sylvain Joyeux actually implement IO status updates to the io_status port<br/>
         
           5e0def2 3 months ago Sylvain Joyeux make processIO pure virtual<br/>
         
           cb68375 3 months ago Sylvain Joyeux fix io_port documentation being used as the default value<br/>
         
           67bfa8c 7 months ago Sylvain Joyeux mark io_raw_in as needs_reliable_connection<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/laser_filter">
         <th>drivers/orogen/laser_filter</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="31"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_31"><td>
         
           f715e1e 5 months ago Raul Dominguez Maximum range of the laser is now configurable.<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/parport">
         <th>drivers/orogen/parport</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="32"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_32"><td>
         
           c3f886f 5 months ago Sylvain Joyeux remove test deployment, we have default deployments now<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/transformer">
         <th>drivers/orogen/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="33"> 7 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_33"><td>
         
           649d0c1 4 days ago Sylvain Joyeux orogen: add missing argument in supercall<br/>
         
           2468e26 13 days ago Sylvain Joyeux add missing header<br/>
         
           e5ed584 7 weeks ago Sylvain Joyeux update documentation<br/>
         
           c83dc51 7 weeks ago Sylvain Joyeux generate status messages even if there are no new transformations/samples to process<br/>
         
           66f81b5 3 months ago Jakob Schwendner update generation of streamaligner status<br/>
         
           0796dd1 4 months ago Jakob Schwendner added transform_priority feature<br/>
         
           c8aa466 6 months ago Raul Dominguez use Orocos.name_service.get<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/vicon">
         <th>drivers/orogen/vicon</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="34"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_34"><td>
         
           cacbf5b 7 months ago Felix Rehrmann checks for wrong subject/segment labels<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/orogen/xsens_imu">
         <th>drivers/orogen/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="35"> 4 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_35"><td>
         
           ca0ba76 3 months ago Jakob Schwendner Merge branch 'master' into next<br/>
         
           3263595 3 months ago Jakob Schwendner Revert "moved interface specific task description to base/interfaces"<br/>
         
           2544da0 1 year, 1 month ago Jakob Schwendner added way to set the frame names<br/>
         
           062be0a 1 year, 1 month ago Jakob Schwendner moved interface specific task description to base/interfaces<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="36"> 37 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_36"><td>
         
           2d7da7d 13 days ago Sylvain Joyeux fix usage of master's base/Time.hpp replacing base/time.h<br/>
         
           5f498f5 13 days ago Sylvain Joyeux add missing headers<br/>
         
           56a4960 3 weeks ago Raul Dominguez syskit: fix wrong test for self producers<br/>
         
           7aae4dc 7 weeks ago Sylvain Joyeux syskit: fix wrong device selection merging when one frame is not selected<br/>
         
           4c5bc61 7 weeks ago Sylvain Joyeux syskit: fix issue w.r.t using nil transformer object in some cases<br/>
         
           95a0cfd 7 weeks ago Sylvain Joyeux syskit: fix usage of complex InstanceRequirements objects as transformation producers<br/>
         
           1042aa9 7 weeks ago Sylvain Joyeux syskit: fix using compositions as transformation producers<br/>
         
           6b3f80c 7 weeks ago Sylvain Joyeux fix test on port type to include the _m type as well<br/>
         
           1a227c9 2 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           5d42755 3 months ago Sylvain Joyeux fix API documentation for #static_transform and #dynamic_transform (fixes #203)<br/>
         
           cdb6c60 4 months ago Jakob Schwendner added ability to set the priority for dynamic transforms<br/>
         
           f6021d0 4 months ago Jakob Schwendner improved error message<br/>
         
           b662414 6 months ago SeekurJr syskit: don't add the transformer broadcaster task if the engine is quitting<br/>
         
           18fa957 6 months ago SeekurJr syskit: fix setup of the transformer broadcaster<br/>
         
           bdca8f2 6 months ago Raul Dominguez ruby: add config file loading messages to the INFO stream<br/>
         
           1a277d1 7 months ago Felix Rehrmann when resolving producers, do not add tasks connected the input ports if one of their frames is not known<br/>
         
           0f9b20f 7 months ago Felix Rehrmann better error message<br/>
         
           8c574fc 7 months ago Sylvain Joyeux add transformer configuration access on registration, not on enable<br/>
         
           62cc34b 7 months ago Sylvain Joyeux merge the definition of transformer in Component#merge instead of TaskContext#merge<br/>
         
           9d7b46e 7 months ago Sylvain Joyeux better error message<br/>
         
           7313ce8 7 months ago Sylvain Joyeux syskit: merge transformer configurations in TaskContext#merge as well<br/>
         
           c74b48e 7 months ago Sylvain Joyeux syskit: in #initialize_transform_producers, make sure that we handle tasks that have multiple parents well<br/>
         
           d1631e8 7 months ago Sylvain Joyeux syskit: when creating a new producer, use the transformer configuration from the task that needs it<br/>
         
           9671f8f 7 months ago Sylvain Joyeux syskit: take device slaves into account in device-to-port frame propagation<br/>
         
           e1238a6 7 months ago Sylvain Joyeux syskit: add some debug display for device-to-frame propagation<br/>
         
           c48e6b7 7 months ago Sylvain Joyeux syskit: oroGen's transformer model expects a port name or an oroGen port object<br/>
         
           3682cd3 7 months ago Sylvain Joyeux syskit: #each_output_port does not have an argument anymore<br/>
         
           2ad2ecf 7 months ago Sylvain Joyeux syskit: reduce what is required to be able to register the plugin as minimal as possible<br/>
         
           38d6826 7 months ago Sylvain Joyeux make the test suite from tests/orogen/transformer pass again on syskit<br/>
         
           ce7b0dc 7 months ago Sylvain Joyeux syskit: improve error message<br/>
         
           aa356bb 7 months ago Sylvain Joyeux transformer: make transform_chain return an empty chain when from == to<br/>
         
           e86bb25 8 months ago Sylvain Joyeux syskit: make #clear_model clear the transformer conf<br/>
         
           9ee377a 8 months ago Sylvain Joyeux syskit: use a subclass of Configuration for profile transformers<br/>
         
           282b45f 8 months ago Sylvain Joyeux syskit: move the transformer_enabled? flag to Syskit.conf<br/>
         
           0077e1b 8 months ago Sylvain Joyeux syskit: get rid of the need of a global transformation configuration<br/>
         
           3c0f938 8 months ago Sylvain Joyeux move the syskit transformer integration out of the syskit plugin proper, into a real ruby library<br/>
         
           971f6ab 10 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/vicon">
         <th>drivers/vicon</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="37"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_37"><td>
         
           3e2a362 7 months ago Felix Rehrmann find out the result of the last getSegementTranormation call<br/>
         
         </td></tr>
       
       





















       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="38"> 5 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_38"><td>
         
           cddb119 4 months ago Alexander Duda ImageView: add Menu InvertColor and RGBSwapped, some factoring<br/>
         
           fec57c6 5 months ago Allan E. Conquest ImageView: Add window title<br/>
         
           70898d5 6 months ago Allan E. Conquest ImageView: Remove frame<br/>
         
           eacd06f 7 months ago Allan E. Conquest ImageView: Set size hint and minimum size.<br/>
         
           79ccb98 7 months ago Alexander Duda ImageView: store save path<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="39"> 202 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_39"><td>
         
           e240492 3 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           29a8b47 3 months ago Alexander Duda Merge branch 'master' into next<br/>
         
           e79a0e6 3 months ago Alexander Duda Revert "fix: from_ruby': cannot convert  to /std/string" This fix breaks compatibility to master as the file was removed on master<br/>
         
           a780e7f 3 months ago Allan E. Conquest VizkitItems: First version of SyskitActionItem. Later, this item shall have an interface to Syskit to start/stop jobs etc.<br/>
         
           03f1c02 3 months ago Allan E. Conquest ContextMenu: Added basic context menu without special cases. Just a selection of simple strings. This basic version could be used by the special cases to avoid code duplicates.<br/>
         
           8412031 3 months ago Allan E. Conquest TaskInspector: fixed typo in method call. did that not crash at all?<br/>
         
           3ccf2d3 3 months ago Alexander Duda Vizkit fix: port.connect_to task<br/>
         
           b29f9d6 3 months ago Alexander Duda TaskInspector/StructViewer: support for auto disconnect when invisible<br/>
         
           fd81cfe 3 months ago Alexander Duda Vizkit: add support for auto disconnect if widgets get invisible<br/>
         
           2dea086 3 months ago Allan E. Conquest CompoundDisplay: Forbid resetting grid dimensions<br/>
         
           c493a56 3 months ago Allan E. Conquest CompoundDisplay: cleanup<br/>
         
           984fc79 3 months ago Allan E. Conquest CompoundDisplay: ContainerWidget: set label background color to red if port is unreachable<br/>
         
           8f3ffcc 3 months ago Allan E. Conquest cleanup<br/>
         
           e3367fa 3 months ago Alexander Duda replay: fix NaN bug Ticket #274<br/>
         
           1cf4d6f 3 months ago Alexander Duda add term of use for rock-replay buttons downloaded form Clker.com<br/>
         
           5a44da8 4 months ago Allan E. Conquest only connect widget if the port is reachable. check the asynchronous way.<br/>
         
           78f8439 4 months ago Allan E. Conquest remove widget from container on disconnect<br/>
         
           d7cf5c2 4 months ago Allan E. Conquest CompoundDisplay: remove redundant method call. listener gets stopped by disconnect method already.<br/>
         
           b18a01f 4 months ago Allan E. Conquest CompoundDisplay: add disconnect button to ContainerWidget<br/>
         
           50fc7fa 4 months ago Allan E. Conquest CompoundDisplay: disconnected flag<br/>
         
           29d304d 4 months ago Allan E. Conquest CompoundDisplay: Fix sanity check<br/>
         
           d8d9f1f 4 months ago Allan E. Conquest CompoundDisplay: load/save yaml: set default path argument to nil<br/>
         
           502a02d 4 months ago Alexander Duda LogControl: rescue if corrupted log file is replayed<br/>
         
           f81aea8 4 months ago Alexander Duda VizkitItem: fix using global name service<br/>
         
           b43c967 4 months ago Sylvain Joyeux ruby: set window and vizkit3d plugin names according to the port they listen to<br/>
         
           2640a87 4 months ago Sylvain Joyeux ruby: don't rescue Interrupt while loading plugins<br/>
         
           099eccd 4 months ago Sylvain Joyeux add "reconfigure" to the context menu if the task is running<br/>
         
           c728666 4 months ago Sylvain Joyeux show a message box instead of puts if a context menu action fails<br/>
         
           b04d750 4 months ago Alexander Duda add support for Vizkit.display task<br/>
         
           c2d3d43 4 months ago Jakob Schwendner fixed replay event loop<br/>
         
           4a4078b 4 months ago Jakob Schwendner updated log control widget to also show the target time<br/>
         
           3817395 4 months ago Thomas Roehr Add dependency to base/scripts<br/>
         
           6bffcc0 5 months ago Sylvain Joyeux ruby: no need to explicitely invalidate children on container size change<br/>
         
           7d8c51a 5 months ago Sylvain Joyeux ruby: more debugging information<br/>
         
           54bdaf3 5 months ago Sylvain Joyeux ruby: style fix<br/>
         
           521ff86 5 months ago Sylvain Joyeux ruby: remove duplicate definition of the trajectory viewer<br/>
         
           6e2255c 5 months ago Allan E. Conquest CompoundDisplay: ContainerWidget: Reset label text on disconnect.<br/>
         
           158d562 5 months ago Allan E. Conquest CompoundDisplay: YAML configure and save: always show file explorer if nil path is given.<br/>
         
           e962d76 5 months ago Sylvain Joyeux ruby: add .gitattributes to setup git's diff feature properly<br/>
         
           73834fb 5 months ago Sylvain Joyeux task_inspector: add support for global name services in #add_name_service<br/>
         
           d637ab7 5 months ago Sylvain Joyeux style fix<br/>
         
           e1bbe0d 5 months ago Sascha Arnold moved the hlsToRgb color conversion method to a vizkit helper class, so it can be used in envire and other vizkit plugins as well<br/>
         
           e099d9d 5 months ago Alexander Duda fix VizkitItem: invalidate children first if container was resized<br/>
         
           5e15078 5 months ago Stefan Haase Still boost problems. *sigh*<br/>
         
           f9ca390 5 months ago Alexander Duda TaskInspector: do not call show on all widgets<br/>
         
           c4ba9ad 5 months ago Allan E. Conquest CompoundDisplay: call connect from configure (again)<br/>
         
           63d8c70 5 months ago Stefan Haase Using LIBS instead of DEPS_CMAKE seems to be the best way to prevent boost conflicts.<br/>
         
           2500cfa 5 months ago Stefan Haase Moves the find-boost to the top CMakeLists, otherwise I got a boost header/lib mixture (Ubuntu 10.04).<br/>
         
           d5bbd7f 5 months ago Allan E. Conquest CompoundDisplay: Default grid dimensions now conform to documentation<br/>
         
           5a2c346 6 months ago Janosch Machowinski fixed display of base::Trajectory<br/>
         
           3adfbfa 6 months ago Sylvain Joyeux viz: display lists of /base/Trajectory using the trajectory visualization<br/>
         
           2e808e5 6 months ago Alexander Duda VizkitItem: add menu export to corba for Log::TaskContexts<br/>
         
           ad53b5b 6 months ago Alexander Duda TaskInspector: auto expand for the first entry<br/>
         
           9a9e6b0 6 months ago Matthias Goldhoorn Removed the Connection (3D Mouse) implementation from Vizkit<br/>
         
           48eccb8 6 months ago Alexander Duda VizkitItem: set text Initializing<br/>
         
           cd20425 6 months ago Alexander Duda StructViewer: display ports with their full_name<br/>
         
           78877b8 6 months ago Alexander Duda CompoundDisplay: force encoding for config strings<br/>
         
           3be2c74 6 months ago Sylvain Joyeux ruby: invalidate all children of containers when they get resized<br/>
         
           63bd677 6 months ago Alexander Duda rock-display: fix logic for connecting to a given task or port<br/>
         
           e18d2e3 6 months ago Alexander Duda rock-replay: fix enable_tooling<br/>
         
           b8b5d61 6 months ago Alexander Duda NameServiceItem: show connection state<br/>
         
           0403e8b 6 months ago Alexander Duda remove dependency to tools/port_proxy<br/>
         
           5ca5dea 6 months ago Alexander Duda rock-display: remove options -all<br/>
         
           ea28dde 6 months ago Alexander Duda vizkit_item: add items for event_loop<br/>
         
           f4facd3 6 months ago Alexander Duda vizkit_item: sub ports no longer have a type options.<br/>
         
           b8c038e 6 months ago Alexander Duda TaskInspector: cleanup<br/>
         
           24b4159 6 months ago Alexander Duda TaskInspector: add model accessor<br/>
         
           8d1b1fe 6 months ago Alexander Duda LogOutputPortsItem: raise if item is added twice<br/>
         
           748525c 6 months ago Alexander Duda LogOutputPortsItem: fix each attrib was displayed twice<br/>
         
           b2854fd 6 months ago Alexander Duda TreeView: ContextMenu rescue all Orocos::NotFound errors<br/>
         
           19f1df8 6 months ago Alexander Duda TreeView: fix right click into empty space<br/>
         
           0279507 6 months ago Alexander Duda PortItemUserInteraction: fix opening subports for array elements<br/>
         
           de51d1f 6 months ago Alexander Duda delete test script (is not a unit test)<br/>
         
           523846d 6 months ago Allan E. Conquest Merge branch 'vizkit3d_clicked'<br/>
         
           f819b83 6 months ago Allan E. Conquest Vizkit3D: Click handler: moved and renamed test script<br/>
         
           a201904 6 months ago Allan E. Conquest Vizkit3D: Plugins now emit signal when clicked. The signal includes the clicked (x,y) point in Vizkit3DWidget coordinates.<br/>
         
           7a28bc5 6 months ago Allan E. Conquest Vizkit3DWidget: minor exchange of identical pointers to improve readability.<br/>
         
           87db994 6 months ago Alexander Duda fix click event handling<br/>
         
           c0d4c99 6 months ago Alexander Duda Merge branch 'master' into vizkit3d_clicked<br/>
         
           25445c6 6 months ago Alexander Duda TypelibItem: Fix shrinking containers<br/>
         
           5d864b1 6 months ago Alexander Duda VizkitItem: cache all children<br/>
         
           7ce1847 6 months ago Alexander Duda PropertyItems: store properties<br/>
         
           7f2703f 6 months ago Alexander Duda TypelibItem: disable support for shrinking containers<br/>
         
           690fece 6 months ago Alexander Duda task_inspector: fix spelling error, improve error handling<br/>
         
           289aafa 6 months ago Alexander Duda PropertyItem write: rescue Orocos::NotFound<br/>
         
           81f457d 6 months ago Alexander Duda TypelibItem: fix setting boolean<br/>
         
           a9bb639 6 months ago Alexander Duda TreeView: check for return value before calling expand<br/>
         
           7e70a1b 6 months ago Alexander Duda Merge branch 'async'<br/>
         
           e41a7be 6 months ago Alexander Duda ruby1.8 fix<br/>
         
           6623aec 6 months ago Alexander Duda add support for displaying log and orocos ports with Vizkit.display<br/>
         
           40445f2 6 months ago Allan E. Conquest Vizkit3d: WIP: Receive click events from OSG Nodes<br/>
         
           b8700c9 6 months ago aduda InputPortItem: add support for sending samples<br/>
         
           16e2501 6 months ago Alexander Duda add context_menu<br/>
         
           44a0476 6 months ago Alexander Duda add tree_view.rb<br/>
         
           d5a30a2 6 months ago Alexander Duda WidgetTaskConnector: add support for embedded widgets<br/>
         
           2e43bdb 6 months ago Alexander Duda add ConnectorProc to support lambdas and procs as data sink<br/>
         
           2f13c7e 6 months ago Alexander Duda VizkitItems: add support for Orocos::Task which have no model<br/>
         
           c552647 6 months ago Alexander Duda TreeModeler: fix setting properties<br/>
         
           1638e21 6 months ago Alexander Duda PropertyItem,PropertiesItem: workaround memory leak<br/>
         
           89f9214 6 months ago Alexander Duda TypelibItem: workaround memory leak qt-ruby<br/>
         
           78d96cd 6 months ago Alexander Duda update some unit test to VizkitItem<br/>
         
           78d126d 6 months ago Alexander Duda remove test_coumpound_display<br/>
         
           4fe53e4 6 months ago Alexander Duda Merge branch 'compound_display' into async<br/>
         
           be0259f 6 months ago Alexander Duda re-factor TreeView<br/>
         
           161077f 6 months ago Alexander Duda TreeModel: fix parent<br/>
         
           0d0f646 6 months ago Alexander Duda fix: from_ruby': cannot convert  to /std/string<br/>
         
           08417e4 7 months ago Allan E. Conquest CompoundDisplay: Added some sanity checks for yaml import.<br/>
         
           c423e95 7 months ago Allan E. Conquest CompoundDisplay: Moved connection and configuration code to ContainerWidget. Cleanup.<br/>
         
           114adf9 7 months ago Allan E. Conquest CompoundDisplay: Display MessageBox on URI error (drop text)<br/>
         
           0485fff 7 months ago Alexander Duda fix unit test tree_model<br/>
         
           d406e45 7 months ago Alexander Duda StructViewer: proper resize of the column content<br/>
         
           7c392c2 7 months ago Alexander Duda TaskInspector: show all available widgets in the menunbar<br/>
         
           566d673 7 months ago Allan E. Conquest CompoundDisplay: test script adaptions<br/>
         
           692ac3d 7 months ago Allan E. Conquest CompoundDisplay: Some cleanup.<br/>
         
           76140e9 7 months ago Allan E. Conquest CompoundDisplay: Layout stabilization. Needs to be looked at further.<br/>
         
           a456440 7 months ago Allan E. Conquest CompoundDisplay: Use original signal-based connection for now. Todo: move connection handling to container widget.<br/>
         
           ef5e012 7 months ago Allan E. Conquest Merge remote-tracking branch 'autobuild/async' into compound_display<br/>
         
           1500d9c 7 months ago Alexander Duda TreeModel: enable drag for LogPorts<br/>
         
           a3bb8ea 7 months ago Allan E. Conquest CompoundDisplay: WIP connection bugfixing<br/>
         
           f054112 7 months ago Allan E. Conquest Merge remote-tracking branch 'autobuild/async' into compound_display<br/>
         
           57c6832 7 months ago Alexander Duda port.connect_to widget: support for lazy type resolution<br/>
         
           01a6a37 7 months ago Allan E. Conquest CompoundDisplay: Cleanup<br/>
         
           2473cbc 7 months ago Allan E. Conquest CompoundDisplay: Save port listener<br/>
         
           f532280 7 months ago Alexander Duda add commit logic<br/>
         
           d6768f3 7 months ago Allan E. Conquest CompoundDisplay: WIP: Use URI for drop connections<br/>
         
           da89c58 7 months ago Allan E. Conquest Merge remote-tracking branch 'autobuild/async' into compound_display<br/>
         
           5ff18ee 7 months ago Alexander Duda TreeModel: Fix displaying Log::Properties<br/>
         
           ef2489c 7 months ago Alexander Duda replace Vizkit.mime_data with URI::Orocos (see orocos.rb)<br/>
         
           e83aebe 7 months ago Alexander Duda TreeModel: use yaml to transfer data between Drag and Drop<br/>
         
           62ee448 7 months ago Alexander Duda fix widget console (use basename instead of name)<br/>
         
           860e4ce 7 months ago Alexander Duda fix widget console (use basename instead of name)<br/>
         
           473e4b4 7 months ago Alexander Duda tree model: add support for Drag<br/>
         
           55753bb 7 months ago Alexander Duda vizkit.rb: improve error message for connect_port_to<br/>
         
           26e723c 7 months ago Alexander Duda compound_display: create plugin<br/>
         
           6a08998 7 months ago Allan E. Conquest CompoundDisplay: Replay mode obsolete<br/>
         
           aa9989f 7 months ago Allan E. Conquest CompoundDisplay: Basic text drop functionality for container widgets. Dropping a string "task.port" onto the widget opens a context menu to choose a suitable widget for the port type.<br/>
         
           d9d2b7e 7 months ago Allan E. Conquest CompoundDisplay: Fix config validation<br/>
         
           39727f6 7 months ago Allan E. Conquest CompoundDisplay: Hide config object from outer interface<br/>
         
           1b3017c 7 months ago Allan E. Conquest CompoundDisplay: Remove widget_hash and fix off_by_one error in container generation. remove old UI design because it is now coded by hand.<br/>
         
           6d6dbc5 7 months ago Allan E. Conquest CompoundDisplay: WIP: Dynamic grid layout<br/>
         
           53e1faf 7 months ago Allan E. Conquest CompoundDisplay: config sanity checks<br/>
         
           15a6e90 7 months ago Allan E. Conquest CompoundDisplay: Documentation and cleanup.<br/>
         
           694a0ac 7 months ago Allan E. Conquest CompoundDisplay: local reference to display widget objects. disconnect/reconnect functionality (untested)<br/>
         
           e85e617 7 months ago Allan E. Conquest CompoundDisplay: Improve YAML Import<br/>
         
           5ab8d18 7 months ago Allan E. Conquest CompoundDisplay: string-based port connection. at least for replay.<br/>
         
           471f0cf 7 months ago Allan E. Conquest CompoundDisplay: Yaml im-/export prerelease. Currently, the string-based port connection does not work. you have to submit a port object manually via config_port_object. therefore the yaml import does not work either.<br/>
         
           997c81f 7 months ago Allan E. Conquest CompoundDisplay: - Load/Save button menu: hideable via flag. - Temporary connect method (connect_port_object) works now<br/>
         
           86d331c 7 months ago Allan E. Conquest CompoundDisplay: Layout + connect method for port objects (to be replaced by string-based solution)<br/>
         
           7862517 7 months ago Allan E. Conquest CompoundDisplay: Configuration class and basic widget connection<br/>
         
           b0ab4c6 7 months ago Allan E. Conquest CompoundDisplay: UI: Renamed widget indices<br/>
         
           caa6c4a 7 months ago Allan E. Conquest Started working on CompoundDisplay widget.<br/>
         
           e7d802c 7 months ago Alexander Duda async: fix bug introduced by c98e16ccd53b1649790f8cfb2b208eba3a9e6939<br/>
         
           f5585c0 7 months ago Alexander Duda Merge branch 'async' of git://gitorious.org/rock-gui/vizkit into async<br/>
         
           1d2bfea 7 months ago Alexander Duda TreeModel: display no data if no sample was received<br/>
         
           c98e16c 7 months ago Sylvain Joyeux tree_model: always give an async::log task context to the data model<br/>
         
           22eacfa 7 months ago Sylvain Joyeux tree_model: fix typos in property handling<br/>
         
           54e6392 7 months ago sempromuser fix for 1.8: 1.8 does not support calling super from within a block<br/>
         
           a07f13c 7 months ago Alexander Duda WidgetTaskConnector: add support for properties<br/>
         
           ad5123c 7 months ago Alexander Duda TreeModel: bugfix all ports were read all times<br/>
         
           a743712 7 months ago Alexander Duda ConnectorPort: add support for writing QVaraints<br/>
         
           40a6bdd 7 months ago Alexander Duda WidgetTaskConnector: add support for symbols<br/>
         
           1c9f027 7 months ago Alexander Duda TypelibQtAdapter: bugfix raise<br/>
         
           dbd315f 7 months ago Alexander Duda ConnectorObject: bugifx parameter passing<br/>
         
           ce97bc4 7 months ago Alexander Duda tree_model: compatibility fix ruby 1.8 + fix context menu<br/>
         
           7aedf07 7 months ago Alexander Duda VizkitInfoViewer: remove buggy notification on error<br/>
         
           d87b8e2 7 months ago Alexander Duda async move ConnectorObjects in a new ruby file<br/>
         
           6b90620 7 months ago Allan E. Conquest VizkitInfoViewer: log notification<br/>
         
           1965c07 7 months ago Allan E. Conquest VizkitInfoViewer: Workaround to disable context menu on topic items.<br/>
         
           cbed556 7 months ago Allan E. Conquest VizkitInfoViewer: Editing of timers now working.<br/>
         
           fe6bf83 7 months ago Allan E. Conquest bugfixes<br/>
         
           e75e636 7 months ago Allan E. Conquest VizkitInfoViewer: WIP<br/>
         
           5346941 7 months ago Allan E. Conquest VizkitInfoViewer: WIP: Rewrite item edit<br/>
         
           0736d5c 7 months ago Allan E. Conquest VizkitInfoViewer: store QVariant timer object at tree view items<br/>
         
           7fd33c1 7 months ago Allan E. Conquest VizkitInfoViewer: cleanup due to progress in Orocos::Async<br/>
         
           600f6d9 7 months ago Alexander Duda WidgetConnector: normalize all signatures to ConnectorObjects<br/>
         
           88e47b5 7 months ago Alexander Duda update widgets which were directly using call_qt_method<br/>
         
           ac33aaf 7 months ago Alexander Duda add unit test for widget.connect_with_task<br/>
         
           c4b6fb7 7 months ago Alexander Duda QtTypelibAdapter: remove method_list<br/>
         
           7b3eff9 7 months ago Alexander Duda QtTypelibAdapter: store method type<br/>
         
           348b7d0 7 months ago Alexander Duda add missing qrc file<br/>
         
           43e9a1e 7 months ago Sylvain Joyeux typelib_qt: use Typelib::Registry.rtt_typename (from orogen) to get the orocos type name from the C++ type<br/>
         
           20ae0ea 7 months ago Alexander Duda add unit test for typelib qt adapter / fix unit tests<br/>
         
           15612d1 7 months ago Alexander Duda add WidgetTaskConnector for DSL<br/>
         
           798230e 7 months ago Alexander Duda add DSL to connect widgets with Orocos TaskContext<br/>
         
           d097226 7 months ago Alexander Duda TypelibQtAdapter: by pass adapter if type is not a typelib type<br/>
         
           40b4842 7 months ago Alexander Duda refactor the Qt-typelib bridge<br/>
         
           336bbc2 7 months ago Alexander Duda tree_model: fix displaying simple types<br/>
         
           a0b2ef6 7 months ago Alexander Duda tree_model: fix add? for NameServiceDataModel<br/>
         
           7497b79 7 months ago Alexander Duda rock-display: do not remove dangling references by default<br/>
         
           7709cb9 7 months ago Sylvain Joyeux fix tree modelling for properties and output ports that are neither a compound nor a vector<br/>
         
           2df8cf4 7 months ago Alexander Duda tree_model NameService: do not show namespace of the child tasks<br/>
         
           72b6651 8 months ago Alexander Duda replace VizkitInfowViewer with the one from Allan<br/>
         
           e04c15b 8 months ago Alexander Duda update widgets to use async api<br/>
         
           599624d 8 months ago Alexander Duda async: connect_port_to takes advantage of on_reachable<br/>
         
           35bbfe3 8 months ago Alexander Duda async tree model: add sort, Log objects<br/>
         
           01300b5 8 months ago Alexander Duda tree_model: add unit test<br/>
         
           d5be03c 8 months ago Alexander Duda tree_model: show accept, reject button<br/>
         
           fce7719 8 months ago Alexander Duda async: add support for stop listener<br/>
         
           b316b73 8 months ago Alexander Duda temp commit<br/>
         
           75a1918 8 months ago Alexander Duda add a proper TreeModel for Typelib types<br/>
         
           e0331fe 8 months ago Alexander Duda Async: add some convenient functions and unit test<br/>
         
           0b75a05 8 months ago Alexander Duda first step to integrate async api<br/>
         
         </td></tr>
       
       



       <tr class="name" id="image_processing/frame_helper">
         <th>image_processing/frame_helper</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="40"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_40"><td>
         
           c74fa6e 3 days ago Sylvain Joyeux fix linking to opencv on recent OpenCV versions<br/>
         
         </td></tr>
       
       











       <tr class="name" id="image_processing/stereo">
         <th>image_processing/stereo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="41"> 41 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_41"><td>
         
           1050e0e 2 days ago Sylvain Joyeux look for boost::system before using it<br/>
         
           17021da 4 days ago Sylvain Joyeux add missing dependency on boost-system<br/>
         
           61710b1 4 days ago Sylvain Joyeux fix include path so that we pick stereo/config.h from the current build rather than the installed version<br/>
         
           eb47e88 10 days ago Thomas Roehr Fix include of nonfree feature headers<br/>
         
           3040908 11 days ago Sylvain Joyeux fix inclusion of opencv2/gpu/gpu.hpp not being guarded by OPENCV_HAS_SURF_GPU<br/>
         
           c25467b 12 days ago Sylvain Joyeux do enable SURF/SIFT-related functionality on pre-2.4<br/>
         
           aa8e762 12 days ago Sylvain Joyeux fix builds on opencv 2.4 and older<br/>
         
           e0e7852 4 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into next<br/>
         
           6c5624a 4 weeks ago Sylvain Joyeux add missing file<br/>
         
           283a4b8 4 weeks ago Sylvain Joyeux make sure that sparse_stereo compiles even without the surf/sift/surf-gpu support in opencv<br/>
         
           de3afda 4 weeks ago Sylvain Joyeux fix test compilation when the sparse stereo class cannot be built<br/>
         
           d53b55a 4 weeks ago Sylvain Joyeux make the library compile with Ubuntu 13.04's opencv packages<br/>
         
           5914ac3 5 weeks ago Sylvain Joyeux the gpu module is included in cv_core in 2.4, only look for opencv_gpu on 2.3<br/>
         
           5e17416 5 weeks ago Sylvain Joyeux cmake: fix errror generation when opencv-gpu is not found<br/>
         
           9a3bb28 5 weeks ago Sylvain Joyeux cmake: fix errror generation when opencv-gpu is not found<br/>
         
           b295ce5 10 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           fdc3d5d 11 months ago Marc Hildebrandt Merge branch 'master' of http://git.gitorious.org/rock-image-processing/stereo<br/>
         
           46a0ea0 11 months ago Marc Hildebrandt added option to loadClassVector to only load the first n vector nodes<br/>
         
           3235276 11 months ago Marc Hildebrandt Added loading/storing of the source vector structure<br/>
         
           85b8332 11 months ago Jakob Schwendner updated signature fore copyTo to allow optional transform to be applied to the featurepoints<br/>
         
           95b2c28 11 months ago Marc Hildebrandt Added field "source_frame", modified push_back function to reflect this<br/>
         
           1a716d4 11 months ago Marc Hildebrandt added option to getInterFrameImage to use external correspondance vector<br/>
         
           fbbac6a 11 months ago Marc Hildebrandt now using the == operator in unit test for save/load<br/>
         
           b430727 11 months ago Marc Hildebrandt added test to unittest for copyTo<br/>
         
           b5a8c53 11 months ago Marc Hildebrandt fixed bug with mean_z<br/>
         
           901b950 11 months ago Marc Hildebrandt Added == operator to stereofeaturearray<br/>
         
           a2677d8 11 months ago Marc Hildebrandt added copyTo function with stereoFeatureArray as target<br/>
         
           ffb94f2 11 months ago Marc Hildebrandt added outside accessibility for homography matrix<br/>
         
           35f589a 11 months ago Marc Hildebrandt removed debug output<br/>
         
           11d9f0e 11 months ago Marc added mean z value of current frame<br/>
         
           ea5a1a5 11 months ago Marc added save functions for eigen::matrix<br/>
         
           a65f944 11 months ago Marc removed debug out text<br/>
         
           5f76153 11 months ago Marc adapted the test to vector function<br/>
         
           af4d5a0 11 months ago Marc now saving the complete StereoFeatures structure<br/>
         
           5167f1e 11 months ago Marc removed non-working stream version, fixed POD version<br/>
         
           f0f23d2 11 months ago Marc added ability to store a stereo feature array, including the fitting unit test<br/>
         
           c82e352 11 months ago Marc added store_vector to project<br/>
         
           53e582e 11 months ago Marc added simple template function for vector storing<br/>
         
           d649ecc 12 months ago Marc Hildebrandt merged.<br/>
         
           da47722 12 months ago Marc Hildebrandt added missing include of opencv library<br/>
         
           d8cf23e 1 year, 2 months ago Marc Hildebrandt mad debug frame printing safer<br/>
         
         </td></tr>
       
       



       <tr class="name" id="multiagent/fipa_acl">
         <th>multiagent/fipa_acl</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="42"> 7 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_42"><td>
         
           b8c839d 9 weeks ago Thomas Roehr Fix definition<br/>
         
           ab52c0c 9 weeks ago Thomas Roehr Fix tinyxml include<br/>
         
           b15bffe 7 months ago Thomas Roehr Remove unused variables<br/>
         
           3b711fb 7 months ago Thomas Roehr By default use compiler option -g0 to reduce memory requirements<br/>
         
           35fe6f3 7 months ago Thomas Roehr Remove grammar include from testparser<br/>
         
           7726e9b 7 months ago Thomas Roehr Change signature of MessagePrinter::print<br/>
         
           8be15d2 7 months ago Thomas Roehr Add toString function to ACLMessage<br/>
         
         </td></tr>
       
       



       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="43"> 114 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_43"><td>
         
           da44521 7 days ago Thomas Roehr ros: don't generate array convertion methods for base types<br/>
         
           b0e5b64 5 weeks ago Sylvain Joyeux make sure we get the typekit's name when we fail to import it<br/>
         
           7484466 8 weeks ago Sylvain Joyeux define_container is private typelib API, use #create_container instead<br/>
         
           c6be272 9 weeks ago Thomas Roehr Merge stable into next Conflicts: 	lib/orogen/templates/tasks/Task.cpp<br/>
         
           5a69cc5 3 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/next'<br/>
         
           b51e143 3 months ago Sylvain Joyeux in DynamicPort#instanciate, don't re-resolve type if it is a type object already<br/>
         
           a43a958 3 months ago Sylvain Joyeux in DynamicPort#instanciate(), resolve the type<br/>
         
           7ddade4 3 months ago Sylvain Joyeux remove the definition of dsl_attribute, it is now in utilrb<br/>
         
           a2e7e2e 3 months ago Thomas Roehr Fix configuration_object method.<br/>
         
           8826941 3 months ago Sylvain Joyeux fix attribute support<br/>
         
           658de59 3 months ago Sylvain Joyeux properly report missing files for import_types_from and using_task_library<br/>
         
           9d7ae35 3 months ago Sylvain Joyeux support the new stopTimeout attribute for threads, and make it 10s by default<br/>
         
           fb4dc2b 4 months ago Sylvain Joyeux Merge commit 'refs/merge-requests/2' of git://gitorious.org/+rock-core-maintainers/orocos-toolchain/rock-orogen<br/>
         
           b98d74d 4 months ago Sylvain Joyeux fix loading sub-type plugins<br/>
         
           5b81ffb 4 months ago Matthias Goldhoorn Extended error handling for make_property_dynamic<br/>
         
           d1aa414 4 months ago Matthias Goldhoorn add make_property_dynamic to change a static property from a base class into a dynamic property in a subclass<br/>
         
           873c3fd 4 months ago Sylvain Joyeux fix generated Hook supercalls in the user-visible Task class<br/>
         
           9c0759a 4 months ago Sylvain Joyeux corba: fix support for 8bit types and bool<br/>
         
           ae3f3db 4 months ago Sylvain Joyeux forcefully load all used typekits in the generated orogen file<br/>
         
           bc5f865 4 months ago Sylvain Joyeux fix name-setting for the typekit in Project#name(value)<br/>
         
           bb34d3c 4 months ago Sylvain Joyeux remove forceful import of the std typekit, replace by an --import command line option<br/>
         
           6c38e0a 4 months ago Sylvain Joyeux orogen can obviously not depend on an orogen project<br/>
         
           b9a8bec 4 months ago Sylvain Joyeux always import types from the new std typekit if available<br/>
         
           20db0fe 4 months ago Sylvain Joyeux add uint to the orocos.tlb<br/>
         
           a2b75c5 4 months ago Sylvain Joyeux minor fix<br/>
         
           575555f 4 months ago Sylvain Joyeux completely disable the hacky support for generating transports for base types<br/>
         
           89b524f 4 months ago Sylvain Joyeux fix ROS message generation template<br/>
         
           eb7619d 4 months ago Sylvain Joyeux fix support to generate typekit/transports for base types<br/>
         
           a450e80 4 months ago Sylvain Joyeux ros: make the default type-to-msg and boxed types definition constants<br/>
         
           9f0ab46 4 months ago Sylvain Joyeux ros: make load_rosmap_by_package_name provide a proper error message if no rosmap exists<br/>
         
           3c10d41 4 months ago Sylvain Joyeux ros: don't generate rosmap entries for array and containers<br/>
         
           6f20e65 4 months ago Sylvain Joyeux ros: rename type_mappings to type_to_msg<br/>
         
           6edec2d 4 months ago Sylvain Joyeux ros: generate the ROS bindings for base types when the typekit handles base types<br/>
         
           dd71196 4 months ago Sylvain Joyeux ros: streamline support for custom mappings / boxed types<br/>
         
           ac3e75a 4 months ago Sylvain Joyeux allow to list plugin files in OROGEN_PLUGIN_PATH<br/>
         
           e65d90c 4 months ago Sylvain Joyeux make the class used to generate models configurable in places<br/>
         
           811aec5 4 months ago Sylvain Joyeux make much more nicer-to-read Task.{c,h}pp by enabling ERB trimming<br/>
         
           2442b57 4 months ago Sylvain Joyeux Merge commit 'refs/merge-requests/1' of git://gitorious.org/+rock-core-maintainers/orocos-toolchain/rock-orogen<br/>
         
           aaff0e8 4 months ago Matthias Goldhoorn Fixed ruby 1.8 issue<br/>
         
           13b3241 4 months ago Matthias Goldhoorn gen: make the generation of dynamic props more nicely<br/>
         
           f2ed3ff 5 months ago Sylvain Joyeux override #load_orogen_project in ImportedProject<br/>
         
           b37e4ca 5 months ago Sylvain Joyeux define ImportedProject#to_s<br/>
         
           921d7e4 5 months ago Sylvain Joyeux allow overriding deployment task names<br/>
         
           724a18d 5 months ago Sylvain Joyeux typekit: fix #find_opaque_for_intermediate for containers-of-intermediates<br/>
         
           459ac85 5 months ago Matthias Goldhoorn Only code cleanup<br/>
         
           e466631 5 months ago Matthias Goldhoorn Fixed ruby 1.8 issue<br/>
         
           26ed988 5 months ago Matthias Goldhoorn gen: Changed updateProperties to updateDynamicProperties to be more precise<br/>
         
           3dc6931 5 months ago Matthias Goldhoorn gen: Make sure only updateProperties is generated if there are Dynamic properties. This Also includes inheritation strutures of Task. If the superclass contrains DynamicProperties, the superclass update is called.<br/>
         
           c74d0f8 5 months ago Matthias Goldhoorn gen: add_code_to_base method generated (in worst cases) code within super-task-base classes. finded Method that only code within the TaskBase itself is added.<br/>
         
           e053839 5 months ago Matthias Goldhoorn Make The interface of generate_method compatible with the old style.<br/>
         
           9b5c298 5 months ago Matthias Goldhoorn gen: Removed unneeded getters and double-generation of code internaly of TaskContext's<br/>
         
           cde541f 5 months ago Matthias Goldhoorn spec: Added check if an Task has dynamic properties<br/>
         
           99c2b57 5 months ago Matthias Goldhoorn gen: Fixed generation of (before-) empty code blocks<br/>
         
           b20d619 5 months ago Matthias Goldhoorn gen: extend the code snippet API to allow adding code to existing generation objects<br/>
         
           e591251 5 months ago Matthias Goldhoorn Added support of Dynamic Propertys to Orogen<br/>
         
           0386d5d 5 months ago Stefan Haase define #find_type on the imported typekits<br/>
         
           4310c3c 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           b64b4c7 5 months ago Sylvain Joyeux ros: fix find_package calls on groovy<br/>
         
           3599de9 5 months ago Sylvain Joyeux ros: fix rejection of multidimensional arrays when generating ROS messages<br/>
         
           ff9bd77 5 months ago Sylvain Joyeux ros: fix wrong field order in load_rosmap<br/>
         
           65787c6 5 months ago Matthias Goldhoorn Revert "Added support of Dynamic Propertys to Orogen"<br/>
         
           5de6a87 5 months ago Matthias Goldhoorn Revert "Code refractoring"<br/>
         
           fe823be 5 months ago Matthias Goldhoorn Code refractoring<br/>
         
           e27a393 5 months ago Matthias Goldhoorn Added support of Dynamic Propertys to Orogen<br/>
         
           94b4de2 5 months ago Matthias Goldhoorn deploy: store the list of slave tasks within the master<br/>
         
           d97e0a2 5 months ago Sylvain Joyeux ros: don't export types that have recursive arrays<br/>
         
           b732574 5 months ago Sylvain Joyeux ros: allow external loading of rosmaps<br/>
         
           0c56a6e 5 months ago Sylvain Joyeux never export the m-types<br/>
         
           71055c2 5 months ago Sylvain Joyeux ros: fix field name generation for corner cases<br/>
         
           2b10b68 5 months ago Sylvain Joyeux ros: re-add special case for std::string<br/>
         
           9680d3a 5 months ago Sylvain Joyeux ros: fix dependency setup to ensure that messages are re-generated on changes<br/>
         
           43c8611 5 months ago Sylvain Joyeux ros: remove unused return statements<br/>
         
           84c7064 5 months ago Sylvain Joyeux ros: remove duplicates in the type convertion sets<br/>
         
           80a3b4e 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           0299b8d 6 months ago Sylvain Joyeux Merge branch 'master' of 192.168.122.41:dev/rock-ros/tools/orogen<br/>
         
           71567d9 6 months ago Sylvain Joyeux ros: fix misc issues related to groovy, as well as some corner cases<br/>
         
           245cf98 6 months ago Sylvain Joyeux update the new_project template<br/>
         
           fdb061e 7 months ago SeekurJr fixed namespace for default periods to Orocos::Spec.<br/>
         
           f67e639 7 months ago Janosch Machowinski Allow to overwrite worst case latency globally<br/>
         
           001671f 7 months ago Sylvain Joyeux fix wrong references to ConfigError<br/>
         
           3750c91 7 months ago Sylvain Joyeux remove some RTT1-to-RTT2 migration methods<br/>
         
           6eb5da8 7 months ago Sylvain Joyeux we can import typekits by object now, modify #using_task_library<br/>
         
           988fad1 7 months ago Sylvain Joyeux imports: move the overloaded #find_type from ImportedTypekit to ImportedProject, where it belongs<br/>
         
           c830bdb 7 months ago Sylvain Joyeux Merge commit 'refs/merge-requests/1' of git://gitorious.org/orocos-toolchain/orogen<br/>
         
           df293d2 7 months ago Sylvain Joyeux fix bin/orogen w.r.t. the call to beautify_loading_errors<br/>
         
           3579016 7 months ago Sylvain Joyeux add the orogen-to-html templates and code from Rock's base/scripts<br/>
         
           2870a43 7 months ago Sylvain Joyeux fix backtrace propagation<br/>
         
           e2c31c7 7 months ago Sylvain Joyeux make ImportedProject#typekit(true) create a typekit<br/>
         
           9611819 7 months ago Sylvain Joyeux use null types to define dummy types when loading orogen projects<br/>
         
           4b67c65 7 months ago Sylvain Joyeux make ImportedProject#find_type always return the type from the main project<br/>
         
           478099c 7 months ago Sylvain Joyeux fix infinite recursion in Orocos::Generation::Project#inspect<br/>
         
           e4ebb22 7 months ago Sylvain Joyeux factor the exception-display code out of bin/orogen<br/>
         
           5ca259e 7 months ago Sylvain Joyeux fix imported project loading<br/>
         
           bf59a40 7 months ago Peter Soetens typegen: use pkg.type_registry instead of pkg.typelist<br/>
         
           18fc7be 7 months ago Peter Soetens typekit: allow to generate typekit libs into target/pkg subdirs<br/>
         
           6a0d808 7 months ago Peter Soetens typelib: include missing header to get class decls.<br/>
         
           b7b6d38 7 months ago Peter Soetens typegen: fixup case where there is no typelist in pkg-config file.<br/>
         
           5a83c67 9 months ago Peter Soetens cmake: Add missing library, omniDynamic4 for OMNIORB.<br/>
         
           8aa7755 9 months ago Peter Soetens cmake: fix typo in FindOrocosCORBA for TAO.<br/>
         
           4e6c288 10 months ago Sylvain Joyeux ros: fix include generation in ros/Convertions.hpp in presence of opaques<br/>
         
           e51e008 10 months ago Sylvain Joyeux ros: fix determination of the ROS message list with opaques<br/>
         
           d1de62a 10 months ago Sylvain Joyeux documentation<br/>
         
           4f7561a 10 months ago Sylvain Joyeux fix Typekit#m_type? to return false for hand-written wrappers<br/>
         
           3356ad9 10 months ago Sylvain Joyeux fix find_opaque_for_intermediate in the case where the given type is an opaque<br/>
         
           9d2aac2 10 months ago Sylvain Joyeux define exported_type? on Project and Typekit<br/>
         
           d100990 10 months ago Sylvain Joyeux ros: fix missing included headers in Convertions.hpp<br/>
         
           1ab5ae7 10 months ago Sylvain Joyeux ros: fix missing &gt; mark for array convertion functions<br/>
         
           4071d80 10 months ago Sylvain Joyeux ros: fix signed-unsigned comparison in generated code for arrays<br/>
         
           cae84bb 10 months ago Sylvain Joyeux ros: fix handling of vectors of enums<br/>
         
           4f0f2bc 10 months ago Sylvain Joyeux ros: hardcode the mapping from /std/string to std_msgs/String<br/>
         
           163f1ec 10 months ago Sylvain Joyeux ros: fix loading of empty rosmaps<br/>
         
           3cc56af 10 months ago Sylvain Joyeux ros: fix array handling<br/>
         
           0fc8a89 10 months ago Sylvain Joyeux ros: ROS does not support multi-dimensional arrays, so filter them out<br/>
         
           74541ae 10 months ago Sylvain Joyeux ros: use the same mechanisms for handling string than for time<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_navigation">
         <th>planning/corridor_navigation</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="44"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_44"><td>
         
           1149e34 5 months ago Janosch Machowinski Added documentation<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="45"> 4 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_45"><td>
         
           4905ebd 4 days ago Sylvain Joyeux cmake: add missing dependency on boost::system<br/>
         
           f6d9650 4 days ago Sylvain Joyeux cmake: add missing dependnencies on boost<br/>
         
           35f7d75 7 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           de3c91c 4 months ago Jakob Schwendner const iterator was removed from mls<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/nav_graph_search">
         <th>planning/nav_graph_search</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="46"> 13 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_46"><td>
         
           d32cd2d 2 days ago Sylvain Joyeux add missing dependencies on boost::system<br/>
         
           7ada6b4 10 weeks ago Stefan Haase Adds a toString function to print the informations of the loaded terrain classes.<br/>
         
           300cb50 5 months ago Jakob Schwendner compile fix<br/>
         
           dca9c8e 6 months ago Janosch Machowinski Fixed updateTraversabilityMap method<br/>
         
           c3c76bf 6 months ago Janosch Machowinski Add untraversable border around traversability map<br/>
         
           a395a90 6 months ago Janosch Machowinski DStarLite: plan on data from envire::TraversabilityGrid::TRAVERSABILITY band<br/>
         
           434b7fe 6 months ago Janosch Machowinski DStarLite: Fix initalization<br/>
         
           4c82a1d 6 months ago Janosch Machowinski Reworked DStarLite to work on envire::Traversability maps.<br/>
         
           90d3ac4 6 months ago Janosch Machowinski added getter methods to TerrainClass<br/>
         
           6aa7e4d 6 months ago Stefan Haase Adds the possibility to use envire trav maps directly.<br/>
         
           66753bc 6 months ago Stefan Haase Solves the GLUT_Xmu_LIBRARY not-found-problem on the buildserver.<br/>
         
           070823b 6 months ago Stefan Haase Adds tests, documentation and the generation of a more realistic hill-map.<br/>
         
           0f0ad31 6 months ago Stefan Haase Adds a dstar lite implementation to nav_graph_search.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/orogen/corridor_navigation">
         <th>planning/orogen/corridor_navigation</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="47"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_47"><td>
         
           1950b3f 13 days ago Sylvain Joyeux add missing include<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/orogen/corridor_planner">
         <th>planning/orogen/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="48"> 3 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_48"><td>
         
           fec68e4 13 days ago Sylvain Joyeux add missing include<br/>
         
           8cbff77 13 days ago Sylvain Joyeux add missing include<br/>
         
           c27739a 6 months ago Janosch Machowinski Used envire::TraversabilityGrid not envire::Grid&lt;uint8_t&gt;<br/>
         
         </td></tr>
       
       





       <tr class="name" id="rtt">
         <th>rtt</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="49"> 6 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_49"><td>
         
           8c4077c 11 days ago Sylvain Joyeux Fix building with boost 1.53: this header has been deprecated since boost 1.53<br/>
         
           9eac48a 3 months ago Sylvain Joyeux add missing setter for RTT::os::Thread::stopTimeout<br/>
         
           7f08ef5 3 months ago Sylvain Joyeux os: add a way to set the stop timeout on a per-activity basis<br/>
         
           c352c5c 4 months ago Sylvain Joyeux deregister the dataflow servant in cleanupServer<br/>
         
           2068263 6 months ago Sylvain Joyeux corba: CORBA was doing an unnecessary copy in CorbaTemplateProtocol<br/>
         
           dd50f1c 7 months ago Sylvain Joyeux mqueue: factor the createStream in a base class<br/>
         
         </td></tr>
       
       



       <tr class="name" id="rtt_typelib">
         <th>rtt_typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="50"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_50"><td>
         
           ac06645 7 months ago Sylvain Joyeux add doc target<br/>
         
           42aded3 7 months ago Sylvain Joyeux MQTypelibMarshaller should depend on the new MQTemplateProtocolBase class<br/>
         
         </td></tr>
       
       



       <tr class="name" id="slam/envire">
         <th>slam/envire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="51"> 46 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_51"><td>
         
           0cdda0d 11 days ago Sylvain Joyeux fix warnings<br/>
         
           0d7feed 11 days ago Sylvain Joyeux fix compilation on boost &gt; 1.49<br/>
         
           13b2e1b 9 weeks ago Jakob Schwendner viz: fixed ElevationGrid viewer<br/>
         
           33fab5a 10 weeks ago Jakob Schwendner Merge remote-tracking branch 'autobuild' into next<br/>
         
           70a71e8 4 months ago Jakob Schwendner mlsviz: extents get a color which is a function of the environmentitem<br/>
         
           71162bc 4 months ago Jakob Schwendner viz: visualize extents of mlsgrid<br/>
         
           092b369 4 months ago Jakob Schwendner mls: implemented cellExtents<br/>
         
           1634f0d 4 months ago Jakob Schwendner GridBase: added getCellExtents(), which returns the extents of the cell indices in use<br/>
         
           19aac4a 5 months ago Sascha Arnold the hlsToRgb helper method is now part of vizkit<br/>
         
           d61df08 5 months ago Janosch Machowinski fixed header guard clash with other package<br/>
         
           eb2269f 5 months ago Janosch Machowinski Install TraversabilityGrip.hpp<br/>
         
           028094a 5 months ago Janosch Machowinski fixed compiler warning<br/>
         
           93a1203 5 months ago Janosch Machowinski added subcell interpolation to GridBase::forEachInRectangle(s)<br/>
         
           82432bc 5 months ago Janosch Machowinski moved TraversabilityGrid into own file<br/>
         
           94f664c 5 months ago Janosch Machowinski Added method to iterator over an oriented rectangle on a grid<br/>
         
           dce043b 5 months ago Janosch Machowinski replaced Bresenham implementation<br/>
         
           2aaa863 5 months ago Janosch Machowinski Split up core.hpp in single files<br/>
         
           5445ec3 5 months ago Janosch Machowinski MlsGrid: Added functions to project a spline or a series of point on an MLS Grid<br/>
         
           8a2a422 6 months ago Janosch Machowinski TraversabilityGridVisualization : Use data from envire::TraversabilityGrid::TRAVERSABILITY band<br/>
         
           63fb19c 6 months ago Janosch Machowinski TraversabilityGrid: Pass all parameters to base class<br/>
         
           da427be 7 months ago Jakob Schwendner grid: serialization only write to layers that actually have data<br/>
         
           c20156e 7 months ago Jakob Schwendner fixed bug in mls cell list handling<br/>
         
           284198e 9 months ago Jakob Schwendner fixed illumination code, works properly now<br/>
         
           7bbb5b7 9 months ago Jakob Schwendner added support for illumination and visibility calculation in elevationgrids<br/>
         
           3c72f76 9 months ago Jakob Schwendner viz: fixed enable functionality for envire viz plugins<br/>
         
           f8286ed 9 months ago Jakob Schwendner tools: env_grid_add_noise optimised for performance<br/>
         
           d7cde88 10 months ago Jakob Schwendner viz: updated initialization order<br/>
         
           a41e515 10 months ago Jakob Schwendner GridFloatToMLS: fixed missing call to unserialize in superclass<br/>
         
           57c1ef9 10 months ago Jakob Schwendner mlsgrid: add workaround to allow unserialization from GridBase<br/>
         
           39efaef 10 months ago Stefan Haase Some smaller changes (documentation, program output, EIGEN_MAKE_ALIGNED_OPERATOR_NEW).<br/>
         
           0c5bdaf 10 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           821c467 10 months ago Jakob Schwendner grids: updated writing GeoTransform information to gdal<br/>
         
           07280f5 10 months ago Jakob Schwendner fixed warning<br/>
         
           fd61a93 10 months ago Jakob Schwendner tools: fixed env_grid_add_noise script to support adding of random noise<br/>
         
           93d955b 10 months ago Jakob Schwendner tools/env_create_grid: fixed offset params<br/>
         
           eecedc4 10 months ago Jakob Schwendner tools: added tool for adding different noise to elevationgrids<br/>
         
           7443577 10 months ago Jakob Schwendner GridBase: added documentation<br/>
         
           ed79837 10 months ago Jakob Schwendner GridBase: Fixed getCenterPoint method to also include the offset parameters<br/>
         
           58637fd 10 months ago Jakob Schwendner removed compiler warning<br/>
         
           c5c06d5 10 months ago Sylvain Joyeux viz: workaround some combinations of moc and boost failing<br/>
         
           24c5e29 10 months ago Thomas Roehr Fix setting of the correct include boost directory.<br/>
         
           51108e9 11 months ago Sylvain Joyeux cleanup the CGAL-specific if/else block in the root CMakeLists.txt<br/>
         
           6083275 11 months ago Sylvain Joyeux do NOT hardcode BOOST_ROOT in the CMake code. Use -DBOOST_ROOT=value when calling CMake<br/>
         
           7bdc1ed 11 months ago Sylvain Joyeux Boost is required by envire itself, move it out of if/else<br/>
         
           ae26bfc 11 months ago Stefan Haase Adds further changes to 'Using-CGAL', because the build-server does not like the current version.<br/>
         
           96b8560 11 months ago Stefan Haase Stops using system boost libraries if cgal is not used.<br/>
         
         </td></tr>
       
       











       <tr class="name" id="slam/odometry">
         <th>slam/odometry</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="52"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_52"><td>
         
           e1fc859 8 weeks ago Jakob Schwendner added optional dependency on gui/vizkit<br/>
         
         </td></tr>
       
       









       <tr class="name" id="slam/orogen/orientation_estimator">
         <th>slam/orogen/orientation_estimator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="53"> 12 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_53"><td>
         
           d828408 4 months ago Javier Hidalgo remove all polluting #defines from header in BaseEstimator<br/>
         
           3eb1a74 4 months ago Javier Hidalgo remove all polluting #defines from header in UKFEstimator<br/>
         
           f28a8d9 4 months ago Javier Hidalgo Changed missing R2D by Angle:rad2Deg in IKFEstimator<br/>
         
           c66ccc1 5 months ago Sylvain Joyeux remove all polluting #defines from headers<br/>
         
           6fa4b2a 10 months ago Javier Hidalgo Carrio correct values for accrw in IKF and print the initial convariance matrices<br/>
         
           8ede9d8 10 months ago Javier Hidalgo Carrio [IKFEstimator]: improved the run ruby script<br/>
         
           a2834ee 10 months ago Javier Hidalgo Carrio local deployments and also test ruby scripts in the corresponding folder<br/>
         
           a76d472 11 months ago Javier Hidalgo Carrio updated yml file for stim300 imu data<br/>
         
           47699b7 11 months ago Javier Hidalgo Carrio gravity value is positive<br/>
         
           ba45aba 11 months ago Javier Hidalgo Carrio added initial pitch and roll from accelerometers mean value in Initialization for static start when not initial orientation is provided<br/>
         
           bebb77c 11 months ago Javier Hidalgo Carrio added stim300 noise parameters in configuration file<br/>
         
           9286260 11 months ago Javier Hidalgo Carrio added script for stim300<br/>
         
         </td></tr>
       
       









       <tr class="name" id="slam/quater_ikf">
         <th>slam/quater_ikf</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="54"> 11 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_54"><td>
         
           6bab4da 3 months ago Matthias Goldhoorn Merge remote-tracking branch 'autobuild/next'<br/>
         
           9e97adf 4 months ago Javier Hidalgo remove the rest of #define that were polluting ikf<br/>
         
           6757411 5 months ago Sylvain Joyeux add build/ to gitignore<br/>
         
           c866789 5 months ago Sylvain Joyeux remove all the #define that were polluting ikf.h<br/>
         
           ab05cee 9 months ago Matthias Goldhoorn Workaround for master version<br/>
         
           f800d44 10 months ago Sylvain Joyeux add missing dependency on base/types<br/>
         
           8584f7a 10 months ago Sylvain Joyeux use CMAKE_PREFIX_PATH to find Rock CMake instead of environment variables<br/>
         
           8b9d22c 11 months ago Javier Hidalgo Carrio unsigned int in r1count<br/>
         
           a490190 11 months ago Javier Hidalgo Carrio Revert "new covariance matrix when acc are connected and magn are not connected, the update does not affect the yaw angle (only pitch and roll)" The Kalman matrix does not takes the adaptability of the approach. Therefore, it is better to remove the last commit This reverts commit 3bee75a6f134369f8afdd42e6f62fec77e690217.<br/>
         
           3bee75a 11 months ago Javier Hidalgo Carrio new covariance matrix when acc are connected and magn are not connected, the update does not affect the yaw angle (only pitch and roll)<br/>
         
           50452fe 1 year, 4 months ago Javier Hidalgo Carrio initial bias variables in Init (this could create unexpected results if the filter is not correctly initialize (bug))<br/>
         
         </td></tr>
       
       



       <tr class="name" id="slam/quater_ukf">
         <th>slam/quater_ukf</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="55"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_55"><td>
         
           afe4263 4 months ago Javier Hidalgo Addapt the Main function to the new class without #define<br/>
         
           b81e136 4 months ago Javier Hidalgo remove the  #define that were polluting ukf<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/log_tools">
         <th>tools/log_tools</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="56"> 4 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_56"><td>
         
           f86412e 3 months ago Alexander Duda add support for converting between numeric types<br/>
         
           d591de8 3 months ago Alexander Duda convert: cleanup selecting streams by name<br/>
         
           f745910 3 months ago Alexander Duda Fixed bug with -s option<br/>
         
           386aa78 3 months ago Alexander Duda exporter: add placeholder time for file names<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="57"> 300 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_57"><td>
         
           d7d38a7 5 weeks ago Sylvain Joyeux conf: allow explicitly providing the model names<br/>
         
           2a67d9b 7 weeks ago Sylvain Joyeux don't forcefully show an error message in a plumbing API<br/>
         
           0c221be 7 weeks ago Sylvain Joyeux test: disconnect data readers and writers *before* killing the processes<br/>
         
           31f5def 7 weeks ago Sylvain Joyeux test: fix initialization of data readers declared in the test case<br/>
         
           df1d5a3 7 weeks ago Sylvain Joyeux fix Orocos.watch for remote tasks (e.g. tasks without processes)<br/>
         
           2febdb7 8 weeks ago Sylvain Joyeux bin: fix --host to avoid a warning<br/>
         
           a7e832a 8 weeks ago Sylvain Joyeux bin: use the recommended way to set the CORBA NS ip in orops<br/>
         
           e208455 3 months ago Alexander Duda Merge branch 'master' into next<br/>
         
           5081d0b 3 months ago Sylvain Joyeux bin: oroconf - display the saved path at the end<br/>
         
           2c0035e 3 months ago Sylvain Joyeux do not warn about non-existing models if getModelName returns an empty string<br/>
         
           1a49833 3 months ago Sylvain Joyeux make sure Orocos.load is not called if Orocos.clear has not been called yet<br/>
         
           bae4e45 3 months ago Alexander Duda TaskContextProxy: fix calling sub ports with out of bound index<br/>
         
           1419955 3 months ago Alexander Duda Async:Ports.on_data: fix reconnect bug if listener was restarted<br/>
         
           3d7f6c2 3 months ago Alexander Duda ObjectBase: support for removing all proxy events for a given obj<br/>
         
           aef65fe 3 months ago Sylvain Joyeux give access to attributes from TaskContextBase#method_missing<br/>
         
           e9f0251 3 months ago Sylvain Joyeux better error message for StateTransitionFailed when the requested transition caused an exception<br/>
         
           04973ac 3 months ago Alexander Duda Revert "Added handling for Dynamic Properties"<br/>
         
           4fd3d12 3 months ago Alexander Dettmann Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb<br/>
         
           5f985cc 3 months ago Alexander Duda Replay: fix loading task name from meta data<br/>
         
           8ae70e9 3 months ago Alexander Duda LogRepaly: delete key "rock_task_name" instead of setting it to nil<br/>
         
           b81017f 3 months ago Alexander Duda LogReplay: fall back to stream name if metadata are invalid<br/>
         
           e37836a 3 months ago Sylvain Joyeux properly set the encoding of all interface object names<br/>
         
           9f6e51e 3 months ago Sylvain Joyeux fix the new bundle support in oroconf<br/>
         
           f302cc6 3 months ago Sylvain Joyeux oroconf: save in config/orogen if within a bundle<br/>
         
           476974a 3 months ago Sylvain Joyeux fix Process.from_pid<br/>
         
           e09a8f4 3 months ago Alexander Duda TaskContext: fix log_all_ports<br/>
         
           7366ed8 4 months ago Sylvain Joyeux dist: change #url= to #urls= as requested by Hoe<br/>
         
           6ed20f3 4 months ago Sylvain Joyeux don't run suite_ros if ROS is not enabled<br/>
         
           2d65a4b 4 months ago Sylvain Joyeux assume, in orocos.rb, that the std typekit is available and loaded<br/>
         
           896aa7b 4 months ago Sylvain Joyeux deregister the CORBA servants after we have disconnected all ports<br/>
         
           049c1fa 4 months ago Sylvain Joyeux Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb<br/>
         
           b65ff77 4 months ago Alexander Duda Async::NameService.proxy (hack): disable showing options<br/>
         
           f99b1af 4 months ago Alexander Duda Log::Replay: fix replaying empty annotation stream<br/>
         
           b1d5546 4 months ago Alexander Duda Async: fix on_port-,on_property-,on_attribute_reachable<br/>
         
           9921dda 4 months ago Alexander Duda Log: fix connect_to deprecation<br/>
         
           b45233e 4 months ago Alexander Duda test/suite.rb: remove require test_orocos<br/>
         
           56af28b 4 months ago Alexander Duda Test: add unit test for dynamic properties<br/>
         
           8086683 4 months ago Alexander Duda Async: fix unit tests<br/>
         
           3a647f6 4 months ago Alexander Duda move dynamic property handling out of AttributeBase to the more RTT-specific part of the code<br/>
         
           a818798 4 months ago Sylvain Joyeux move dynamic property handling out of AttributeBase to the more RTT-specific part of the code<br/>
         
           76c3d68 4 months ago Alexander Duda Replay.seek: call align if it was not called by the user<br/>
         
           218719b 4 months ago Alexander Duda PortsSearchable: set default value(nil) for port_name<br/>
         
           d048736 4 months ago Alexander Duda Replay: fix find_port, find_all_ports<br/>
         
           5037b25 4 months ago Sylvain Joyeux add some functionality to Orocos::Spec<br/>
         
           20e5371 4 months ago Sylvain Joyeux make Orocos.load_typekit thread-safe<br/>
         
           0a9e14f 4 months ago Thomas Roehr Add handling of dynamic configuration content, i.e. allow embedding Ruby into configuration files<br/>
         
           eafae16 4 months ago Sylvain Joyeux added dynamic operation support to orocos.rb<br/>
         
           f82034f 4 months ago Alexander Dettmann Added handling for Dynamic Properties<br/>
         
           a64b324 4 months ago Sylvain Joyeux ros: fix initial state queue<br/>
         
           7945a72 4 months ago Sylvain Joyeux logger: raise if create_log fails<br/>
         
           318256e 4 months ago Sylvain Joyeux raise Orocos::NotFound in TaskContextBaseAbstract port(), attribute() ...<br/>
         
           a5d3b1a 4 months ago Sylvain Joyeux ros: fix spawning and killing a node<br/>
         
           92022e3 4 months ago Sylvain Joyeux ros: fix infinite loop in #wait_running<br/>
         
           3b408ca 4 months ago Sylvain Joyeux ros: define #operation_names<br/>
         
           ffb12eb 4 months ago Sylvain Joyeux ros: fix some issues with a node's orocos.rb name and ros name<br/>
         
           9819f29 4 months ago Sylvain Joyeux ros: better error message if trying to enumerate topics for an unknown node<br/>
         
           76678c4 4 months ago Sylvain Joyeux be compatible with having base types handled by an orogen project<br/>
         
           02fdd51 4 months ago Sylvain Joyeux ros: fix error message if ROS is enabled but the master cannot be contacted<br/>
         
           390bcfa 4 months ago Sylvain Joyeux test: make Orocos::Spec usable even if WORK_DIR is not defined<br/>
         
           fb8225f 4 months ago Jakob Schwendner added alias functionality for local name service<br/>
         
           dbb437d 4 months ago Jakob Schwendner fix has_task? in log/replay<br/>
         
           8f09b26 4 months ago Sylvain Joyeux CleanupServer was called twice in #dispose<br/>
         
           d7bcd98 4 months ago Sylvain Joyeux disconnect the ports when we dispose of a task<br/>
         
           fe1d214 4 months ago Sylvain Joyeux ros: add orogen's default type-to-msg and boxed types mappings to the global rosmap<br/>
         
           a2b2efb 4 months ago Sylvain Joyeux async: fix case when the data reader cannot be created<br/>
         
           5acb9f2 4 months ago Sylvain Joyeux test,ros: make sure we get the ROS node and not the corresponding CORBA task context<br/>
         
           f552818 4 months ago Sylvain Joyeux ros: define Nameservice#==<br/>
         
           91bafda 4 months ago Sylvain Joyeux ros: now that Orocos.clear clears all name services, we must register the ROS name service in .initialize<br/>
         
           6741b39 4 months ago Sylvain Joyeux test,ros: test Node#initialize<br/>
         
           bbb819a 4 months ago Sylvain Joyeux ros: make the default namespace the name service namespace<br/>
         
           0452c2a 4 months ago Sylvain Joyeux doc<br/>
         
           587e63f 4 months ago Sylvain Joyeux ros: #state_queue is not defined, we must access @state_queue first<br/>
         
           73f7d62 4 months ago Sylvain Joyeux ros: remove the parts in Node that are already provided by TaskContextBase<br/>
         
           f6dc32c 4 months ago Sylvain Joyeux ros: make ROS::Nameservice include Namespace<br/>
         
           dc3f90f 4 months ago Sylvain Joyeux add some tests for Namespace<br/>
         
           e0127f6 4 months ago Sylvain Joyeux doc<br/>
         
           908e7c8 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/ros'<br/>
         
           8d865fe 4 months ago Sylvain Joyeux ros: add missing name_mappings file<br/>
         
           1d0faf5 4 months ago Sylvain Joyeux ros: add node start/stop and topic connection functionality<br/>
         
           8ffdbc0 4 months ago Alexander Duda do_task_context_names: fix return when no tasks are available<br/>
         
           4595215 4 months ago Sylvain Joyeux add the ROS transport as an optional dependency<br/>
         
           fec90c1 4 months ago Sylvain Joyeux better warning in the avahi name service when more than one task with a given name is found<br/>
         
           9163667 4 months ago Sylvain Joyeux log: define #on_change on Log::Property<br/>
         
           40f5798 4 months ago Sylvain Joyeux fix Orocos.log_all_configuration<br/>
         
           dbbc096 4 months ago Sylvain Joyeux log: compute the current annotation hash and expose it to the caller<br/>
         
           5fc766f 4 months ago Sylvain Joyeux log: don't be dependent on Qt being loaded<br/>
         
           5786f7d 4 months ago Sylvain Joyeux log: document #step<br/>
         
           5370d46 4 months ago Sylvain Joyeux log: set the default namespace on Log::Replay to ''<br/>
         
           eb86dfd 4 months ago Sylvain Joyeux log: define on_data(&block) on log ports to match the async API<br/>
         
           9dbf0a0 4 months ago Sylvain Joyeux make the handling of default loggers more straightforward<br/>
         
           2577aa5 4 months ago Sylvain Joyeux Revert "Fixed export of oroconf on newer Ruby Version"<br/>
         
           9d25b09 4 months ago Sylvain Joyeux async: in on_error, call unreachable! only for Orocos::ComError<br/>
         
           9835b62 4 months ago Sylvain Joyeux async: fix name in async tasks<br/>
         
           76fc0e8 4 months ago Sylvain Joyeux do not allow loading orocos/async after Orocos.initialize has been called<br/>
         
           5cc8450 4 months ago Alexander Duda add StateTransitionFailed as known error<br/>
         
           8298ebd 4 months ago Raul Dominguez Fixed typo arrity for arity<br/>
         
           bde61c7 4 months ago Sylvain Joyeux fix deployment_model_from_name to work on deployment-only projects<br/>
         
           a40bc8b 4 months ago Alexander Duda Async::Ports.write: fix arguments for code blocks<br/>
         
           b1be1bb 4 months ago Sylvain Joyeux ros: define #to_proxy on Node<br/>
         
           c01322a 4 months ago Sylvain Joyeux fix memory leak in LocalInputPort#write<br/>
         
           90d2206 4 months ago Sylvain Joyeux update w.r.t. change in typelib about invalidation / memory allocation tracking<br/>
         
           a59551e 4 months ago Sylvain Joyeux test: remove some sleep()<br/>
         
           8c7f817 4 months ago Sylvain Joyeux encode the type with type.name instead of orocos_type_name, it is more normalized<br/>
         
           20656de 4 months ago Sylvain Joyeux uri: use regexes to parse the URIs, and fix handling of namespace-less names<br/>
         
           70bb119 4 months ago Sylvain Joyeux test: remove the nameservice-related tests on Orocos. They are already covered by the NS tests.<br/>
         
           e91fa8a 4 months ago Sylvain Joyeux fix test to avoid duplicate in Nameservice.enable(:CORBA)<br/>
         
           2559eb7 4 months ago Sylvain Joyeux test: use a relative name in URI to make sure we resolve regardless of the global nameservice setup<br/>
         
           45c80d0 4 months ago Sylvain Joyeux test: fix issues with using global objects in tests<br/>
         
           921a76a 4 months ago Sylvain Joyeux async: add sanity check<br/>
         
           1c6df2b 4 months ago Sylvain Joyeux make #map_to_namespace be a noop when #namespace is nil<br/>
         
           cd13aea 4 months ago Sylvain Joyeux there are no reasons for #namespace= to call split_name. Simply validate the given name<br/>
         
           dc40656 4 months ago Sylvain Joyeux NameServiceBase#name_services should really not raise if no services are registered<br/>
         
           dd2e3d1 4 months ago Sylvain Joyeux async: clear all task context proxies in name_service#clear, and call it from Orocos.clear<br/>
         
           05ffe69 4 months ago Sylvain Joyeux async: remove some unneeded explicit references to CORBA<br/>
         
           caece95 4 months ago Sylvain Joyeux ros: remove nonsensical line that was probably a debugging thing<br/>
         
           7969b67 4 months ago Sylvain Joyeux ros: get the new_update_time after we accessed the ROS master<br/>
         
           b96eb91 4 months ago Sylvain Joyeux test: typelib's raw_* access methods always return Type instances now, update test<br/>
         
           1baabb8 4 months ago Sylvain Joyeux ros: fix test, ROS publish/subscribe mechanism is asynchronous, we need to sleep()<br/>
         
           b6accde 4 months ago Sylvain Joyeux async: improve tests for property and attribute's on_change event<br/>
         
           b0cab48 4 months ago Sylvain Joyeux async: fix passing the async options (such as 'period') along the layers<br/>
         
           02ed9b1 4 months ago Sylvain Joyeux conf: replace the deprecated raw_get_field by raw_get<br/>
         
           0ef78ae 4 months ago Sylvain Joyeux async: remove as many sleep() calls as possible in tests<br/>
         
           addca0c 4 months ago Sylvain Joyeux async: set all default periods to 0 in tests<br/>
         
           51ea4a9 4 months ago Sylvain Joyeux async: deregister all task context proxies on .clear<br/>
         
           7b31bc4 4 months ago Sylvain Joyeux ros: implement the connection API, reusing the new port base modules<br/>
         
           b5245d4 4 months ago Sylvain Joyeux ros: add some of the model-related API to Node<br/>
         
           43e9d08 4 months ago Sylvain Joyeux test: add some tests that were missing in the suite* files<br/>
         
           ca2590a 4 months ago Sylvain Joyeux test: add a sanity check<br/>
         
           815c466 4 months ago Sylvain Joyeux test: .ior is only available on the CORBA name services<br/>
         
           4eba1e0 4 months ago Sylvain Joyeux ros,test: make the tests more robust by using .steps<br/>
         
           5e0ed0f 4 months ago Sylvain Joyeux move the generic port code into a separate module, and make the connection API more flexible<br/>
         
           1b17f2f 4 months ago Sylvain Joyeux make Local namespace-less<br/>
         
           1be7835 5 months ago Sylvain Joyeux ros: add some missing APIs to handle topics more nicely<br/>
         
           7de80d7 5 months ago Sylvain Joyeux call do_read under Typelib.handle_invalidation<br/>
         
           1018439 5 months ago Sylvain Joyeux fix #load_typekit_for for types that are both handled by an orogen-generated typekit and RTT<br/>
         
           72e15bb 5 months ago Sylvain Joyeux async: style fix<br/>
         
           b0eaf75 5 months ago Sylvain Joyeux in Log::TaskContext#to_ruby_task_context, call #create_output_port with the type object<br/>
         
           faf2766 5 months ago Sylvain Joyeux in RubyTaskContext#create_port, load the typekit before and after the type is resolved<br/>
         
           f82d306 5 months ago Sylvain Joyeux allow load_typekit_for to be called with a core RTT type<br/>
         
           f35ade1 5 months ago Sylvain Joyeux ros: move the ROS' at_exit block in ROS.initialize<br/>
         
           6e8ad27 5 months ago Sylvain Joyeux add some progress info messages<br/>
         
           e7003a6 5 months ago Sylvain Joyeux extend the process server API to properly handle starting the same deployment under different names<br/>
         
           8984215 5 months ago Sylvain Joyeux move registry export in a separate method<br/>
         
           20ac263 5 months ago Sylvain Joyeux rework the parsing of Orocos.run arguments to make it reusable in syskit<br/>
         
           0727dda 5 months ago aduda Async::Port call asynchronously disconnect on global reader<br/>
         
           2b6a1ab 5 months ago Sylvain Joyeux ros: implement Topic#disconnect_from(port)<br/>
         
           5341b9e 5 months ago Sylvain Joyeux async: in OutputPort, disconnect the global reader when there are no listeners left<br/>
         
           babfeb2 5 months ago Sylvain Joyeux async: in OutputPort#on_data, send the last sample to the new listener right away<br/>
         
           1cc6d9c 5 months ago Sylvain Joyeux async: not all proxied objects are proxying all events<br/>
         
           abdd70f 5 months ago Sylvain Joyeux async: do not enable proxied listeners with #really_add_listener<br/>
         
           5177bc2 5 months ago Sylvain Joyeux fix remove_stream<br/>
         
           c2a8715 5 months ago Sylvain Joyeux ros: fix behaviour of Node#states<br/>
         
           2ba6333 5 months ago Sylvain Joyeux async: cleanup use of number_of_listeners to enable/disable timers<br/>
         
           4e14ce4 5 months ago Sylvain Joyeux ros: remove debugging output<br/>
         
           41ccf68 5 months ago Sylvain Joyeux ros: add async and proxy methods to the topic classes<br/>
         
           266cf8e 5 months ago Sylvain Joyeux ros: improve compatibility to TaskContext<br/>
         
           5018906 5 months ago Sylvain Joyeux ros: fix return value of #wait_for_update<br/>
         
           be36ab0 5 months ago Sylvain Joyeux async: make logic (arguably) clearer in OutputPort#add_listener<br/>
         
           ddbdb63 5 months ago Sylvain Joyeux async: make the port / reader / writer implementation non-corba specific<br/>
         
           6b5f3f9 5 months ago Sylvain Joyeux async: do not emit events in NameService#add_listener, simply call the listeners<br/>
         
           9db804b 5 months ago Sylvain Joyeux async: improve interaction between #add_listener and #remove_listener<br/>
         
           0d79924 5 months ago Sylvain Joyeux ros: add some APIs needed to be taskcontext-compatible, start the async API<br/>
         
           7d89d48 5 months ago Sylvain Joyeux ros: remove debugging output<br/>
         
           e84cba9 5 months ago Sylvain Joyeux ros: in #find_*_port, accept both the local name and global topic name<br/>
         
           26273c6 5 months ago Sylvain Joyeux ros: improve error message<br/>
         
           68b30eb 5 months ago Sylvain Joyeux async: in TaskContextProxy's resolve timer, only ignore NotFound and ComError<br/>
         
           4d81b0d 5 months ago Sylvain Joyeux async: move more code from Async::CORBA::TaskContext to Async::TaskContextBase<br/>
         
           8257708 5 months ago Sylvain Joyeux ros: improve behaviour w.r.t. the asynchronous nature of the ROS graph update<br/>
         
           05cf613 5 months ago Sylvain Joyeux ros: include the pure service providers in the ros graph information<br/>
         
           eeb2a97 5 months ago Sylvain Joyeux rake: integrate the ROS transport<br/>
         
           e024849 5 months ago Sylvain Joyeux ros: fake reinitialization of the ROS layer in Orocos.initialize<br/>
         
           da9954d 5 months ago Sylvain Joyeux add missing files for the ros_test test oroGen project<br/>
         
           1aa27c9 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           1f93645 5 months ago Sylvain Joyeux test: minor fix<br/>
         
           989920e 5 months ago Sylvain Joyeux async: fix Async::TaskContextBase#name when no name is known<br/>
         
           ad07e16 5 months ago Sylvain Joyeux async: keep backward compatibility with the previous signature of Async::TaskContext#initialize<br/>
         
           e4744ee 5 months ago Sylvain Joyeux async: the async-version of Local::NameService should not raise NotFound if a callback is given<br/>
         
           02db794 5 months ago Sylvain Joyeux async: remove debugging output<br/>
         
           f34b891 5 months ago Sylvain Joyeux base: add all name services registered on Orocos.name_service to the async equivalent<br/>
         
           7e10dba 5 months ago Sylvain Joyeux test: load pry when available<br/>
         
           694c7de 5 months ago Sylvain Joyeux add .yardoc to the gitignore<br/>
         
           5bf5af5 5 months ago Sylvain Joyeux async: add notification events when name services are added and removed from Async::NameService<br/>
         
           b3a1ee3 5 months ago Sylvain Joyeux async: refactor code to make the remote access async code CORBA-independent<br/>
         
           84e8999 5 months ago Sylvain Joyeux ros: use our own thread poll instead of using the async's global one<br/>
         
           3026507 5 months ago Sylvain Joyeux async: make #default_period inherit the value from parent classes<br/>
         
           c7f884a 5 months ago Alexander Duda fix Log::TaskContext.to_async<br/>
         
           f64360e 5 months ago Sylvain Joyeux ros: poll the whole ROS graph periodically<br/>
         
           9d629f1 5 months ago Sylvain Joyeux test: add unit tests for ROS integration<br/>
         
           a8f91d2 5 months ago Alexander Duda TaskContext: add getter for operation names<br/>
         
           c929aad 5 months ago Alexander Duda Async::Local::NameService: remove limitation for only storing Log::Tasks<br/>
         
           40e8b1f 5 months ago Allan E. Conquest name_service: small bugfix: added missing '&' in each_task<br/>
         
           2052681 6 months ago Alexander Duda Async::LogTaskContext add to_ruby_task_context<br/>
         
           9b02602 6 months ago Alexander Duda add each_property,port,attribute to Async TaskContext<br/>
         
           03b5dcd 6 months ago Alexander Duda fix multi threading issue which occurred when a port/property went offline<br/>
         
           17cf537 6 months ago Matthias Goldhoorn Fixed export of oroconf on newer Ruby Version<br/>
         
           2ae97b7 6 months ago Alexander Duda add to_async,to_proxy to Async::Log<br/>
         
           5e4cb58 6 months ago Alexander Duda LogReplay: fix to_proxy<br/>
         
           24fc30a 6 months ago Alexander Duda Async: Fix subport of a subport<br/>
         
           c0bdb7e 6 months ago Alexander Duda Async: stability fix<br/>
         
           64ca449 6 months ago Alexander Duda TaskContextProxy: fix reconnect when no name_space is given<br/>
         
           8356dd8 6 months ago Alexander Duda Corba::Async::NameService: fix reconnect logic<br/>
         
           01df710 6 months ago Alexander Duda fix multi threading issue<br/>
         
           c9fab8a 6 months ago Alexander Duda Async error report: do not access methods which might be unavailable<br/>
         
           78470c2 6 months ago Alexander Duda Async: rescue Orocos::ComError during property access<br/>
         
           629c41a 6 months ago Alexander Duda Orocos::Log: fix on_reachable was called twice<br/>
         
           b3b66af 6 months ago Alexander Duda Log::Replay. properties were not marked as replayed<br/>
         
           2a96809 6 months ago Raul Dominguez log: fix mismatch between the order of streams in Log::Replay and in Pocolog::StreamAligner<br/>
         
           2f82665 6 months ago Alexander Duda SubPortProxy: fix initializing sup port type<br/>
         
           75d5322 6 months ago Alexander Duda Async: Fix some multi-threading issues<br/>
         
           aecf392 6 months ago Alexander Duda Async: catch some more exception types.<br/>
         
           a434a84 6 months ago Alexander Duda Log::OutputPort: add reader for current_data<br/>
         
           7d55c97 6 months ago aduda Async::Port.write: implement double write during initialization<br/>
         
           3fb9610 6 months ago Alexander Duda Async Objects: fix on_reachable was called twice<br/>
         
           6634021 6 months ago Alexander Duda ruby1.8 fix<br/>
         
           79c2247 6 months ago Alexander Duda fix unit test name services<br/>
         
           755ca39 6 months ago Alexander Duda add default corba name services only if Orocos is initialized<br/>
         
           23833f1 6 months ago Alexander Duda Local NameService: support for n name spaces<br/>
         
           f7a7740 6 months ago Alexander Duda Log::Replay: register tasks after loading<br/>
         
           86fc60d 6 months ago Alexander Duda add to_async to TaskContext and Port<br/>
         
           4af9dff 6 months ago Alexander Duda Async::Local: fix get<br/>
         
           5f14f87 6 months ago Alexander Duda log:task_context: do not announce ports.. which are are not tracked<br/>
         
           ebf9271 6 months ago Alexander Duda name_service: do not add name_services which are already added<br/>
         
           78dcb48 6 months ago Alexander Duda Async::PortProxy,PropertyProxy: event unreachable was not emitted<br/>
         
           e9d625f 6 months ago Alexander Duda add event method once_on_EVENT to all Async Objects<br/>
         
           7c9a4f2 6 months ago Alexander Duda EventListener:  add flag use_last_value<br/>
         
           b250373 6 months ago Alexander Duda async: add support for last_sample to ports and attributes<br/>
         
           c4bc5a2 7 months ago Alexander Duda CORBA.name_service cleanup<br/>
         
           b340349 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into async<br/>
         
           f4705e9 7 months ago Alexander Duda URI: escape hash values<br/>
         
           52c200c 7 months ago Alexander Duda Asynx:NameService: fix namespace<br/>
         
           1ea7135 7 months ago Alexander Duda fix some unit tests<br/>
         
           bc9315c 7 months ago Alexander Duda CORBA.name_service: always use ip as namespace<br/>
         
           2309d02 7 months ago Alexander Duda NameService: add accessor Orocos.get<br/>
         
           bb0ef77 7 months ago Alexander Duda async fix typo<br/>
         
           569c743 7 months ago Alexander Duda TaskContextProxy: allow normal types and m types as type option<br/>
         
           9bb40f0 7 months ago Alexander Duda async::TaskContext set proper ior during initialization<br/>
         
           b0b3696 7 months ago Sylvain Joyeux properly load the relevant typekits when creating interface elements on a RubyTaskContext<br/>
         
           1f668aa 7 months ago Sylvain Joyeux fix #alive? returning false in a spawned RubyDeployment<br/>
         
           c4747dd 7 months ago Alexander Duda Uri: rescue type loading errors<br/>
         
           08d9da2 7 months ago Alexander Duda URI: fix decoding of tasks with no namespace<br/>
         
           5478715 7 months ago Alexander Duda async: fix name_service for log tasks<br/>
         
           9d6bafc 7 months ago Alexander Duda TaskContextProxy: improved options check<br/>
         
           4d8dcd2 7 months ago Alexander Duda TaskContextProxy: fix type option<br/>
         
           49d28ea 7 months ago Alexander Duda Log::Replay: properties can now be tracked<br/>
         
           de86392 7 months ago Alexander Duda add URI class + unit tests<br/>
         
           bc8f932 7 months ago Alexander Duda TaskContextProxy: asynchronously call reachable!<br/>
         
           61f1535 7 months ago Alexander Duda TaskContextProxy.port: add support for resolving sub ports<br/>
         
           3f32d23 7 months ago Alexander Duda ProxyPort: encode sub fields into the port name<br/>
         
           8070dd3 7 months ago Alexander Duda ProxyPort: return TaskContextProxy if .task is called<br/>
         
           2da3e87 7 months ago Alexander Duda async:name_service: improve comparing options<br/>
         
           d7511e6 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into async<br/>
         
           f61f4f0 7 months ago Sylvain Joyeux test: make the #new_ruby_task_context helper accept a block to define the task's interface<br/>
         
           a3ab4fc 7 months ago Sylvain Joyeux test: shut up some of the constant-redefinition errors<br/>
         
           c22b291 7 months ago Sylvain Joyeux ruby_tasks: make #dispose actually deregister the CORBA servant<br/>
         
           d04b4b0 7 months ago Sylvain Joyeux better error message<br/>
         
           db72bfc 7 months ago Sylvain Joyeux no need anymore to juggle with the master project's define_dummy_type predicate when loading single orogen files<br/>
         
           27d6d04 7 months ago Alexander Duda replay: raise if all replayed streams are empty<br/>
         
           ce9ae8a 7 months ago Sylvain Joyeux make Log::TaskContext#property_names return a set of names, not property objects<br/>
         
           e37a5be 7 months ago Sylvain Joyeux fix typos<br/>
         
           45325c8 7 months ago sempromuser async: add small sanity check<br/>
         
           bf3fc6f 7 months ago sempromuser async: defer ComError when connecting ports<br/>
         
           913db93 7 months ago sempromuser add :type in the list of forwarded methods as Ruby 1.8 defines it but we do need to forward<br/>
         
           185bb35 7 months ago sempromuser async fix for 1.8<br/>
         
           696b816 7 months ago sempromuser fixes for async on 1.8<br/>
         
           8391fa2 7 months ago Sylvain Joyeux do not rescue comerror in #peek_state<br/>
         
           8646409 7 months ago Thomas Roehr Load typekits for known, but yet unregistered types<br/>
         
           076f1ad 7 months ago Thomas Roehr Add warnings when CORBA communication has errors<br/>
         
           0ebee44 7 months ago Alexander Duda async property: add support to change policy with on_change<br/>
         
           f1e75b3 7 months ago Alexander Duda Async::ports.writer: fix error handling<br/>
         
           8dbcfc5 7 months ago Alexander Duda Async::ports.reader: fix error handling<br/>
         
           76f8f0d 7 months ago Alexander Duda fix unit test<br/>
         
           eddc223 7 months ago Alexander Duda async: TaskContextProxy use Timer to do the reconnect<br/>
         
           f36ef56 7 months ago Alexander Duda refine_exception for validate name service<br/>
         
           4748bfb 7 months ago Thomas Roehr async: use full namespaces in forward methods to avoid problems with ruby1.9.1<br/>
         
           1743646 7 months ago Alexander Duda async: fix namespace (ruby 1.8) is complaining<br/>
         
           9a57ab2 7 months ago Alexander Duda async: compatibility fix for ruby1.8<br/>
         
           7cd1501 7 months ago Alexander Duda async TaskContextProxy: bugfix port,attribute,property does not exist<br/>
         
           aaf0e1d 7 months ago Alexander Duda async:LogTask: fix typo + method signature<br/>
         
           e5e57f2 7 months ago Alexander Duda CORBA.name_service: fix name<br/>
         
           e2f5a6c 7 months ago Alexander Duda async: add basic write functionality to InputPorts<br/>
         
           3448ac9 7 months ago Alexander Duda TaskContextBase: ensure_type for type_name<br/>
         
           720d5df 7 months ago Alexander Duda async: some small bug-fixes related to error and policy propagation<br/>
         
           d8e4947 7 months ago Sylvain Joyeux fix #typelib_type_for for basic types<br/>
         
           75fbfbf 7 months ago Sylvain Joyeux ruby_task: in create_* methods, normalize the given type to the actual orocos type name<br/>
         
           8ab9fcf 7 months ago Sylvain Joyeux async: fix typos<br/>
         
           e25d1fb 7 months ago Alexander Duda async: add task name to timer.doc<br/>
         
           b8e8b4e 7 months ago Sylvain Joyeux async: in Port#unreachable!, global_reader does not respond to unreachable! if on_data has not yet been called<br/>
         
           f7c6664 7 months ago Sylvain Joyeux deprecate #type_name in favor of type.name<br/>
         
           7a436b9 7 months ago Sylvain Joyeux support accessing tasks for which some types are unknown locally<br/>
         
           7c2ef85 7 months ago Alexander Duda async: fix policy propagation<br/>
         
           dc49117 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/syskit' into async<br/>
         
           c66734b 7 months ago Sylvain Joyeux add methods on Orocos to load deployment and deployed tasks by name<br/>
         
           908a476 7 months ago Alexander Duda TaskContext.model: generate a default model if the remote task has none<br/>
         
           86b22ed 7 months ago Alexander Duda corba name_service: auto reset on error<br/>
         
           dba01ac 7 months ago Alexander Duda Log::TaskContext inherits from TaskContextBase / add support for async<br/>
         
           3ba53e2 7 months ago Alexander Duda all Async objects inherit from Async::ObjectBase<br/>
         
           e9b450b 8 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into syskit<br/>
         
           624a433 8 months ago Sylvain Joyeux create RubyProcessServer<br/>
         
           812956b 8 months ago Sylvain Joyeux major cleanup of Process and ProcessServer support<br/>
         
           c2b0350 8 months ago Sylvain Joyeux give LocalTask a getModelName operation (as all oroGen-generated tasks)<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="58"> 10 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_58"><td>
         
           c59104f 4 months ago Alexander Duda StreamAlinger: fix division by zero in the case of small log files<br/>
         
           6f735e4 4 months ago Alexander Duda StreamAlinger: fix2 RBTree vs MultiRBTree<br/>
         
           2de7ac2 4 months ago Alexander Duda StreamAlinger: fix RBTree vs MultiRBTree<br/>
         
           eab7391 4 months ago Alexander Duda DataReader: improve error message<br/>
         
           cc6112a 4 months ago Sylvain Joyeux remove priority queue completely, it has been replaced by rbtree<br/>
         
           1bd7937 4 months ago Thomas Roehr Add rbtree dependency<br/>
         
           5a593e9 4 months ago Sylvain Joyeux replace PriorityQueue by rbtree in the stream aligner index<br/>
         
           7e1b237 4 months ago Sylvain Joyeux speedup index writing and reading<br/>
         
           bd06b9b 4 months ago Sylvain Joyeux pre-read all data from the index and give it to Marshal.load<br/>
         
           3f46fc6 4 months ago Alexander Duda File: do not raise if log file is corrupted<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="59"> 114 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_59"><td>
         
           1cc9bd7 6 weeks ago Sylvain Joyeux core: in #clear, make sure we don't finalize running tasks<br/>
         
           7029a98 6 weeks ago Sylvain Joyeux core: overloading #new_submodel does not play well with model reloading. Overload #setup_submodel instead<br/>
         
           e4caecf 7 weeks ago Sylvain Joyeux app: in #require, do not fall back to absolute if relative failed<br/>
         
           5236c6c 7 weeks ago Thomas Roehr Reuse existing options parsing and select ',' as separation character for --robot argument.<br/>
         
           c14a5a3 7 weeks ago Thomas Roehr Remove obsolete Scripts<br/>
         
           22a6cad 7 weeks ago Sylvain Joyeux fix the roby add-robot command<br/>
         
           be2a78d 2 months ago Sylvain Joyeux make the UI dependencies optional<br/>
         
           e6005f0 3 months ago Thomas Roehr Merge branch 'next' into master-fixed<br/>
         
           a22febe 3 months ago Sylvain Joyeux update $LOAD_PATH from search_path *after* plugins and config/init.rb got loaded<br/>
         
           3cd5649 3 months ago Sylvain Joyeux app: don't try loading locally a file that could not get resolved using search_path<br/>
         
           5266e47 3 months ago Sylvain Joyeux app: add filter_backtraces in the app.yml template, reorganize the template<br/>
         
           8de8a40 3 months ago Sylvain Joyeux core: bunch of improvements in error message generation<br/>
         
           f94fa85 3 months ago Sylvain Joyeux app: add a hook at the end of require_models<br/>
         
           36af6b2 3 months ago Sylvain Joyeux planning: remove tests for the reuse functionality<br/>
         
           139ebd4 3 months ago Sylvain Joyeux test: removing annoying puts from unit test<br/>
         
           d015113 3 months ago Sylvain Joyeux test: disable the testcase test, it is unused and virtually un-maintained<br/>
         
           d860feb 3 months ago Sylvain Joyeux core: refactor relationship between Task#fullfills? and Task#can_merge?<br/>
         
           dae8b47 4 months ago Sylvain Joyeux doc: add context and event arguments to command and handler blocks<br/>
         
           1894512 4 months ago Sylvain Joyeux core: fix for calling polling in the start event<br/>
         
           4c91598 4 months ago Sylvain Joyeux core: ensure that poll blocks are called after all start events, in the same cycle as the start events<br/>
         
           6bfb741 4 months ago Sylvain Joyeux core: integrate once blocks and disabled blocks in the common PollBlockDefinition API<br/>
         
           6bec5a7 4 months ago Sylvain Joyeux app: in run, register any files given on the command line as additional models<br/>
         
           cb21a71 4 months ago Sylvain Joyeux app: call a load_base_config hook from #load_base_config<br/>
         
           1b187de 4 months ago Sylvain Joyeux app: #reset and #cleanup are doubling-up. Remove #reset<br/>
         
           b7c55f7 4 months ago Sylvain Joyeux app: document the setup procedure as well as the position of the plugin hooks<br/>
         
           57d54c3 4 months ago Sylvain Joyeux core: modify behaviour of #can_merge?<br/>
         
           85353eb 4 months ago Sylvain Joyeux actions: allow various action models to decide which action instance class should be generated<br/>
         
           0ff6aea 4 months ago Sylvain Joyeux gui: quit as soon as the history widget is closed<br/>
         
           39aba9c 4 months ago Sylvain Joyeux gui: be robust to unavailable displays / plugins<br/>
         
           9a4cf07 4 months ago Sylvain Joyeux gui: add missing connections to display info and warn messages<br/>
         
           b789605 4 months ago Sylvain Joyeux gui: reenable live display on the chronicle<br/>
         
           473b3df 4 months ago Sylvain Joyeux gui: rename the common 'update' slot to 'setCurrentTime'<br/>
         
           483cfd2 4 months ago Sylvain Joyeux gui: don't try to layout tasks that are hidden<br/>
         
           3eee580 4 months ago Sylvain Joyeux app: allow specifying extra model files that should be loaded and reloaded<br/>
         
           248bf1a 4 months ago Sylvain Joyeux gui: use dot_id from syskit, which is self-contained<br/>
         
           da88ba4 4 months ago Sylvain Joyeux gui: improve the layouting for events and tasks<br/>
         
           014d359 4 months ago Sylvain Joyeux gui: create a task-display object compatible with MetaRuby::Page<br/>
         
           a31a4a0 4 months ago Sylvain Joyeux core: improve error message in Plan#finalize_object for objects that are already finalized<br/>
         
           fd7c96c 4 months ago Sylvain Joyeux log: in ReplayPlan, rename garbage into garbaged_objects to avoid a name clash with Plan#garbage<br/>
         
           6c7d0be 4 months ago Sylvain Joyeux gui: only warn if a logfile mentions a plugin that cannot be loaded<br/>
         
           d329535 4 months ago Sylvain Joyeux gui: use dot to layout events in the tasks<br/>
         
           92f2ce1 4 months ago Sylvain Joyeux roby: implement a way to generate a SVG to display single tasks<br/>
         
           3d2db68 4 months ago Sylvain Joyeux doc: improvements<br/>
         
           072e74e 4 months ago Sylvain Joyeux droby: add missing "remote_name" method on Roby::Distributed<br/>
         
           62b8e4a 5 months ago Sylvain Joyeux test: require some files that were missing in suite_actions<br/>
         
           694cebb 5 months ago Sylvain Joyeux actions: fix the state machine implementation after the migration to ExecutionContextModel<br/>
         
           6325de6 5 months ago Sylvain Joyeux actions: better error message<br/>
         
           58b5719 5 months ago Sylvain Joyeux actions: define #to_s on the action objects<br/>
         
           50dabef 5 months ago Sylvain Joyeux core: migrate task scripting to Actions::ExecutionContextModel<br/>
         
           49a5103 5 months ago Sylvain Joyeux actions: factor common execution / coordination model code in a separate class<br/>
         
           4334b5e 5 months ago Sylvain Joyeux core: cleanup the task state machine implementation, and remove global holder<br/>
         
           63476fc 5 months ago Sylvain Joyeux app: make sure Interface calls super() in #method_missing if the called name is not an action<br/>
         
           2cb1c48 5 months ago Sylvain Joyeux fixed some issues with objects being kept alive, mostly test-related<br/>
         
           3050505 5 months ago Sylvain Joyeux app: never ignore Interrupt when app.ignore_all_load_errors is set<br/>
         
           6c394b0 5 months ago Sylvain Joyeux core: continue splitting-up task.rb into separate files<br/>
         
           5fa9a82 5 months ago Sylvain Joyeux actions: fix #state(#instanciate)<br/>
         
           c0086d5 5 months ago Sylvain Joyeux app: fix wrong insertion order of search_path to $LOAD_PATH<br/>
         
           324e78b 6 months ago Sylvain Joyeux make #execute raise ExecutionQuitError if the control thread is not running<br/>
         
           a225692 6 months ago Sylvain Joyeux test: Interface#actions now marshalls its results using droby, unmarshal in tests<br/>
         
           88e3503 6 months ago Sylvain Joyeux test: fix overriding #plan and #engine in SelfTest<br/>
         
           8dfbe58 6 months ago Sylvain Joyeux test: fix teardown when plan.engine == nil<br/>
         
           265a7ae 6 months ago Sylvain Joyeux test: put the engine in quit mode in #teardown_plan<br/>
         
           6d1404a 6 months ago Sylvain Joyeux test: fix disabling of the scheduler in teardown<br/>
         
           21efc91 6 months ago Sylvain Joyeux run the GC early when quitting? is true<br/>
         
           43edb24 6 months ago Sylvain Joyeux fix DependencyGraphClass.merge_dependency_options wrongfully adding :success and/or :failure entries<br/>
         
           9147624 6 months ago Sylvain Joyeux test: disable plugins in SelfTest<br/>
         
           351570c 6 months ago Jens Renken shell: fix job management on tasks that have failed to be planned<br/>
         
           62ca8f3 6 months ago Matthias Goldhoorn robot: in action_from_name and action_from_type, allow the same planner model/action model to be resolved multiple times<br/>
         
           1366247 6 months ago SeekurJr define Action#returned_type<br/>
         
           58852f2 7 months ago sempromuser fix ruby 1.8 compatibility problem<br/>
         
           44c9641 7 months ago Sylvain Joyeux doc: fix some wrong div classes<br/>
         
           78068fa 7 months ago Sylvain Joyeux app: globally handle the Interrupt exception in roby display server<br/>
         
           ef2b3f3 7 months ago Sylvain Joyeux app: reenable using templates from plugins in roby init<br/>
         
           543884e 7 months ago Sylvain Joyeux app: don't reset the engine unnecessarily<br/>
         
           d42e87f 7 months ago Sylvain Joyeux in Robot.action_from_name, list the available actions if the provided name does not match<br/>
         
           7ccb918 7 months ago Sylvain Joyeux app: simply ignore entries in ROBY_PLUGIN_PATH that are neither file nor directory<br/>
         
           3a9a961 7 months ago Sylvain Joyeux Merge branch 'master' of git://gitorious.org/rock-toolchain/roby<br/>
         
           157d035 7 months ago Sylvain Joyeux actions: normalize the names of all registered actions to string<br/>
         
           68e9bee 7 months ago Sylvain Joyeux actions: force all states to be defined with #state<br/>
         
           c8aab2f 7 months ago Sylvain Joyeux doc: rename #make to #state<br/>
         
           29e2be8 7 months ago Sylvain Joyeux properly configure kramdown<br/>
         
           a4914b7 7 months ago Sylvain Joyeux log: in PlanRebuilder, add events to history for all generators, not only the task generators<br/>
         
           511d564 7 months ago Sylvain Joyeux doc: better name for the file layout page<br/>
         
           3401f7a 7 months ago Sylvain Joyeux doc: fix some more links<br/>
         
           0758e36 7 months ago Sylvain Joyeux doc: add a file layout page<br/>
         
           9375db3 7 months ago Sylvain Joyeux doc: fix wrong links<br/>
         
           97d4815 7 months ago Sylvain Joyeux yard: remove debugging output in the yard plugin<br/>
         
           497f9be 7 months ago Sylvain Joyeux doc: fix yard errors<br/>
         
           cfa6d0f 7 months ago Sylvain Joyeux doc: fix bad links and add a page about scheduling<br/>
         
           e9aac1b 7 months ago Sylvain Joyeux dist: remove debugging output in Rakefile<br/>
         
           589351f 7 months ago Sylvain Joyeux add missing require_app_dir call in add-robot<br/>
         
           0cb70f4 7 months ago Sylvain Joyeux update the rest of the documentation to the new CLI and action interface<br/>
         
           d7f6d4b 7 months ago Sylvain Joyeux actions: allow for empty state machines<br/>
         
           00def99 7 months ago Sylvain Joyeux actions: fix state machine's return type error if the state machine does not define a return type by default<br/>
         
           258127a 7 months ago Sylvain Joyeux app: fix the issue in the shell that running tasks were shown as DRbObjects<br/>
         
           584bf2d 7 months ago Sylvain Joyeux continue to expand the Roby documentation<br/>
         
           41a26f5 7 months ago Sylvain Joyeux shell: update the shell interface to match what actually exists<br/>
         
           28bd613 7 months ago Sylvain Joyeux shell: update the shell interface to match what actually exists<br/>
         
           6b1de27 7 months ago Sylvain Joyeux updates for the action interface<br/>
         
           8a04468 7 months ago Sylvain Joyeux metaruby's Registration#clear_model now does deregister the models<br/>
         
           eb08965 7 months ago Sylvain Joyeux call metaruby's Registration#clear_model in all overloaded clear_model methods<br/>
         
           f88c796 7 months ago Sylvain Joyeux app: fix scripts/run to load the controller file only if -c is given<br/>
         
           80f2c27 7 months ago Sylvain Joyeux add missing dependency on metaruby<br/>
         
           72c8d5b 7 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           f70128f 7 months ago Sylvain Joyeux stop using the rosdep tag<br/>
         
           89fc6b6 7 months ago Sylvain Joyeux Merge ../../../metaruby/tools/roby<br/>
         
           bc5a081 7 months ago Sylvain Joyeux use the generic model-in-ruby management code from metaruby, originally extracted out of syskit<br/>
         
           47a9821 7 months ago Sylvain Joyeux actions: support basic arithmetic operations on state machine variables<br/>
         
           2a4aabe 7 months ago Sylvain Joyeux actions: in #state_machine, reset @current_description to nil if anything wrong happens<br/>
         
           0277315 7 months ago Sylvain Joyeux actions: fix inverted error messages for no arguments/have arguments<br/>
         
           6a252f0 7 months ago Sylvain Joyeux disable the roby-display server in SelfTest<br/>
         
           94a54cc 7 months ago Sylvain Joyeux actions: extend the state machine definitions<br/>
         
           f09bbbe 7 months ago Sylvain Joyeux execution_agents: make sure we fail starting tasks in pending_execution_agent_failed<br/>
         
           2642708 7 months ago Sylvain Joyeux scripts: fix --robot option in run script<br/>
         
         </td></tr>
       
       













       <tr class="name" id="tutorials/orogen/rock_tutorial">
         <th>tutorials/orogen/rock_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="60"> 1 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_60"><td>
         
           970143e 7 weeks ago Sylvain Joyeux properly fill the source and target frame names in the generated RBS<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tutorials/orogen/tut_deployment">
         <th>tutorials/orogen/tut_deployment</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="61"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_61"><td>
         
           cf1a4d4 7 weeks ago Sylvain Joyeux deploy the tut_sensor::TransformerTask<br/>
         
           6350008 3 months ago Sylvain Joyeux deploy one tut_sensor::Task<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/orogen/tut_follower">
         <th>tutorials/orogen/tut_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="62"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_62"><td>
         
           4c8c102 3 months ago Thomas Roehr Fix manifest<br/>
         
           aaadb4b 3 months ago Sylvain Joyeux make the target-sensing part a separate 'sensor' component<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/orogen/tut_sensor">
         <th>tutorials/orogen/tut_sensor</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="63"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_63"><td>
         
           9cd79db 7 weeks ago Sylvain Joyeux add a transformer-based sensor task<br/>
         
           eb88588 3 months ago Sylvain Joyeux fix generation of bearing-distance values<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tutorials/rock_tutorial">
         <th>tutorials/rock_tutorial</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="64"> 2 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_64"><td>
         
           c4cd50b 5 months ago Felix Rehrmann changed sign for pitch to make the rock rotate so that it looks right<br/>
         
           17a22de 5 months ago Felix Rehrmann removed taskPeriod as it is not used<br/>
         
         </td></tr>
       
       





       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="65"> 51 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_65"><td>
         
           92981e8 2 minutes ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/stable' into next<br/>
         
           9827e43 3 minutes ago Sylvain Joyeux ruby,test: add string handling test<br/>
         
           c68bc42 6 days ago Sylvain Joyeux ruby: properly forward C++ exceptions from addStandardTypes to the ruby side<br/>
         
           a31a19c 9 weeks ago Sylvain Joyeux ruby: fix BaseClassType == BaseTypeClass<br/>
         
           3ae7592 9 weeks ago Sylvain Joyeux fix isValidTypename for templates followed by a comma<br/>
         
           4330f70 10 weeks ago Sylvain Joyeux fix compilation on gcc 4.8<br/>
         
           6e3bdf4 3 months ago Sylvain Joyeux ruby: fix export when a nested type got loaded first, and then the parent type<br/>
         
           0cf1328 4 months ago Sylvain Joyeux fix generation when std::string is present<br/>
         
           2475359 4 months ago Sylvain Joyeux ruby: now that we have the DeepCopyArray class, we must be able to convert it back to typelib containers again<br/>
         
           c819fec 4 months ago Sylvain Joyeux ruby,test: fix test<br/>
         
           98706d9 4 months ago Sylvain Joyeux ruby: fix convertion to ruby of /bool<br/>
         
           f0b42b3 4 months ago Sylvain Joyeux ruby: protect #marshalling_size on all types<br/>
         
           3fac8ac 4 months ago Sylvain Joyeux test,ruby: move the memory management test out of the test suite<br/>
         
           44b38c6 4 months ago Sylvain Joyeux Revert "ruby: fix #== for the base classes (e.g. CompoundType)"<br/>
         
           46263b7 4 months ago Sylvain Joyeux test,ruby: complete the tests for type equality<br/>
         
           5900dea 4 months ago Sylvain Joyeux ruby: define DeepCopyArray to get an array with #dup that behaves like a container<br/>
         
           ccc4c2f 4 months ago Sylvain Joyeux ruby: some micro-optimizations<br/>
         
           6d030c7 4 months ago Sylvain Joyeux ruby: normalize all access to #get #raw_get and #set<br/>
         
           ebd4278 4 months ago Sylvain Joyeux ruby: fix #== for the base classes (e.g. CompoundType)<br/>
         
           c558f27 4 months ago Sylvain Joyeux ruby: in non-raw access, don't generate an intermediate Type instance for basic types (integer, ...)<br/>
         
           3c04be5 4 months ago Sylvain Joyeux ruby: remove typelib_to_ruby as a way to convert a value to Ruby<br/>
         
           dc155ba 4 months ago Sylvain Joyeux ruby: properly set the encoding of the field names in compound types<br/>
         
           8da7fcc 4 months ago Sylvain Joyeux ruby: implement some malloc tracking and GC triggering mechanisms<br/>
         
           be8e511 4 months ago Sylvain Joyeux test,ruby: add some tests for to_ruby/from_ruby handling for basic types<br/>
         
           d8880db 4 months ago Sylvain Joyeux test: minor fix<br/>
         
           9994711 4 months ago Sylvain Joyeux ruby: invalidate the memory zone when we invalidate a typelib value<br/>
         
           007cebe 5 months ago Sylvain Joyeux test,ruby: add new test<br/>
         
           b24a7be 5 months ago Sylvain Joyeux ruby: don't invalidate container's elements if contained_memory_id is nil<br/>
         
           f5f5583 5 months ago Sylvain Joyeux ruby: fix #contained_memory_id for std::vector<br/>
         
           bc279d8 5 months ago Sylvain Joyeux ruby: small improvement<br/>
         
           81d2a1e 5 months ago Sylvain Joyeux ruby: define Path#size<br/>
         
           3bdd132 5 months ago Sylvain Joyeux ruby: in #==, no need to convert self to ruby twice<br/>
         
           a99e926 5 months ago Sylvain Joyeux ruby: handle the fact that some elements in #handle_container_invalidation might be deleted<br/>
         
           cccd0a5 5 months ago Sylvain Joyeux ruby: sort the paths by size in Accessor.find_in_type<br/>
         
           b883a47 5 months ago Sylvain Joyeux ruby: fix Accessor.find_in_type<br/>
         
           3fb241a 5 months ago Sylvain Joyeux ruby: refactor the invalidation handling code to make it generic<br/>
         
           f9217d1 5 months ago Sylvain Joyeux ruby: better fix for #raw_each<br/>
         
           7aa2726 5 months ago Sylvain Joyeux ruby: do not override existing values in @elements in #raw_each<br/>
         
           4d79f4b 5 months ago Sylvain Joyeux ruby: the do_get and typelib_get_field methods always return a typelib value now<br/>
         
           9e74ebc 5 months ago Sylvain Joyeux ruby: guard some methods against invalidation<br/>
         
           94c100a 5 months ago Sylvain Joyeux ruby: fix ContainerType#raw_each<br/>
         
           0c9b0d8 5 months ago Sylvain Joyeux ruby: properly set string encodings when converting to Ruby<br/>
         
           8a777cf 5 months ago Sylvain Joyeux ruby: properly invalidate containers, when needed, in Typelib.copy<br/>
         
           63f4b82 5 months ago Sylvain Joyeux ruby: implement a path API to access fields or set of fields in a type<br/>
         
           5aab75b 5 months ago Sylvain Joyeux ruby: cleanup and improve handling of invalidation during container modification<br/>
         
           57a3476 5 months ago Sylvain Joyeux ruby: silence expected warnings in tests<br/>
         
           39aaf22 5 months ago Sylvain Joyeux ruby: use a proper logger to issue warnings<br/>
         
           1a9f62c 5 months ago Sylvain Joyeux ruby: remove annoying verbose output in test<br/>
         
           5aef2df 5 months ago Sylvain Joyeux ruby: implement a more flexible way to select ruby-side customizations<br/>
         
           8562316 6 months ago Alexander Duda add instance method __typelib_parent to Typelib Types<br/>
         
           fad877c 6 months ago Alexander Duda get_raw always returns Typelib Types<br/>
         
         </td></tr>
       
       





       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="66"> 35 commits</a></td>
         </tr>
         <tr class="from_commits" id="commits_66"><td>
         
           33135c5 7 weeks ago Sylvain Joyeux logger: trigger resetting the children's default logger in Forward#logger=<br/>
         
           f309af2 3 months ago Thomas Roehr Merge branch 'next'<br/>
         
           f85da49 3 months ago Thomas Roehr Convert 'rosdep' dependency statement to 'depend'<br/>
         
           0a554c7 3 months ago Thomas Roehr Fix dependecy list, i.e. remove nokogiri dependency, since it is not used by utilrb and add required gems to ROS Makefile<br/>
         
           cf16f9e 3 months ago Thomas Roehr Fix full_test<br/>
         
           109506e 3 months ago Thomas Roehr Initialize members<br/>
         
           c18e183 3 months ago Thomas Roehr Adapt require in tests (for rake test)<br/>
         
           37c5c1e 3 months ago Thomas Roehr Adapt main default structure to build with hoe and rake-compiler<br/>
         
           13fabc1 3 months ago Alexander Duda EventLoop: prevent adding the same timer twice<br/>
         
           3e94e3c 3 months ago Alexander Duda pkgconfig: fix error message:<br/>
         
           18c91f3 4 months ago Sylvain Joyeux thread_pool: do not simply issue a warning if we cannot add a task in #&lt;&lt;<br/>
         
           b7ba472 4 months ago Sylvain Joyeux thread_pool: define #clear<br/>
         
           c61c966 5 months ago Sylvain Joyeux ruby_object_graph: properly ignore DRbObject<br/>
         
           847281d 5 months ago Sylvain Joyeux ruby_object_graph: be robust to objects whose #to_s method return invalidly-encoded strings<br/>
         
           092b611 5 months ago Sylvain Joyeux ruby_object_graph: add helpers to compute the chains that keep an object alive<br/>
         
           ccaefce 5 months ago Sylvain Joyeux ruby_object_graph: display the link between a class and its ancestors<br/>
         
           e0d0602 5 months ago Sylvain Joyeux ext: display a message if the debugger core source gem is not available<br/>
         
           16d0a65 5 months ago aduda event_loop: test errors against known error with is_a?<br/>
         
           ff3737c 5 months ago Sylvain Joyeux logger: additional tests<br/>
         
           775c626 5 months ago Sylvain Joyeux define Logger#silent<br/>
         
           f777408 5 months ago Sylvain Joyeux thread_pool: better error reporting<br/>
         
           8f9520f 5 months ago Alexander Duda Fix: EventLoop.wait_for was accidentally terminating EventLoop.exec<br/>
         
           3769f58 6 months ago Alexander Duda add some accessor to event_loop and thread_pool<br/>
         
           8117343 6 months ago Alexander Duda EventLoop: fix error handling when callback is not returning a symbol<br/>
         
           ebb1db4 7 months ago Sylvain Joyeux fix linking of the extension on ruby 1.8<br/>
         
           763086d 7 months ago Sylvain Joyeux better warnings when the core sources are not available<br/>
         
           0f86803 7 months ago Sylvain Joyeux use the debugger-ruby_core_source gem to (optionally) get the internal headers needed by the Proc extensions<br/>
         
           68d1d10 7 months ago Sylvain Joyeux fix the Proc extensions on Ruby 1.9.3<br/>
         
           60b89a9 7 months ago Sylvain Joyeux remove debugging output in RubyObjectGraph.dot_snapshot<br/>
         
           afbc1d7 7 months ago Sylvain Joyeux add a threshold to ObjectStats.count_by_class<br/>
         
           ea5e3f6 7 months ago Sylvain Joyeux broke 1.9 while trying to fix 1.8. Proper fix for both versions.<br/>
         
           07ea293 7 months ago Sylvain Joyeux fix for Ruby 1.8<br/>
         
           eca009b 7 months ago Sylvain Joyeux use ruby's malloc and free implementations as allocators in ValueSet<br/>
         
           50d0e2c 7 months ago Sylvain Joyeux define_inherited_enumerable has been renamed to inherited_attribute<br/>
         
           7013886 7 months ago Sylvain Joyeux doc: add the :files option to specify additional, non-code, files<br/>
         
         </td></tr>
       
       


</table>
