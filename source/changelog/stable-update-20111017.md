---
title: "2011-10-19 - Preview"
sort_info: 999
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

    <li>drivers/orogen/aggregator</li>

    <li>eigen3</li>

    <li>external/cminpack</li>

    <li>external/opencv</li>

    <li>image_processing/libelas</li>

    <li>planning/vfh_star</li>

    <li>slam/flann</li>

    <li>slam/pcl</li>

    <li>tools/service_discovery</li>

</ul>




<h1>Package updates</h1>
<p>1619 new commits in 40 packages<br/>
Affected packages: 
  <a href="#base/orogen/types">base/orogen/types</a>

  <a href="#base/scripts">base/scripts</a>

  <a href="#base/templates/cmake_lib">base/templates/cmake_lib</a>

  <a href="#base/templates/cmake_vizkit_widget">base/templates/cmake_vizkit_widget</a>

  <a href="#base/templates/vizkit">base/templates/vizkit</a>

  <a href="#base/types">base/types</a>

  <a href="#base/types_ruby">base/types_ruby</a>

  <a href="#control/motor_controller">control/motor_controller</a>

  <a href="#control/orogen/skid4_control">control/orogen/skid4_control</a>

  <a href="#control/orogen/trajectory_follower">control/orogen/trajectory_follower</a>

  <a href="#control/trajectory_follower">control/trajectory_follower</a>

  <a href="#drivers/aggregator">drivers/aggregator</a>

  <a href="#drivers/controldev">drivers/controldev</a>

  <a href="#drivers/mb500">drivers/mb500</a>

  <a href="#drivers/orogen/camera_base">drivers/orogen/camera_base</a>

  <a href="#drivers/orogen/camera_prosilica">drivers/orogen/camera_prosilica</a>

  <a href="#drivers/orogen/canbus">drivers/orogen/canbus</a>

  <a href="#drivers/orogen/controldev">drivers/orogen/controldev</a>

  <a href="#drivers/orogen/dynamixel">drivers/orogen/dynamixel</a>

  <a href="#drivers/orogen/gps">drivers/orogen/gps</a>

  <a href="#drivers/orogen/hokuyo">drivers/orogen/hokuyo</a>

  <a href="#drivers/orogen/xsens_imu">drivers/orogen/xsens_imu</a>

  <a href="#drivers/transformer">drivers/transformer</a>

  <a href="#drivers/xsens_imu">drivers/xsens_imu</a>

  <a href="#external/libply">external/libply</a>

  <a href="#gui/rock_widget_collection">gui/rock_widget_collection</a>

  <a href="#gui/vizkit">gui/vizkit</a>

  <a href="#image_processing/orogen/image_preprocessing">image_processing/orogen/image_preprocessing</a>

  <a href="#orogen">orogen</a>

  <a href="#planning/corridor_planner">planning/corridor_planner</a>

  <a href="#planning/nav_graph_search">planning/nav_graph_search</a>

  <a href="#planning/orogen/corridor_planner">planning/orogen/corridor_planner</a>

  <a href="#rtt">rtt</a>

  <a href="#slam/envire">slam/envire</a>

  <a href="#tools/orocos.rb">tools/orocos.rb</a>

  <a href="#tools/pocolog">tools/pocolog</a>

  <a href="#tools/roby">tools/roby</a>

  <a href="#typelib">typelib</a>

  <a href="#utilmm">utilmm</a>

  <a href="#utilrb">utilrb</a>
</p>


<table class="package_status">


       <tr class="name" id="base/orogen/types">
         <th>base/orogen/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="1"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_1"><td>
         
           45aae77 6 weeks ago Sylvain Joyeux added DistanceImage<br/>
         
           63ee422 3 months ago Jakob Schwendner removed findeigen2 cmake script<br/>
         
           931f2f2 3 months ago Jakob Schwendner update to eigen3<br/>
         
           1b8ba44 3 months ago imoby export the std::vector&lt;base::Vector3d&gt;<br/>
         
           0705dab 4 months ago shi base type: pointcloud<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/scripts">
         <th>base/scripts</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="2"> 58 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_2"><td>
         
           ca39249 6 weeks ago Thomas Roehr Add test for orogen component name<br/>
         
           87892f6 6 weeks ago Thomas Roehr Add error messages for failed manifest retrieval from website and missing cmake_lib.<br/>
         
           7e1b2f5 7 weeks ago Sylvain Joyeux move the documentation-generation scripts to admin_scripts<br/>
         
           1672232 7 weeks ago Sylvain Joyeux allow to disable API generation in rock-make-doc using an environment variable<br/>
         
           c1ec9ed 7 weeks ago Sylvain Joyeux in rock-status, reset back to the initial flavor<br/>
         
           3b7da5b 7 weeks ago Sylvain Joyeux in package page generation, when looking for local paths, only consider absolute paths<br/>
         
           58d162b 7 weeks ago Sylvain Joyeux properly handle the --sort option in rock-status<br/>
         
           f363743 7 weeks ago Sylvain Joyeux replace tabs by spaces<br/>
         
           037de5d 7 weeks ago Sylvain Joyeux add a --status option to rock-make-doc<br/>
         
           9d28850 7 weeks ago Sylvain Joyeux workaround Package#description being nil if no manifest.xml exists<br/>
         
           b8fc42a 7 weeks ago Sylvain Joyeux change sort_info to fix package directory menu<br/>
         
           0f71356 8 weeks ago Sylvain Joyeux in package directory, add separators between package info, orogen info and status<br/>
         
           b6ade1a 8 weeks ago Sylvain Joyeux reformat the package information pages to make it more readable<br/>
         
           5b3d487 8 weeks ago Sylvain Joyeux add URL, author and license to package information<br/>
         
           02416ee 8 weeks ago Sylvain Joyeux add the ability for rock-directory-pages to generate status pages<br/>
         
           e71059e 8 weeks ago Sylvain Joyeux make rock-status accept a --sort option to specify page sorting order<br/>
         
           29f82f7 9 weeks ago Sylvain Joyeux status: style fixes for the update errors<br/>
         
           874b750 9 weeks ago Sylvain Joyeux status: hide the commit lists by default<br/>
         
           5b03a82 9 weeks ago Sylvain Joyeux status: sort the new/obsolete package lists<br/>
         
           e6f9cc5 9 weeks ago Sylvain Joyeux status: update to match the new flavor system<br/>
         
           0ea1976 2 months ago Sylvain Joyeux fix directory page generation if no API directory is given<br/>
         
           0f9253f 2 months ago Sylvain Joyeux add missing index page for the package directory<br/>
         
           89b0984 2 months ago Sylvain Joyeux rock-make-doc: the package directory is no more generated separately from the website<br/>
         
           33b86c8 2 months ago Sylvain Joyeux inspect: fix support for vizkit plugins<br/>
         
           05d7011 3 months ago Sylvain Joyeux rename rock-create-vizkit-widget to match what it actually does (3D plugin)<br/>
         
           6e710b6 3 months ago Sylvain Joyeux replace "from" by "imported from" as it is clearer<br/>
         
           05b97e6 3 months ago Sylvain Joyeux small rewording<br/>
         
           6a35501 3 months ago Sylvain Joyeux greatly improve the VCS information in the package pages<br/>
         
           8b5a5d5 3 months ago Sylvain Joyeux fix links from package pages to the rest of the package directory<br/>
         
           2f0b6e0 3 months ago Sylvain Joyeux in render_vcs, add two-line indentation so that the output can be copy/pasted directly<br/>
         
           b23ea1a 3 months ago Sylvain Joyeux fix width of produced by / consumed by blocks in orogen task info page<br/>
         
           d480f6b 3 months ago Sylvain Joyeux in packages, display the VCS information for the package set<br/>
         
           394ef93 3 months ago Sylvain Joyeux render the VCS in a pre block so that they look like exactly as in the manifest/source.yml<br/>
         
           d39de20 3 months ago Sylvain Joyeux in render_main_list, allow to disable header generation<br/>
         
           9a12171 3 months ago Sylvain Joyeux change the rendering of the produced by / consumed by info<br/>
         
           2d18e10 3 months ago Sylvain Joyeux use the common index generation for orogen tasks and type indexes<br/>
         
           cb28148 3 months ago Sylvain Joyeux move tagcloud configuration into the part specific to package index<br/>
         
           7feb5fe 3 months ago Sylvain Joyeux when writing down a page, make sure that the directory exists<br/>
         
           fadc6eb 3 months ago Sylvain Joyeux fix some issues between generated links and '_'<br/>
         
           ec67a3f 3 months ago Alexander rock-inspect: renamed parameter show_xxx to show-xxx<br/>
         
           bd54f18 3 months ago Alexander rock-inspect: add plugin support<br/>
         
           7a7c285 3 months ago Alexander rock-inspect: improve structure<br/>
         
           6016996 3 months ago Alexander rock-inspect: typo<br/>
         
           1e74a8f 3 months ago Alexander rock-inspect improve options<br/>
         
           47ac3ba 3 months ago Alexander rock-inspect print message if nothing was found<br/>
         
           ace5ba5 3 months ago Alexander rock-inspect remove unneeded puts<br/>
         
           ff30ec8 3 months ago Alexander add first version of rock-inspect<br/>
         
           7417c86 3 months ago Sylvain Joyeux add tag cloud, including interaction between tag and search bar<br/>
         
           856f55e 3 months ago Sylvain Joyeux directory: almost there<br/>
         
           f112b49 3 months ago Sylvain Joyeux generate nicer index pages for packages, types and tasks<br/>
         
           9bb7a4d 3 months ago Sylvain Joyeux small cleanup of the package directory generation<br/>
         
           2bc2f0e 3 months ago Thomas Roehr Fix rock-create-orogen to get manifest.xml from local template folder cmake_lib and activate manifest configuration dialog<br/>
         
           2d8a920 3 months ago Sylvain Joyeux rewrite rock-status to use ERB for template generation and jQuery for dynamic toggling of elements<br/>
         
           9d72310 3 months ago Alexander make rock-make-doc accept paths to the templates<br/>
         
           a7a4a4f 3 months ago Sylvain Joyeux update to match the new master/next/stable mechanism<br/>
         
           ba6e54c 4 months ago Sylvain Joyeux for the time being, rename rock-clone-dev-env to rock-clone-gitorious<br/>
         
           0a6dd24 4 months ago Sylvain Joyeux add starting point to clone a Rock working environment<br/>
         
           9835036 5 months ago Sylvain Joyeux rock-push-flavor: add more tuning options<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/templates/cmake_lib">
         <th>base/templates/cmake_lib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="3"> 12 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_3"><td>
         
           cb07704 7 weeks ago Thomas Roehr Fix adding dependencies using &lt;/package&gt; as hook<br/>
         
           b6606fd 9 weeks ago Sylvain Joyeux add a default gitignore that ignores build/ and vim swapfiles<br/>
         
           23c481e 9 weeks ago Sylvain Joyeux remove parts of the manifest that we don't use in Rock<br/>
         
           e4e542c 9 weeks ago Sylvain Joyeux fix find stanza to rename files that contain dummyproject<br/>
         
           ed97264 3 months ago Thomas Roehr Fix namespace and missing include guard<br/>
         
           4c09456 3 months ago Thomas Roehr Add bindings and viz to README default layout<br/>
         
           0741d5a 3 months ago Sylvain Joyeux add a default Doxyfile.in<br/>
         
           1f909b5 3 months ago Thomas Roehr Fix indentation for DEPEND-ENTRIES<br/>
         
           b935bbc 3 months ago Thomas Roehr Separate manifest configuration to allow calling from orogen-template generation<br/>
         
           4397bf3 3 months ago Thomas Roehr Add install headers<br/>
         
           0eb280d 3 months ago Thomas Roehr Adapt to CamelCase filenames<br/>
         
           37ae326 5 months ago Jakob Schwendner keyword for dependencies in pkgconfig is Requires and not Depends<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/templates/cmake_vizkit_widget">
         <th>base/templates/cmake_vizkit_widget</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="4"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_4"><td>
         
           96acba9 5 months ago Jakob Schwendner fixed Requires (Depends) field analogous to the cmake_lib template<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/templates/vizkit">
         <th>base/templates/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="5"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_5"><td>
         
           fa617cb 7 weeks ago Alexander Duda add manifest<br/>
         
           177e42a 5 months ago Jakob Schwendner fixed requires (depends) analogous to cmake_lib template<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types">
         <th>base/types</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="6"> 30 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_6"><td>
         
           a6dc4bf 6 weeks ago Sylvain Joyeux define Angle::normalizeRad<br/>
         
           6644cf1 6 weeks ago Sylvain Joyeux fixed use of wrong parameter name<br/>
         
           23c1597 6 weeks ago Sylvain Joyeux added DistanceImage class<br/>
         
           91acfa8 3 months ago Sylvain Joyeux add the helper functions declared in RG3<br/>
         
           10d94d8 3 months ago Thomas Roehr Adding toString method to base::Time<br/>
         
           e90e07d 3 months ago Thomas Roehr Add iostream style logging provided by Jan and reorganize files<br/>
         
           c077503 3 months ago Thomas Roehr Fix test.cpp for WIN32<br/>
         
           5eb537e 3 months ago Thomas Roehr Adapt library target to works for DLL platforms.<br/>
         
           a58cdd9 3 months ago Thomas Roehr Replace isinf with std::isinf to allow compilation on WIN32 and MACOS.<br/>
         
           ec0aa27 3 months ago Thomas Roehr Making priority naming compatible to WIN32 platforms<br/>
         
           b6fab19 3 months ago Thomas Roehr Make external/sisl an optional dependency<br/>
         
           3ab04f5 3 months ago Matthias Goldhoorn added additional Raw frame format<br/>
         
           3812a2d 3 months ago Jakob Schwendner base-lib was still using cmake based eigen3 include<br/>
         
           40ad4f2 3 months ago Jakob Schwendner don't use the FindEigen scripts anymore, but use the pkgconfig file for eigen3<br/>
         
           9ee5153 3 months ago Jakob Schwendner update to eigen3<br/>
         
           2c7f62b 4 months ago Thomas Roehr Add logging Format (patch provided by Steffen Planthaber).<br/>
         
           a1caf3b 4 months ago Thomas Roehr Add colours for log levels and switch to using __PRETTY_FUNCTION__ or __func__ (patch sent by Steffen Planthaber) and improve documentation<br/>
         
           17e68fa 4 months ago Matthias Goldhoorn Merge remote branch 'autobuild'<br/>
         
           e052ab2 4 months ago Matthias Goldhoorn Make getScale const to use it in const context. (sorry for this minimal change and the caused recompile, it's needed)<br/>
         
           f752c32 4 months ago Alexander Duda Rock_RUBY_RICE_EXTENSION: bugfix<br/>
         
           b880a1c 4 months ago Alexander Duda cmake: add simple function ROCK_RUBY_RICE_EXTENSION<br/>
         
           a324296 4 months ago Alexander Duda frame: add frame mode MODE_RGB32<br/>
         
           3daaa7b 4 months ago shi base type: pointcloud<br/>
         
           c6aa787 4 months ago Thomas Roehr Install headers while keeping the directory structure<br/>
         
           4cd13c0 4 months ago Jakob Schwendner added static conversion for rad 2 degree<br/>
         
           bf901a9 4 months ago Jakob Schwendner output of stream operator for base::Time is more readable now<br/>
         
           c4d4bb3 4 months ago Alexander frame: add method swap(Frame &frame)<br/>
         
           a350589 5 months ago Sylvain Joyeux document the fields of base::samples::frame::Frame<br/>
         
           2cb819e 5 months ago Thomas Roehr Making sure FindBoost is compatible with cmake 2.6.0<br/>
         
           1717949 5 months ago Thomas Roehr Add fixed version of boost until the script is fixed in the official cmake version: http://public.kitware.com/Bug/view.php?id=12205<br/>
         
         </td></tr>
       
       



       <tr class="name" id="base/types_ruby">
         <th>base/types_ruby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="7"> 14 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_7"><td>
         
           2774c7d 7 weeks ago Alexander Duda use not-aligned version of Eigen types<br/>
         
           1adf588 8 weeks ago Sylvain Joyeux add missing include<br/>
         
           6dc96cd 8 weeks ago Sylvain Joyeux eigen: document Quaternion#inverse<br/>
         
           111d7c7 9 weeks ago Sylvain Joyeux implement Marshal support for Spline<br/>
         
           b768e82 2 months ago Sylvain Joyeux fix typo in the deprecated Unit method<br/>
         
           f1eb087 2 months ago Sylvain Joyeux Makefiles generated by extconf.rb are so-so as detecting dependency changes, clean before building<br/>
         
           56d8ad7 3 months ago Sylvain Joyeux add support for infinity and nan from RG3<br/>
         
           d6a1594 3 months ago Sylvain Joyeux add Vector3.signed_angle_to<br/>
         
           d6bd533 3 months ago Jakob Schwendner eigen: deprecated Quaternion.Unit and added Quaternion.Identity<br/>
         
           f5267ae 3 months ago Jakob Schwendner added generation from axis angle to quaternion<br/>
         
           3e2373a 3 months ago Jakob Schwendner update to eigen3<br/>
         
           85116df 4 months ago Sylvain Joyeux fix handling of rounding errors in Spline#sample<br/>
         
           8a78558 4 months ago Sylvain Joyeux spline: define .singleton and #singleton as helpers to define singleton curves<br/>
         
           8215b40 4 months ago Sylvain Joyeux spline: define #find_one_closest_point and #distance_to<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/motor_controller">
         <th>control/motor_controller</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="8"> 9 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_8"><td>
         
           299abd1 5 months ago Ajish Babu Merge branch 'master' of git://gitorious.org/rock-control/motor_controller<br/>
         
           8d9b557 5 months ago Sylvain Joyeux bug fix ... assigning the posPrevStep!!!!<br/>
         
           c72a5ad 5 months ago Ajish Babu added InputShaper.* to files<br/>
         
           ea27fb2 5 months ago Ajish Babu added the precommand filtering "Input Shaper" for flexible system<br/>
         
           3011903 5 months ago Ajish Babu Merge branch 'master' of git://gitorious.org/rock-control/motor_controller<br/>
         
           d5065e7 5 months ago Ajish Babu bugfix ... initializes saturatedCommand and rawCommand<br/>
         
           35a8c3c 5 months ago Matthias Goldhoorn bugfix: PID::update was returning NaN<br/>
         
           e256c63 5 months ago Ajish Babu added the mehtod to read velocities<br/>
         
           7027077 5 months ago Ajish Babu moved the velocity computation to the PIV class<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/orogen/skid4_control">
         <th>control/orogen/skid4_control</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="9"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_9"><td>
         
           7d79bc1 9 weeks ago Sylvain Joyeux add missing using_library for motor_controller<br/>
         
           efc7892 3 months ago Janosch Machowinski added experimental soft turn controller<br/>
         
           8d3f8d2 3 months ago Janosch Machowinski added a controller that drives forward with a constant speed<br/>
         
           b074c2c 3 months ago Janosch Machowinski added method for stopping the motors to base controller class<br/>
         
           38b887b 5 months ago Sylvain Joyeux define the new 3-argument constructor on Controller<br/>
         
         </td></tr>
       
       



       <tr class="name" id="control/orogen/trajectory_follower">
         <th>control/orogen/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="10"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_10"><td>
         
           3c64ce4 4 months ago Sylvain Joyeux Don't stop processing if the no-orientation controller returns initial-instability<br/>
         
           aa7a6bc 4 months ago Sylvain Joyeux send the REACHED_THE_END state update only once<br/>
         
         </td></tr>
       
       





       <tr class="name" id="control/trajectory_follower">
         <th>control/trajectory_follower</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="11"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_11"><td>
         
           6bb516a 5 months ago Jakob Schwendner update to eigen3<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/aggregator">
         <th>drivers/aggregator</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="12"> 31 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_12"><td>
         
           9ce157c 9 weeks ago Sylvain Joyeux fix uninitialized value problem in one of the constructors<br/>
         
           2e30bf2 9 weeks ago Sylvain Joyeux use the generic .pc file from the cmake_lib template<br/>
         
           bdf7431 9 weeks ago Sylvain Joyeux add an optional dependency on vizkit to make the vizkit widget built by default<br/>
         
           00a6e8f 9 weeks ago Sylvain Joyeux the .pc file is now in src/ in the rock package layout. Fix.<br/>
         
           f014c90 9 weeks ago Sylvain Joyeux Revert "pkg.config was not installed anymore, fixed this"<br/>
         
           129bb73 9 weeks ago Sylvain Joyeux make the library name match the package name<br/>
         
           f0e98fb 9 weeks ago Matthias Goldhoorn pkg.config was not installed anymore, fixed this<br/>
         
           937d10d 9 weeks ago Janosch Machowinski fix include path<br/>
         
           63e9a9d 9 weeks ago Sylvain Joyeux use rock_testsuite to build the tests<br/>
         
           ae736ff 10 weeks ago Janosch Machowinski added widget for visualising the stream aligner status<br/>
         
           8492489 10 weeks ago Janosch Machowinski removed orogen_plugin, it is now located in the orogen/aggregator package<br/>
         
           ed56351 10 weeks ago Janosch Machowinski moved to rock build macros<br/>
         
           11cade8 2 months ago Sylvain Joyeux fix ambiguities in TimestampEstimator constructors<br/>
         
           372700c 3 months ago Pierre Willenbrock Incorporate reference timestamps in TimestampEstimator<br/>
         
           e3ca763 3 months ago Pierre Willenbrock Add some missing assignments related to the item number handling<br/>
         
           a5307b2 4 months ago Janosch Machowinski orogen_plugin: Clean up in cleanupHook<br/>
         
           2e948f0 4 months ago Janosch Machowinski added names to streams for better debug / status output<br/>
         
           76ee793 4 months ago Janosch Machowinski testcase for clearing<br/>
         
           7dbfd19 4 months ago Janosch Machowinski orogen_plung: clear stream aligner in stop hook<br/>
         
           8441fad 4 months ago Janosch Machowinski added ability to clear stream aligner<br/>
         
           c64ac37 4 months ago Janosch Machowinski added ability to unregister streams from the stream aligner<br/>
         
           e72f4ae 4 months ago Janosch Machowinski added automatic generation of status port to the orogen plugin<br/>
         
           2e3cf1d 4 months ago Pierre Willenbrock Handle missing references by using a plain TimestampEstimator<br/>
         
           417936b 4 months ago Janosch Machowinski Enhanced StreamAlignerStatus output<br/>
         
           e16f608 5 months ago Pierre Willenbrock TimestampSynchronizer: Add yet another interface to avoid copies<br/>
         
           59b3c1c 5 months ago Pierre Willenbrock TimestampSynchronizer: stop calling into splice for every item/ pop_front for every ref<br/>
         
           2b5be0c 5 months ago Pierre Willenbrock TimestampSynchronizer: Add interface for more efficient item extraction<br/>
         
           98b895c 5 months ago Pierre Willenbrock Aaaand revert the incomplete real support for item/ref losses<br/>
         
           9a04641 5 months ago Pierre Willenbrock TimestampSynchronizer: also add the push functions with item counter<br/>
         
           be32b8f 5 months ago Pierre Willenbrock TimestampSynchronizer: Fix timestamp estimator updates<br/>
         
           cd0e0e6 5 months ago Pierre Willenbrock Add an interface to tell the TimestampSynchronizer about lost samples<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/controldev">
         <th>drivers/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="13"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_13"><td>
         
           873bd8d 8 weeks ago Martin Schröer Changed getAxis() to use switch statement for G27 axes (NYI for all axes).<br/>
         
           fe7066f 3 months ago Janosch Machowinski add missing osdep libusb-old<br/>
         
           50a19ca 3 months ago Janosch Machowinski make controldev match the norm package structure and build system<br/>
         
           9524681 3 months ago Janosch Machowinski remove generated useless makefile<br/>
         
           b24a138 3 months ago mschroeer Added simple support for the Logitech G27 racing wheel.<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/mb500">
         <th>drivers/mb500</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="14"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_14"><td>
         
           dc6dd98 4 months ago Sylvain Joyeux properly timeout in verifyAcknowledge<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_base">
         <th>drivers/orogen/camera_base</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="15"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_15"><td>
         
           031225c 6 weeks ago Sylvain Joyeux remove temporary workaround from next<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/camera_prosilica">
         <th>drivers/orogen/camera_prosilica</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="16"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_16"><td>
         
           d22ec82 6 weeks ago Sylvain Joyeux Remove a temporary workaround from next<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/canbus">
         <th>drivers/orogen/canbus</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="17"> 8 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_17"><td>
         
           e462932 2 months ago Janosch Machowinski set defaults for statsInterval and checkBusOkInterval<br/>
         
           64fcf0e 2 months ago Janosch Machowinski bugfix, do not check bus status every time<br/>
         
           a6c8ca2 2 months ago Janosch Machowinski Revert " foreign commit by MH: added debug info, error handling"<br/>
         
           b00d972 2 months ago Janosch Machowinski make the stats to be outputted every X ms, not every call to the update hook<br/>
         
           af127e7 2 months ago Janosch Machowinski bugfix, allow two output port per can_id<br/>
         
           37fcf79 2 months ago Sylvain Joyeux improve component documentation<br/>
         
           8476b6b 3 months ago DAGON PC 1  foreign commit by MH: added debug info, error handling<br/>
         
           868b646 4 months ago Sylvain Joyeux mark the 'in' port as being a multiplexing port<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/controldev">
         <th>drivers/orogen/controldev</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="18"> 10 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_18"><td>
         
           2f7d29e 3 months ago Janosch Machowinski added doc tag to all tasks<br/>
         
           c4b2c5e 3 months ago Janosch Machowinski splited Local in SliderboxTask and JoystickTask<br/>
         
           79bf899 3 months ago Janosch Machowinski renamed SteeringWheel to SteeringWheelTask<br/>
         
           6ffb135 3 months ago Sylvain Joyeux Merge commit '9a8565934ae006ef30646b3169264ee37e3c0cf6'<br/>
         
           2bfe8bf 3 months ago Sylvain Joyeux Revert "foreign commit by MH: default activity was added"<br/>
         
           2efd9a6 3 months ago DAGON PC 1 foreign commit by MH: default activity was added<br/>
         
           9a85659 3 months ago mschroeer Added task for new input device Logitech G27 steering wheel.<br/>
         
           8dce082 4 months ago toughguy made joystick's fd_driven optional<br/>
         
           1ea2f45 4 months ago Ajish Babu adding offsets to the four_wheel_command so that the offsets can be optimized<br/>
         
           bc63a39 5 months ago Sylvain Joyeux define the new 3-argument constructor on GenericTask<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/dynamixel">
         <th>drivers/orogen/dynamixel</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="19"> 5 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_19"><td>
         
           84d7d6a 8 weeks ago Asguard Demo2 Account fix return values for configureHook<br/>
         
           dc289dc 9 weeks ago Asguard Demo2 Account fix unbalanced start/stop bug<br/>
         
           431039c 4 months ago Sylvain Joyeux fix dynamixel initialization<br/>
         
           268e7c2 5 months ago Janosch Machowinski added servo sweeping<br/>
         
           00f2b0c 5 months ago Pierre Willenbrock Bail out if setting control values fails<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/gps">
         <th>drivers/orogen/gps</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="20"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_20"><td>
         
           bded9e3 5 months ago Sylvain Joyeux define the new 3-argument constructor on BaseTask<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/orogen/hokuyo">
         <th>drivers/orogen/hokuyo</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="21"> 6 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_21"><td>
         
           fc05cc4 9 weeks ago Janosch Machowinski compilefix incude timestampestimator from subfolder<br/>
         
           609f98a 2 months ago Pierre Willenbrock Swap the Timestamper out for the new and improved TimestampEstimator<br/>
         
           ff2dbe1 4 months ago Pierre Willenbrock Drop the old code again and use Timestamper instead.<br/>
         
           cb4907e 5 months ago Pierre Willenbrock Revert to using driver timestamps when the hardware timestamps are not available<br/>
         
           9dc52cb 5 months ago Pierre Willenbrock Update the manifest<br/>
         
           715b609 5 months ago Pierre Willenbrock Switch to TimestampSynchronizer<br/>
         
         </td></tr>
       
       









       <tr class="name" id="drivers/orogen/xsens_imu">
         <th>drivers/orogen/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="22"> 12 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_22"><td>
         
           2afbd6f 10 weeks ago Sascha Arnold fixed include<br/>
         
           c89d198 2 months ago Pierre Willenbrock Push references to estimator<br/>
         
           9502a04 2 months ago Pierre Willenbrock add hard timestamps<br/>
         
           b480e83 3 months ago DAGON PC 1 foreign commit by MH: added deployment<br/>
         
           ef210d5 3 months ago Pierre Willenbrock Fix timeout errors after stopping<br/>
         
           debf171 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           edcad6a 4 months ago Sylvain Joyeux Revert the integration of the timestamp synchronizer<br/>
         
           51f00d3 4 months ago Pierre Willenbrock Explicitly setup the syncOut pint of the hardware<br/>
         
           cac652b 4 months ago Pierre Willenbrock Drop the TimestampEstimator in favour of the one integrated in Timestamper<br/>
         
           f52ef11 5 months ago Pierre Willenbrock Revert to the TimestampEstimator when the hardware timestamps are not available<br/>
         
           13f6047 5 months ago Pierre Willenbrock Tell the TimestampSynchronizer about the packet counter<br/>
         
           14064f7 5 months ago Pierre Willenbrock Drop unneeded header<br/>
         
         </td></tr>
       
       





       <tr class="name" id="drivers/transformer">
         <th>drivers/transformer</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="23"> 14 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_23"><td>
         
           0fb6c94 8 days ago Alexander Duda HACK: temporary fix to support ReadOnlyPointer as aligned streams<br/>
         
           5a46426 8 days ago Alexander Duda fix generation of registerDataStream&lt;T&gt; call when T ends with &gt; (template)<br/>
         
           1cd3d2b 10 weeks ago Janosch Machowinski orogen_plugin: bugfix import types from aggregator not .hpp file<br/>
         
           ff09660 10 weeks ago Janosch Machowinski compilefix<br/>
         
           60cd4b5 3 months ago Janosch Machowinski orogen_plugin: Added automatic generation of status port<br/>
         
           6832a83 3 months ago Jakob Schwendner update to eigen3<br/>
         
           fab81cc 3 months ago Jakob Schwendner update to eigen3<br/>
         
           b57efae 4 months ago Janosch Machowinski orogen_plugin: clean up in cleanupHook<br/>
         
           9520fcc 4 months ago Janosch Machowinski added function to unregister data streams<br/>
         
           062b6eb 4 months ago Janosch Machowinski bugfix, transformer needs to link against the aggregator<br/>
         
           a390b45 4 months ago Janosch Machowinski set stream names when registering dynamic transformations at the aggregator<br/>
         
           f729812 4 months ago Janosch Machowinski added method for getting the stream aligner status<br/>
         
           2b90524 4 months ago Janosch Machowinski added ability to clear transformer<br/>
         
           d3242ae 4 months ago Sylvain Joyeux remove annoying debugging output<br/>
         
         </td></tr>
       
       



       <tr class="name" id="drivers/xsens_imu">
         <th>drivers/xsens_imu</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="24"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_24"><td>
         
           7d61e7b 3 months ago Jakob Schwendner update to eigen3<br/>
         
           eeaef81 4 months ago Pierre Willenbrock Stop forcing syncOut on and make it configurable<br/>
         
         </td></tr>
       
       



       <tr class="name" id="external/libply">
         <th>external/libply</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="25"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_25"><td>
         
           58d49c8 5 months ago Jakob Schwendner made the error messages slightly more verbose<br/>
         
         </td></tr>
       
       









       <tr class="name" id="gui/rock_widget_collection">
         <th>gui/rock_widget_collection</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="26"> 26 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_26"><td>
         
           903b96a 3 months ago Janosch Machowinski bugfixes to VirtualJoystick<br/>
         
           b8fe511 3 months ago Janosch Machowinski renamed JoystickWidget to VirtualJoystick<br/>
         
           be13d8a 3 months ago Janosch Machowinski added a virtual joystick widget<br/>
         
           19c7dd1 3 months ago Matthias Goldhoorn Removed define for maxpoints, and make it settable trought an slot<br/>
         
           48a5e7e 3 months ago Matthias Goldhoorn Fixed autoscaling, was never working correctly because the minMax values was never reseted<br/>
         
           cc67c55 3 months ago Matthias Goldhoorn Merge branch 'master' of gitorious.org:rock-gui/rock_widget_collection<br/>
         
           a3623b7 3 months ago Jakob Schwendner update to eigen3<br/>
         
           1ac469d 3 months ago Matthias Goldhoorn Fixed inversion of Sonarview<br/>
         
           72532e0 4 months ago Matthias Goldhoorn Added non-gl view of Sonaridget and make some functions in image-view virtual, added binary sonarView testing application<br/>
         
           f6bb637 4 months ago toughguy compass: fix sign for display<br/>
         
           305bbae 4 months ago Matthias Goldhoorn Added scaling to Artificial Horizon<br/>
         
           97e8ee8 4 months ago Matthias Goldhoorn Additional ground-tru reference method<br/>
         
           b497d04 4 months ago Matthias Goldhoorn some performance fixes<br/>
         
           424373b 4 months ago Matthias Goldhoorn Some gui extensions<br/>
         
           d6a26b2 4 months ago Matthias Goldhoorn Added some forgotten initialization<br/>
         
           81257fe 4 months ago Matthias Goldhoorn Created more generic interface for painting, now all GL Widgets can inherit this and use the functionallity they was before only availible on images. Also Used for Buttons<br/>
         
           c3e78d3 4 months ago Matthias Goldhoorn more working version for designer<br/>
         
           6f5d47c 4 months ago Matthias Goldhoorn Extended multiview for use with different button positions, fixed some errors depending to qt-designer<br/>
         
           8971825 4 months ago Matthias Goldhoorn fixed wrong namings<br/>
         
           91935cf 4 months ago Matthias Goldhoorn Added Compass and more generic view for orientations<br/>
         
           1b879f4 4 months ago Matthias Goldhoorn Fixed initializaion issue, if imageView changes it drawing bhaviour, all depended DrawItems was not updated and so on not displayed<br/>
         
           acaef67 4 months ago Matthias Goldhoorn Debugging why things don't visible in designer<br/>
         
           a17d6dc 4 months ago Matthias Goldhoorn prepared Widget for handling Buttons on differnt Positions, now the button decided where he would like to put to<br/>
         
           ee4502c 4 months ago Matthias Goldhoorn Fixed initialization with an workaround timer, change views now better supported<br/>
         
           55a101e 4 months ago Matthias Goldhoorn Merge branch 'master' of git://gitorious.org/rock-gui/rock_widget_collection<br/>
         
           53e508e 4 months ago Matthias Goldhoorn added submodule of multi view widget, this can now handle different widgets inside itself that can be shown or disabled in case the main-widget is minimized<br/>
         
         </td></tr>
       
       



       <tr class="name" id="gui/vizkit">
         <th>gui/vizkit</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="27"> 68 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_27"><td>
         
           0470c40 6 weeks ago Sylvain Joyeux Merge commit 'autobuild/master~11' into next<br/>
         
           b7ed240 6 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next' into HEAD<br/>
         
           81753ff 2 months ago Sylvain Joyeux provide support to discover all available plugins from Ruby<br/>
         
           e2e9f94 2 months ago Sylvain Joyeux move Doxyfile.in from doc/ to ./ and fix CMake code to generate in build/<br/>
         
           93d4d8e 3 months ago Alexander ruby.rb update to vizkit::Vizkit3DWidget<br/>
         
           a9f0d92 3 months ago Alexander vizkit.rb add vizkit3d_widget accessor<br/>
         
           e9ea416 3 months ago Alexander vizkit.rb add pretty_print to VizkitPluginExtension<br/>
         
           79b0cd5 3 months ago Alexander vizkit.rb add pretty_print_widget<br/>
         
           a1882e8 3 months ago Janosch Machowinski fixed missing colors in rigidbodystateVisualization<br/>
         
           196b422 3 months ago Sylvain Joyeux add an optional dependency on orocos.rb, as the vizkit/ruby part requires it<br/>
         
           63e0067 3 months ago Janosch Machowinski changed default viewpoint of Vizkit3DWidget<br/>
         
           3fc6c5f 3 months ago Alexander vizkit.rb add method registered_for<br/>
         
           25b619c 3 months ago Janosch Machowinski removed debug output<br/>
         
           7231200 3 months ago Janosch Machowinski renamed VizPlugin to Vizkit3DPlugin<br/>
         
           e0b9cf4 3 months ago Janosch Machowinski renamed QVizkitWidget to Vizkit3DWidget<br/>
         
           9975c6b 3 months ago Janosch Machowinski raise if orocos,initalize was not called before loading the 3d plugins<br/>
         
           773ed83 3 months ago Janosch Machowinski added possibility to just call updateData on all vizkit3D plugins<br/>
         
           ec7ddf5 3 months ago Alexander Duda vizkit.rb bugfix<br/>
         
           968f8ae 3 months ago Sylvain Joyeux fix the --host option of rock-display<br/>
         
           52f9f9b 3 months ago Sylvain Joyeux ruby: autoload the typekit that is related to a type a vizkit plugin needs<br/>
         
           b1279fd 3 months ago Alexander disable property writing for now<br/>
         
           1257c8b 3 months ago Alexander vizkit.rb: remove wrong commit for image_view_widget<br/>
         
           4ff8027 3 months ago Alexander vizkit.rb: image_view widget fix time display<br/>
         
           82acab4 3 months ago Alexander vizkit.rb update task_inspector<br/>
         
           f0d59dc 3 months ago Alexander vizkit.rb: add feature to state_viewer<br/>
         
           d0e4e4b 3 months ago Alexander Duda bugfix OSG_MIN_VERSION_REQUIRED<br/>
         
           4adf78f 3 months ago Jakob Schwendner update to eigen3<br/>
         
           81ba036 3 months ago Sylvain Joyeux MatrixManipulator has been renamed to CameraManipulator in OSG 3, add a compatibility header<br/>
         
           3e15033 3 months ago Sylvain Joyeux allow to tune the RigidBodyStateVisualization a bit more<br/>
         
           38a7dde 4 months ago Alexander Duda vizkit.rb: update StateViewer<br/>
         
           86d35da 4 months ago Alexander Duda vizkit.rb add method use_task?<br/>
         
           1cde63f 4 months ago Alexander Duda vizkit.rb: bugfix connect_port_to<br/>
         
           8c1488b 4 months ago Alexander vizkit.rb: add state viewer<br/>
         
           3266408 4 months ago Marc Hildebrandt Merge branch 'master' of git://gitorious.org/rock-gui/vizkit<br/>
         
           72bb36c 4 months ago Matthias Goldhoorn Reenabled ruby interface for Artificial Horizon<br/>
         
           17402d8 4 months ago Matthias Goldhoorn Fixed namings of artificial horizon<br/>
         
           bf11bf1 4 months ago Matthias Goldhoorn Added new Orientation displaying widget<br/>
         
           8744c8c 4 months ago Matthias Goldhoorn Fixed broken interface for replaying logs<br/>
         
           b3941b5 4 months ago Alexander Duda vizkit.rb actuator_control widget is no longer a default widget<br/>
         
           615b422 4 months ago Matthias Goldhoorn not displaying time and fps if this widget is minimized<br/>
         
           2591e32 4 months ago Marc Hildebrandt merged conflict<br/>
         
           70bb9cb 4 months ago Marc Hildebrandt removed missing smoke.h, but it does not to be needed (compiled succeessfully)<br/>
         
           a2243a9 4 months ago Janosch Machowinski added ability to set position and orientation for the MotionCommandVisualization<br/>
         
           a6a4fa8 4 months ago Sylvain Joyeux automatically add "Visualization" at the end of a requested plugin name<br/>
         
           d36502a 4 months ago Sylvain Joyeux if multiple plugins are available but none is explicitely selected, list the available plugins<br/>
         
           9651fb3 4 months ago Sylvain Joyeux rename VizPluginRubyConfig to VizPluginRubyMethod as the former is really not descriptive<br/>
         
           8a2b7db 4 months ago Sylvain Joyeux ruby: fix double-free in the vizkit3d-to-ruby adapter stuff<br/>
         
           36cd56d 5 months ago Alexander Duda add script to display available qt ruby widgets<br/>
         
           848c94e 5 months ago Alexander Duda ruby: remove unneeded message<br/>
         
           0621a19 5 months ago Alexander Duda ruby: image_view_widget add method save_images_to<br/>
         
           f555d6c 5 months ago Sylvain Joyeux ruby: disable updating properties in the task inspector<br/>
         
           ff5f158 5 months ago Sylvain Joyeux make MotionCommandVisualization work on MotionCommand2D, and export it to Ruby<br/>
         
           76f36e7 5 months ago Sylvain Joyeux ruby: fix loading vizkit plugins from ruby<br/>
         
           14ca80d 5 months ago Alexander Duda ruby: bugfix related to auto_reconnect<br/>
         
           a66734f 5 months ago Alexander Duda ruby: reduce default update frequency from 20Hz to 8Hhz<br/>
         
           98b1b26 5 months ago Alexander Duda ruby: bugfix related to auto_reconnect<br/>
         
           dc778b1 5 months ago Jakob Schwendner added some more debug output in case a plugin could not be found<br/>
         
           abdcc3a 5 months ago Jakob Schwendner moved QVisualizationTestWidget into its own file and export the header<br/>
         
           28073e7 5 months ago Alexander Duda ruby bugfix: super was called with wrong parameters<br/>
         
           1ee1f70 5 months ago Alexander Duda ruby: add use_tasks to use Vizkit.connect_port_to with Log::Replay<br/>
         
           2260b7e 5 months ago Alexander Duda ruby: resolving callback_fct  for connect_port_to<br/>
         
           634905b 5 months ago Alexander Duda ruby: add default option to connect_port_to<br/>
         
           6f9c15b 5 months ago Sylvain Joyeux ruby: fix argument ordering in Vizkit.connect_port_to to match documentation<br/>
         
           edf22de 5 months ago Sylvain Joyeux add the quick-but-functional rock-display<br/>
         
           3cdde1f 5 months ago Sylvain Joyeux fix display of output ports<br/>
         
           98e9f0f 5 months ago Sylvain Joyeux fix display of arrays / vectors<br/>
         
           b2f687d 5 months ago Sascha Arnold added error message if vizkit plugin with a specific name could not be created<br/>
         
           c1e217b 5 months ago Sylvain Joyeux add support for having multiple vizkit plugins declared in one Qt plugin<br/>
         
         </td></tr>
       
       





       <tr class="name" id="image_processing/orogen/image_preprocessing">
         <th>image_processing/orogen/image_preprocessing</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="28"> 1 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_28"><td>
         
           506b97b 5 months ago Sylvain Joyeux add new constructor to BaseTask w.r.t. the latest change in orogen<br/>
         
         </td></tr>
       
       



       <tr class="name" id="orogen">
         <th>orogen</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="29"> 200 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_29"><td>
         
           5a28b52 9 weeks ago Sascha Arnold allow calling needs_configuration in subclasses even if the parent already called it<br/>
         
           7ffacc9 9 weeks ago Asguard Demo2 Account re-add call to link_directories in cmake_pkgconfig_require<br/>
         
           90fb56a 2 months ago Thomas Roehr Change typelib/TransportPlugin template to verify if protocol is already registered for a type, before trying to register the transport.<br/>
         
           386ff14 2 months ago Thomas Roehr For transport registration return success value of addProtocol instead of defaulting to true.<br/>
         
           d95b9b6 2 months ago Thomas Roehr Check if type of given name already exists in type repository, before trying to add it.<br/>
         
           79acd37 2 months ago Thomas Roehr Check if protocol has already been registered for a given type, before trying to register a transport.<br/>
         
           501eac2 2 months ago Matthias Goldhoorn Added new command in for deployments "load_type" can now add typekit types to deployments that are not defined in tasks and won't imported otherwise. Now it's possible to request manually the loading of types in deployments<br/>
         
           4877d94 2 months ago Sylvain Joyeux improve operation documentation handling<br/>
         
           8b382b9 2 months ago Sylvain Joyeux implement pretty-printing for Operation<br/>
         
           173cf5f 3 months ago Sylvain Joyeux use Typelib.from_ruby to validate property default values instead of having a handmade if/else/end clause<br/>
         
           f54b6fc 3 months ago Sylvain Joyeux add validation for default value in properties<br/>
         
           3a989ff 3 months ago Sylvain Joyeux handle complete paths in orogen create<br/>
         
           28bfa27 3 months ago Sylvain Joyeux display the task model documentation in TaskContext#pretty_print<br/>
         
           0fb45ba 3 months ago Sylvain Joyeux avoid resolving pkg-config libraries all the time, CMake does not like that<br/>
         
           6cba82c 3 months ago Sylvain Joyeux add TaskContext#each_dynamic_(input|output)_port<br/>
         
           0c52c32 3 months ago Sylvain Joyeux add TaskContext.doc<br/>
         
           918ded3 3 months ago Sylvain Joyeux remove documentation related to code generation in Spec::TaskContext<br/>
         
           da3db61 3 months ago Sylvain Joyeux turn typekit_link ON by default<br/>
         
           ad3ed15 3 months ago Sylvain Joyeux move the parsing of the typelist file out of from_raw_data<br/>
         
           4ec9e32 3 months ago Sylvain Joyeux cmake's find_library does not like absolute paths, workaround<br/>
         
           088c488 3 months ago Sylvain Joyeux workaround cmake's annoying heavy caching behaviour<br/>
         
           ee6db9b 3 months ago Sylvain Joyeux gen: when linking against pkg-config packages, resolve the full library paths<br/>
         
           1942e39 3 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           a0b6fe3 3 months ago Sylvain Joyeux Merge branch 'master' of /media/Data/dfki/sauce/dev/tools/orogen<br/>
         
           091d66d 3 months ago Sylvain Joyeux remove the side-effect in #normalize_registry<br/>
         
           d8b3c28 3 months ago Thomas Roehr Add service_discovery as optional dependency<br/>
         
           22250de 4 months ago Thomas Roehr Fix linking of program_options.<br/>
         
           071db0c 4 months ago Sylvain Joyeux add the main-* static deployment files in doxygen's excludes<br/>
         
           20a18f4 4 months ago Sylvain Joyeux spec: introduce a multiplexes? flag for input ports<br/>
         
           51120b5 4 months ago Alexander Duda templates/task.hpp: fix description<br/>
         
           4c4789c 4 months ago Sylvain Joyeux allow fine-grained configuration of using_library w.r.t. typekits<br/>
         
           b234c6a 4 months ago Sylvain Joyeux make sure that users of a task library are linked to the used libraries as well<br/>
         
           2151d99 4 months ago Sylvain Joyeux make the 'link' option to Typekit#using_library a proper option hash<br/>
         
           6352f0f 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master'<br/>
         
           8c29ed1 4 months ago Thomas Roehr Add cleanup for service_discovery to Deinitializer<br/>
         
           7af0583 4 months ago Thomas Roehr Add pkg-config integration for service_discovery, making the requirement of a using_library statement in the orogen spec obsolete. service_discovery functions are now activated once the library is present in the installation.<br/>
         
           d09f3ce 4 months ago Thomas Roehr Apply prefix also to service discovery configuration<br/>
         
           58c838c 4 months ago Thomas Roehr Merge branch 'progoptions' into integration_test<br/>
         
           e8684f9 5 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           c3cc783 5 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           159cb31 5 months ago Sylvain Joyeux in deployments, set properties and connect before calling #configure and #start<br/>
         
           5976b58 5 months ago Sylvain Joyeux FileUtils.rm_f does not have a :force option, remove<br/>
         
           234f595 5 months ago Sylvain Joyeux add the ability to specify Requires: for the task library pkg-config file<br/>
         
           94e8a24 5 months ago Sylvain Joyeux add initial support for generation of deployer XML configurations<br/>
         
           df65f85 5 months ago Sylvain Joyeux export the RTT::TaskContext constructor that allows to pass an execution engine<br/>
         
           b48d51a 5 months ago Sylvain Joyeux remove the CMakeCache.txt file on setup<br/>
         
           fbd8502 5 months ago Sylvain Joyeux fix return value to match RTT 2.4<br/>
         
           a325901 6 months ago Sylvain Joyeux make rosmake call rake setup properly<br/>
         
           5a5686b 6 months ago Sylvain Joyeux Merge branch 'master' of http://git.gitorious.org/orocos-toolchain/rock-orogen<br/>
         
           9391805 6 months ago Sylvain Joyeux fix some issues during plugin loading<br/>
         
           2555062 6 months ago Sylvain Joyeux limit memory pressure during compilation by setting typekit_slice to 1 by default if parallel_build is greater than 4<br/>
         
           2669cea 6 months ago Peter Soetens Merge branch 'toolchain-2.3'<br/>
         
           9726570 6 months ago Peter Soetens Merge branch 'master' of gitorious.org:/orocos-toolchain/orogen<br/>
         
           61cce83 6 months ago Peter Soetens typelib: return shared_ptr in createStream.<br/>
         
           66cf86f 6 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           203b3ab 6 months ago Chris Mueller service discovery integration is depending on cmake now. Removed all integration specific code from taskBase<br/>
         
           eef14f7 6 months ago Peter Soetens mqueue: fix using the find_package(Orocos-RTT) macro<br/>
         
           bf12925 6 months ago Peter Soetens typegen: include boost serialization headers for all stl types.<br/>
         
           f7ba5c0 6 months ago Peter Soetens cmake: set policy to 2.6 for typelib cmake code.<br/>
         
           5f7075d 6 months ago Peter Soetens Revert "typegen: properly quote TYPEKIT_REGISTRY"<br/>
         
           ff2e432 6 months ago Chris Mueller remove unseen _args<br/>
         
           139c5a0 6 months ago Chris Mueller move argument delivery from constructor to a new method call<br/>
         
           63cfe13 6 months ago Sylvain Joyeux corba: fix convertion code for vector-in-vector<br/>
         
           0650101 6 months ago Chris Mueller change namespace rock::communication to servicediscovery in templates + small adaptations in orogen library<br/>
         
           9487672 6 months ago Sylvain Joyeux give proper names to activities that take one<br/>
         
           a242fe1 6 months ago Sylvain Joyeux orogen needs nokogiri directly, add to the manifest<br/>
         
           ce931bb 6 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           2559658 6 months ago Chris Mueller add prefix attribute to deployments<br/>
         
           e56ab8e 6 months ago Chris Mueller change to implicit integration of servicediscovery<br/>
         
           6ade728 6 months ago Chris Mueller implement service discovery details to orogen template framework<br/>
         
           dd73629 6 months ago Chris Mueller add active_service_discovery dsl method to taskcontext specification<br/>
         
           cd66c79 6 months ago Sylvain Joyeux gen: in the corba transport, do not generate the IDL for registry typedefs<br/>
         
           72b9efb 6 months ago Sylvain Joyeux gen: fix generation of array assignment in to/fromIntermediate<br/>
         
           37df007 6 months ago Sylvain Joyeux fix m-type generation for fields that are arrays of non-opaques<br/>
         
           e9ab7db 6 months ago Sylvain Joyeux fix normalize_cxxname for array-of-templates<br/>
         
           3cfa969 7 months ago Peter Soetens rake: avoid double free check by setting MALLOC_CHECK_ to 0<br/>
         
           e558860 7 months ago Peter Soetens typegen: properly quote TYPEKIT_REGISTRY<br/>
         
           803b85d 7 months ago Peter Soetens typegen: fix initialisation of rosbuild and cleanup ros Makefile.<br/>
         
           0c822db 7 months ago Sylvain Joyeux bin: use "/usr/bin/env ruby" in bin/typegen<br/>
         
           b6b43b9 7 months ago Sylvain Joyeux bin: replace the deprecated Component by Project<br/>
         
           f002115 7 months ago Sylvain Joyeux bin: present option parsing errors better<br/>
         
           405681f 7 months ago Peter Soetens typegen: fix argument parsing of transport selection.<br/>
         
           ac3f3dc 7 months ago Sylvain Joyeux fix #has_opaque? in typekit generation<br/>
         
           74419f2 7 months ago Sylvain Joyeux update the FindRTTPlugin from OCL / toolchain-2.3<br/>
         
           0dce7eb 7 months ago Sylvain Joyeux move the input port code generation from spec/ to gen/<br/>
         
           7944c52 7 months ago Sylvain Joyeux when displaying faulty generated opaque-intermediate code, add line numbers<br/>
         
           ed5c42f 7 months ago Sylvain Joyeux when generating the corba IDL, don't include the types that contain opaques<br/>
         
           c2ed49f 7 months ago Sylvain Joyeux fix intermediate generation for types that are nested in or are themselves templates<br/>
         
           42d29bc 7 months ago Sylvain Joyeux the RTT changed (again) where it installs target-specific files, update<br/>
         
           5a448d8 7 months ago Sylvain Joyeux fix documentation for worstcase_processing_time<br/>
         
           ecc1c21 7 months ago Sylvain Joyeux add a way to disable cleaning an input port in the start hook<br/>
         
           d311257 7 months ago Peter Soetens cmake: find rtt plugins also in OROCOS_TARGET subdir.<br/>
         
           e308faf 8 months ago Sylvain Joyeux doc: fix<br/>
         
           f16a673 8 months ago Sylvain Joyeux replace getpid() by gettid(), and make it available only on Linux<br/>
         
           1b3d488 8 months ago Sylvain Joyeux add a hidden operation orogen_getPID to all orogen tasks<br/>
         
           9467f23 8 months ago Sylvain Joyeux dist: make check-uptodate depend on check-typekit-uptodate<br/>
         
           d625ae3 8 months ago Sylvain Joyeux doc: small update<br/>
         
           5dd5108 8 months ago Peter Soetens orogen: add default Makefile for ROS systems<br/>
         
           653c3f0 8 months ago Sylvain Joyeux dist: fix documentation generation<br/>
         
           d8f3910 8 months ago Sylvain Joyeux always add the system directories to the list of include dirs<br/>
         
           2278c86 8 months ago Matthias Goldhoorn declare the task's destructor explicitely so that we reduce the cross-linking needs<br/>
         
           44728d2 8 months ago Peter Soetens Merge branch 'toolchain-2.2'<br/>
         
           e1b775e 8 months ago Peter Soetens typekit: use OROCOS_SUFFIX as per v2.3.0 convention.<br/>
         
           2d99174 8 months ago iMoby dist: give more information if oroGen's environment fails to load<br/>
         
           813b6a7 8 months ago Sylvain Joyeux dist: automatically add -DOROCOS_TARGET from the environment variables<br/>
         
           93d9ccd 8 months ago Sylvain Joyeux Revert "Add extracting OROCOS_TARGET from the environment"<br/>
         
           d99d3ef 8 months ago Sylvain Joyeux add an empty History.txt to fix hoe complaints<br/>
         
           088169a 8 months ago Sylvain Joyeux move the max size implementation from OutputPort to Port<br/>
         
           770b226 8 months ago Sylvain Joyeux in "root" typekits, generate the typelib transport for base types<br/>
         
           d49b354 8 months ago Thomas Roehr Add extracting OROCOS_TARGET from the environment<br/>
         
           918c06e 8 months ago Sylvain Joyeux remove unneeded debugging output<br/>
         
           ddf6788 8 months ago Sylvain Joyeux turn keepLastWrittenValue OFF and keepNextWrittenValue ON by default on output ports<br/>
         
           7e5197c 8 months ago Sylvain Joyeux define DeployedTask#trigger_port?(port)<br/>
         
           ee6faaa 8 months ago Sylvain Joyeux fix intermediate type name in typelib's marshaller for opaque types<br/>
         
           5460f3e 9 months ago Sylvain Joyeux more cleanup in rtt-typelib<br/>
         
           3707960 9 months ago Sylvain Joyeux move the generic typelib-based marshalling code in an embedded separate library<br/>
         
           53754f8 9 months ago Janosch Machowinski include string in Convertions.hpp<br/>
         
           666e043 9 months ago Peter Soetens type_info: in case of /std/string: use StdStringTypeInfo<br/>
         
           7ea5927 9 months ago Peter Soetens typegen: remove symlink before creating it<br/>
         
           70dae8f 9 months ago Sylvain Joyeux remove "experimental" note on #export_types<br/>
         
           90b5dff 9 months ago Sylvain Joyeux re-add doing pending loads in Typekit#find_type if the type is not found<br/>
         
           1a7e87e 9 months ago Sylvain Joyeux implement project-level max size specification<br/>
         
           7fe8db2 9 months ago Sylvain Joyeux make the max size computation methods singleton methods of OutputPort<br/>
         
           7fe1a08 9 months ago Sylvain Joyeux refactor max size implementation in OutputPort so that it can be used by orocos.rb<br/>
         
           af2ae7a 9 months ago Sylvain Joyeux add maximum size specification and computation in OutputPort<br/>
         
           0f18cc3 9 months ago Sylvain Joyeux fix transport plugin name generation in deployments for projects that have no typekits<br/>
         
           bd9db63 9 months ago Sylvain Joyeux test: small fixes<br/>
         
           486a548 9 months ago Sylvain Joyeux implement the mqueue transport using the typelib marshallers<br/>
         
           e2efcfd 9 months ago Sylvain Joyeux remove some undeterminism in generated typekits<br/>
         
           e27e8e3 9 months ago Sylvain Joyeux make the CMake code in transports/corba use relative paths<br/>
         
           2d9def1 9 months ago Sylvain Joyeux fix using deployments and mqueue transport<br/>
         
           2ee2db5 9 months ago Sylvain Joyeux remove sources of nondeterminism in the generated C++ code<br/>
         
           c6796cd 9 months ago Sylvain Joyeux it is forbidden to use headers named &lt;project_name&gt;/Types.hpp in orogen<br/>
         
           be5d5b3 9 months ago Matthias Goldhoorn raise an InternalError if #opaque_specification does not find the required specification<br/>
         
           4693e8c 9 months ago Sylvain Joyeux typegen: remove symlink before creating it<br/>
         
           372046c 9 months ago Sylvain Joyeux remove "using namespace RTT" in generated deployments<br/>
         
           bf27a2c 9 months ago Sylvain Joyeux typelib: link ROS libs with libname_typelib<br/>
         
           7a12ba9 9 months ago Sylvain Joyeux typelib: do not unnecessarily copy intermediate_sample=&gt;orocos_sample<br/>
         
           702974b 9 months ago Sylvain Joyeux cmake: forbid compiling the typekit if its input changed<br/>
         
           ebb888f 9 months ago Sylvain Joyeux Use #dependencies and Type#contains? to check for opaques and/or int64s<br/>
         
           cb1a2e7 9 months ago Sylvain Joyeux add missing space after template mark<br/>
         
           334073c 9 months ago Sylvain Joyeux disable registration of arrays of opaque types<br/>
         
           f8f5974 9 months ago iMoby add a gitattribute file to set the diff mode to ruby for .rb files<br/>
         
           27de3e7 9 months ago iMoby spec: fix handling of dynamic ports in merge_ports_from<br/>
         
           bcc7ed7 9 months ago Sylvain Joyeux use find_type in Typekit#map_typeset_to_registry<br/>
         
           b5833d5 9 months ago Sylvain Joyeux make Typekit#find_type(type_class) merge type_class' type definition if it is not included yet<br/>
         
           45e4a5a 9 months ago Sylvain Joyeux fix typo<br/>
         
           9bbb519 9 months ago iMoby gen: fix array registration in the RTT type system<br/>
         
           d816590 9 months ago iMoby make sure that Typekit#find_type returns a Type subclass coming from the typekit own registry<br/>
         
           3751800 9 months ago iMoby fix duplicate code generation in typekits when both the 'all' policy is selected and some types are explicitely selected<br/>
         
           e21b556 9 months ago iMoby rename component =&gt; project in Generation::Typekit<br/>
         
           b58cf94 9 months ago Jakob Schwendner fix to_intermediate for vectors<br/>
         
           123931e 9 months ago Sylvain Joyeux in typekit generation, split between registered and interface types<br/>
         
           39dc02e 9 months ago Sylvain Joyeux add a documentation attribute for tasks<br/>
         
           cad497c 9 months ago Sylvain Joyeux do not explicitely switch to :selected in export_types<br/>
         
           0e58c9e 10 months ago Sylvain Joyeux validate that the types used for opaque intermediates do not contain opaques themselves<br/>
         
           3b9ea19 10 months ago Sylvain Joyeux make 'all' the default type export policy<br/>
         
           ceb1dd9 10 months ago Sylvain Joyeux fix #method_name to convert commas as well<br/>
         
           c1ebc18 10 months ago Sylvain Joyeux do not try to include OpaqueConvertions.hpp from a typekit that has no opaques<br/>
         
           328d681 10 months ago Sylvain Joyeux remove #typelib_type in Property<br/>
         
           953c327 10 months ago Sylvain Joyeux narrow down the handling of Typelib::NotFound in TaskContext#property<br/>
         
           e8e6c27 10 months ago Sylvain Joyeux bump the version number<br/>
         
           44f66bd 10 months ago Sylvain Joyeux allow to override the default type export policy on the command line<br/>
         
           38b3280 10 months ago Alexander Duda fix ImportedProject#typekit<br/>
         
           6fab08c 10 months ago Sylvain Joyeux fix wrong logic for #imported_type? in a2e6e03a4b83028ec9aedf3e2b6960e32e3813bb<br/>
         
           a2e6e03 10 months ago Jakob Schwendner fixes related to using main_project exclusively for type handling in imported projects<br/>
         
           48666d6 10 months ago Sylvain Joyeux make the imported projects use their main project's typekit instead of their own<br/>
         
           fe76e4c 10 months ago Sylvain Joyeux better error message in StaticDeployment#used_typekits<br/>
         
           ac6b8ea 10 months ago Sylvain Joyeux rename component =&gt; project in StaticDeployment<br/>
         
           80dbd96 10 months ago Sylvain Joyeux make StaticDeployment#used_typekits work for both imported and plain projects<br/>
         
           507d2b8 10 months ago Sylvain Joyeux properly merge dynamic ports in merge_ports_from<br/>
         
           2d8e883 10 months ago Janosch Machowinski bugfix, allow members without initializers<br/>
         
           382ab52 10 months ago Janosch Machowinski bugfix, fix typo in add_generation_handler<br/>
         
           c73b952 10 months ago Sylvain Joyeux add generation handlers<br/>
         
           c981f13 10 months ago Sylvain Joyeux doco<br/>
         
           dbb53c0 10 months ago Sylvain Joyeux define has_input_port? and has_output_port?<br/>
         
           8044c11 10 months ago Sylvain Joyeux allow to specify that a dynamic port will trigger its task<br/>
         
           4b22e44 10 months ago Sylvain Joyeux getModelName should always run in caller thread<br/>
         
           e975648 10 months ago Sylvain Joyeux allow dynamic ports to have a 'nil' type if their type is dynamic as well<br/>
         
           c63168b 10 months ago Sylvain Joyeux disable the maxOverruns check by default<br/>
         
           5d80c48 10 months ago Thomas Roehr when looking for clashes in orocos.rb, ignore any error that arise in require<br/>
         
           56438e4 10 months ago Sylvain Joyeux fix infinite loop recursion in TaskContext#inspect for imported projects<br/>
         
           bbe5619 10 months ago Sylvain Joyeux cache the RTT typekit object<br/>
         
           5c6e781 10 months ago Sylvain Joyeux in find find_dynamic_*_port, move the type resolution out of the loop<br/>
         
           a85dc90 10 months ago Sylvain Joyeux display the generated marshalling code when it failed to be loaded<br/>
         
           e68329e 10 months ago Sylvain Joyeux fix some other places where an array was used as a string<br/>
         
           d57e99f 11 months ago Sylvain Joyeux 1.9's Pathname does not convert automatically to string anymore<br/>
         
           588da8b 11 months ago Sylvain Joyeux rename expected_trigger_latency to worstcase_XXX and add a worstcase_processing_time attribute to TaskContext<br/>
         
           330f346 11 months ago Sylvain Joyeux remove the default_update_trigger mechanism<br/>
         
           bcf88a2 11 months ago Sylvain Joyeux mark the state port as being triggered only once per update<br/>
         
           d59c397 11 months ago Sylvain Joyeux rework the output port triggering declaration logic a bit<br/>
         
           780aaf6 11 months ago Sylvain Joyeux fix TaskContext#port_driven<br/>
         
           8ae9e1a 11 months ago Sylvain Joyeux fix TaskContext#each_port<br/>
         
           275d6ac 11 months ago Sylvain Joyeux in TaskContext#pretty_print, display port triggers<br/>
         
           2f51198 11 months ago Sylvain Joyeux in deployments, map the activity type to what the activity is, not its RTT class<br/>
         
           e58fdc8 11 months ago Sylvain Joyeux in deployment, rename context into task_model and component into project<br/>
         
           0df65e7 11 months ago Sylvain Joyeux cache values returned by #orogen_project_description and #orogen_typekit_description<br/>
         
           c8d34d5 11 months ago Sylvain Joyeux define Spec::TaskContext#each_port<br/>
         
           529f1c3 11 months ago Sylvain Joyeux fix documentation of each_input_port<br/>
         
           71ef075 11 months ago Sylvain Joyeux start the big cleanup<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/corridor_planner">
         <th>planning/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="30"> 17 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_30"><td>
         
           43d0acb 7 weeks ago Sylvain Joyeux ruby: properly handle paths of size 1 in Plan#path_to_corridor<br/>
         
           44529e5 7 weeks ago Sylvain Joyeux ruby: define Plan.from_path<br/>
         
           b3ba4eb 3 months ago Jakob Schwendner update to eigen3<br/>
         
           d4d28d4 4 months ago Sylvain Joyeux ruby: set the default target point radius to 0.5 (1m width)<br/>
         
           0b71f63 4 months ago Sylvain Joyeux more efficient isSingleton() test<br/>
         
           a1d92b9 4 months ago Sylvain Joyeux fix some gcc "unused variable" warnings<br/>
         
           93184a8 4 months ago Sylvain Joyeux add quite a bit of debugging output<br/>
         
           be4454f 4 months ago Sylvain Joyeux remove short corridors at the end of simplify()<br/>
         
           63997e9 4 months ago Sylvain Joyeux filter out possible connections to obstacles<br/>
         
           6c17352 4 months ago Sylvain Joyeux fix removePointTurnConnections for connections to corridor backs<br/>
         
           77258bd 4 months ago Sylvain Joyeux fix redundant corridor removal in the non-DAG case<br/>
         
           f08750e 4 months ago Sylvain Joyeux small style fix<br/>
         
           5ae9a19 4 months ago Sylvain Joyeux fix width of displayed curves<br/>
         
           5652541 4 months ago Sylvain Joyeux ruby: fix extending corridors at endpoints in #path_to_corridor<br/>
         
           a169c4a 4 months ago Sylvain Joyeux ruby: in #path_to_corridor, don't "close" the corridor at the endpoints<br/>
         
           41c1e61 4 months ago Sylvain Joyeux in Corridor::concat, update the min/max width as well<br/>
         
           b3a44f8 4 months ago Sylvain Joyeux ruby: in #join, update the min/max width as well<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/nav_graph_search">
         <th>planning/nav_graph_search</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="31"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_31"><td>
         
           84cbc91 3 months ago Jakob Schwendner update to eigen3<br/>
         
           46fdf0a 4 months ago Momchil Ivanov Inflation added, handled by findAver and findMax operations.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="planning/orogen/corridor_planner">
         <th>planning/orogen/corridor_planner</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="32"> 7 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_32"><td>
         
           c9a2282 7 weeks ago Sylvain Joyeux scripts/run: allow to specify a configuration file with --conf<br/>
         
           63cf4ee 7 weeks ago Sylvain Joyeux scripts/run: use the --env=PATH option instead of an argument to set the MLS environment<br/>
         
           672f52b 7 weeks ago Sylvain Joyeux scripts/run: remove the unused usage function<br/>
         
           1922c80 7 weeks ago Sylvain Joyeux scripts: be robust to failure in #start and #configure<br/>
         
           1b35e19 7 weeks ago Sylvain Joyeux scripts: add a button to export the current corridor in a log file<br/>
         
           fc90e9d 7 weeks ago Sylvain Joyeux scripts: use the Vizkit3D widget instead of main window<br/>
         
           ced7c1e 4 months ago Sylvain Joyeux fix freeze-after-restart by reconfiguring completely<br/>
         
         </td></tr>
       
       



       <tr class="name" id="rtt">
         <th>rtt</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="33"> 417 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_33"><td>
         
           03c1f9e 4 months ago mboukamp Added additional findpath for the Pthread Library The PThread library is at leased at debian package libc6-dev 2.13-7 moved. This Commit adds an additional find_path for the Cmake scripts<br/>
         
           4e3221c 5 months ago Thomas Roehr Add a FindBoost.cmake version that works with cmake &gt;=2.6.0 Fixes the behaviour when exporting BOOST_ROOT or BOOST_INCLUDEDIR/BOOST_LIBRARY allowing multiple boost versions to be installed<br/>
         
           f375318 5 months ago Peter Nemeth Fixed previous faulty correction.<br/>
         
           ca131e9 5 months ago Peter Nemeth Removed lock - needed for ARM.<br/>
         
           b0124b6 6 months ago Peter Soetens useorocos: don't lowercase the .pc filename.<br/>
         
           f25640b 6 months ago Peter Soetens os: fixup outstanding oro_arch transition bugs.<br/>
         
           5024e64 6 months ago Peter Soetens Merge branch 'toolchain-2.3'<br/>
         
           ac7f2b7 6 months ago Peter Soetens doc: fix long standing XML tag bug in corelib manual.<br/>
         
           547af91 6 months ago Peter Soetens doc: update link to gitorious.<br/>
         
           4e61ba6 6 months ago Peter Soetens doc: update NEWS brief statement.<br/>
         
           7a5262c 6 months ago Peter Soetens debian: bump to version 2.4.0<br/>
         
           c0825a7 6 months ago Peter Soetens cmake/doc: prepare and bump for 2.4.0 release.<br/>
         
           5fb61cd 6 months ago Peter Soetens debian: update to new os/oro_ headers.<br/>
         
           0948253 6 months ago Peter Soetens plugins: fix boost path bug for boost &gt;= 1.46 too.<br/>
         
           9299b30 6 months ago Peter Soetens Merge remote branch 'rock-rtt/master'<br/>
         
           b50c7a7 6 months ago Peter Soetens os: rewrite atomic API to use GCC intrinsics.<br/>
         
           c7ed8ac 6 months ago Peter Soetens cmake: remove extra parenthesis to support older cmake versions.<br/>
         
           f5d6e3c 6 months ago Peter Soetens cmake: remove FindBoost.cmake again<br/>
         
           01b82b8 6 months ago Peter Nemeth Merge branch 'master' of git://gitorious.org//orocos-toolchain/rock-rtt<br/>
         
           fd26256 6 months ago Peter Nemeth Typo fixed in Buffer, missing boost lambda header added in OperationInterfacePartFused.<br/>
         
           60c9042 6 months ago Peter Nemeth arm: fix name clashing with boost thread.<br/>
         
           87e6c82 6 months ago Peter Nemeth Add ARMv6 and ARMv7 support.<br/>
         
           0d94577 6 months ago Peter Soetens Merge branch 'toolchain-2.3'<br/>
         
           f584586 6 months ago Peter Soetens logging: rewrite streaming to allow formatting<br/>
         
           07eaf64 6 months ago Peter Soetens doc: minor updates to drawings for manuals.<br/>
         
           377ceba 6 months ago Peter Soetens doc: update docs on conn policy mechanism.<br/>
         
           2e2e45a 6 months ago Peter Soetens cmake: add .../include/orocos to include dirs variable.<br/>
         
           c1a2dbd 6 months ago Peter Soetens cmake: allow multiple invocations of find_package(OROCOS-RTT)<br/>
         
           887d955 6 months ago Peter Soetens doc: update svg drawings for 2.3 release.<br/>
         
           161a82d 6 months ago Peter Soetens logger: avoid cow kicking-in and use c_str() for thread safety.<br/>
         
           534ff33 6 months ago Peter Soetens useorocos: fix bug #856 regarding .pc include path in ros environments<br/>
         
           f6d91a8 6 months ago Peter Soetens transports: return shared_ptr in createStream<br/>
         
           e09a4c3 6 months ago Sylvain Joyeux fix loading plugins by absolute path on boost 1.42<br/>
         
           7453530 6 months ago Peter Soetens mqueue: close queues and slightly improve error messages.<br/>
         
           35dee92 6 months ago Peter Soetens ports: re-implement data source reading of ports.<br/>
         
           714c4d8 6 months ago Peter Soetens Merge remote branch 'rock-rtt/master'<br/>
         
           da91403 6 months ago Peter Soetens ports: make ports non-copyable.<br/>
         
           d978350 6 months ago Peter Soetens Merge branch 'toolchain-2.3' of gitorious.org:/orocos-toolchain/rtt into toolchain-2.3<br/>
         
           c35c0a4 6 months ago Peter Soetens useorocos: don't install executables in ROS_ROOT environments<br/>
         
           2118b90 6 months ago Peter Soetens doc: clarifications to how ports work.<br/>
         
           8b009a7 6 months ago Peter Soetens cmake: disable removing of pluginpath.cpp for in-tree builds.<br/>
         
           4b70f06 7 months ago Sylvain Joyeux use overload instead of default argument the copy_old_data argument of InputPort::read<br/>
         
           180e690 7 months ago Peter Soetens tests: only init mempool if OS_RT_MALLOC is enabled.<br/>
         
           0b867fd 7 months ago Peter Soetens useorocos: carry-on if no manifest.xml file is found.<br/>
         
           e5ff24a 7 months ago Peter Soetens typekit: move 'array' into the STD_TYPES section<br/>
         
           c017a1f 7 months ago Peter Soetens debian: add dependency on boost-filesystem<br/>
         
           471fe71 7 months ago Peter Soetens base: fix bug #852: Bug in DataObjectLockFree (missed data initialization leading to malloc when using std::vector data)<br/>
         
           d28a28a 7 months ago Peter Soetens debian: bump version number to 2.3.1<br/>
         
           0083b89 7 months ago Peter Soetens cmake: bump version number to 2.3.1<br/>
         
           f9f3316 7 months ago Peter Soetens plugins: fix plugin-path when building ros debian packages.<br/>
         
           c956984 7 months ago Peter Soetens debian: rtt/Component.hpp is not installed<br/>
         
           a48717d 7 months ago Peter Soetens fix bug #849: Attribute::get doesn't work anymore over CORBA.<br/>
         
           1b84141 7 months ago Peter Soetens doc: remove dead image about buffers vs data objects.<br/>
         
           d132647 7 months ago Peter Soetens doc: remove section about NameServer<br/>
         
           102f9a9 7 months ago Peter Soetens doc: fix getting pointer to scripting service.<br/>
         
           b26b86f 7 months ago Sylvain Joyeux document the copy_old_data flag in the port's operation<br/>
         
           667d807 7 months ago Sylvain Joyeux add the copy_old_data flag to readNewest as well<br/>
         
           2ea0e9f 7 months ago Peter Soetens coverage: fix renamed option for enabling coverage.<br/>
         
           cf03f82 7 months ago Peter Soetens useorocos: add verbose message when package is not a ros package.<br/>
         
           b996782 7 months ago Peter Soetens useorocos: don't abort when package is not a ROS package in orocos_use_package<br/>
         
           d54fdb0 7 months ago Peter Soetens Refs #846: Initialize TLSF memory pool in remaining unit tests<br/>
         
           5e2c271 7 months ago Peter Soetens plugins: cleanup plugin loading API furthermore.<br/>
         
           a9e0492 7 months ago Peter Soetens cmake: remove stale pluginpath.cpp file if present<br/>
         
           7c07a5a 7 months ago Peter Soetens Fixes #846: Initialize TLSF memory pool in each unit test<br/>
         
           0e93ba5 7 months ago Peter Soetens cmake: Fix EXTRA_TESTS typo<br/>
         
           550e11a 7 months ago Peter Soetens Merge commit 'refs/merge-requests/14' of git://gitorious.org/orocos-toolchain/rtt into toolchain-2.3<br/>
         
           141476a 7 months ago Stephen Roderick cmake: Add option to set CTest timeout<br/>
         
           d56f12a 7 months ago Stephen Roderick Fixes #836: Test timeout ignored by ctest<br/>
         
           81639ec 7 months ago Stephen Roderick tests: Only run setup executables if they exist<br/>
         
           a63337e 7 months ago Stephen Roderick tests: Do not try to kill non-existent process<br/>
         
           e040eb9 7 months ago Stephen Roderick useorocos: Do not use '-z defs' on macosx<br/>
         
           0d65e8c 7 months ago Stephen Roderick useorocos: Fix xpath manifest handling for macosx<br/>
         
           ae331c8 7 months ago Stephen Roderick cmake: Add code coverage<br/>
         
           463d8da 7 months ago Peter Soetens compilation errors rtt 2.3.0 boost 1.46<br/>
         
           e5669e6 7 months ago Peter Soetens cmake: fix orocos cmake macros<br/>
         
           ce5d5f9 7 months ago Peter Soetens Revert "cmake: fix orocos cmake macros"<br/>
         
           4549c3a 7 months ago Peter Soetens component: remove anonymous namespace since it hides symbols<br/>
         
           abee3c3 7 months ago Peter Soetens cmake: fix orocos cmake macros<br/>
         
           05e0c59 8 months ago Peter Soetens scripting: test + fix loops-in-loops<br/>
         
           a68ce1b 8 months ago Peter Soetens scripting: add parsing hex values<br/>
         
           625eb27 8 months ago Peter Soetens useorocos: don't link with the RTT typekit by default.<br/>
         
           5885365 8 months ago Peter Soetens properties: fix faulty error message during composition<br/>
         
           99ceb77 8 months ago Peter Soetens cmake: handle multiple paths in RTT_COMPONENT_PATH correctly and reset cmake variables before searching for libraries<br/>
         
           0cb0e6b 8 months ago Peter Soetens cmake: Check for __APPLE__ instead of __unix__ on Mac OS X, tests dir<br/>
         
           e8f3774 8 months ago Peter Soetens useorocos: prefer looking in the install directory above the package's own directory<br/>
         
           a17e8bb 8 months ago Peter Soetens cmake: Check for __APPLE__ instead of __unix__ on Mac OS X<br/>
         
           40a4cb4 8 months ago Peter Soetens typekit: reorder extern template definitions to avoid gcc warnings<br/>
         
           e294ee8 8 months ago Peter Soetens typekit: always provide the 'extern' modifier<br/>
         
           b042a3c 8 months ago Peter Soetens typekit: use typekit/Types.hpp when building constructors.<br/>
         
           defe7f3 8 months ago Peter Soetens config: fixup wrong viral EXPORT macros on win32.<br/>
         
           1f1c77e 8 months ago Peter Soetens plugin: be more verbose why certain paths are not found.<br/>
         
           7bfa862 8 months ago Peter Soetens tests: make plugin loading in tests work on win32.<br/>
         
           b16ad11 8 months ago Peter Soetens useorocos-rtt: fix rpaths for installation directory.<br/>
         
           014cfbe 8 months ago Peter Soetens cmake: already define the OROCOS_SUFFIX when looking for RTT components.<br/>
         
           25d0d7d 8 months ago Peter Soetens cmake: default OROCOS_SUFFIX to OROCOS_TARGET<br/>
         
           b8df67c 8 months ago Peter Soetens debian: update installation directory of libraries.<br/>
         
           6a53de9 8 months ago Peter Soetens doc: put some emphasis (titles) on caveats.<br/>
         
           51ed4d2 8 months ago Peter Soetens doc: update news for 2.3 release.<br/>
         
           91697d4 8 months ago Peter Soetens doc: update changes document for 2.3 release.<br/>
         
           e3e9b27 8 months ago Peter Soetens cmake: fix orocos_target environment variable detection<br/>
         
           49b291a 8 months ago Peter Soetens cmake: fixup generation of SetupTests and adapt plugin test.<br/>
         
           295703d 8 months ago Peter Soetens cmake: Add SetupTests target for copying cpf files.<br/>
         
           59b68a2 8 months ago Peter Soetens tests: use PREFIX hack to create plugins in parent dir.<br/>
         
           aa74de2 8 months ago Peter Soetens tests: fixup crashes with service management.<br/>
         
           d11c356 8 months ago Peter Soetens services: add service to owner when created.<br/>
         
           ab77066 8 months ago Peter Soetens marshalling: allow char property to be empty.<br/>
         
           9495a28 8 months ago Peter Soetens tests: fix crashes in scripting tests<br/>
         
           3d04d4a 8 months ago Peter Soetens corba: fix some unused variable warnings.<br/>
         
           a844b72 8 months ago Peter Soetens debian: update version number<br/>
         
           32661d3 8 months ago Peter Soetens xenomai: use sigaction instead of signal for SIGXCPU.<br/>
         
           d69bd36 8 months ago Peter Soetens Merge branch 'toolchain-2.2'<br/>
         
           7a39fcd 8 months ago Peter Soetens doc: update version numbers to accurately model current status<br/>
         
           d7324ab 8 months ago Peter Soetens fix bug #809: Property: ERROR when reading in long value<br/>
         
           d336f02 8 months ago Peter Soetens cmake: add rpath settings for the rtt-macros<br/>
         
           b2392ab 8 months ago Peter Soetens make: use MAKE variable instead of plain 'make'.<br/>
         
           fcd01cc 8 months ago Peter Soetens transports: no longer assume that the given name is the same as ti-&gt;getTypeName()<br/>
         
           024c7af 8 months ago Peter Soetens corba: fetch services from the parent provider<br/>
         
           bf4a67b 8 months ago Peter Soetens Skip same type port connection.<br/>
         
           cafb809 8 months ago Matthias Goldhoorn use the pkg-config Requires: mechanism to add dependency of orocos-corba on omniorb<br/>
         
           95e5a2b 8 months ago Peter Soetens os: fix race in setPeriod<br/>
         
           1e8320f 8 months ago Peter Soetens services: set owner when new service is provided<br/>
         
           94dc314 8 months ago Peter Soetens win32: disable some warnings when building client code<br/>
         
           bacc981 8 months ago Peter Soetens service: revert enable_shared_from_this2 hack for boost &lt; 1.40<br/>
         
           3e21d8e 8 months ago Peter Soetens component: fix bc macro, it takes no arguments.<br/>
         
           85d8a20 8 months ago Peter Soetens mqueue: update to new TypeInfo api.<br/>
         
           5955532 8 months ago Peter Soetens corba: fix double delete in data flow channel cleanup<br/>
         
           bed1fe4 8 months ago Peter Soetens win32: always build with intrinsics<br/>
         
           baa60d4 8 months ago Peter Soetens win32: fix major bug for synchronizing with terminating thread.<br/>
         
           06a4fb1 8 months ago Peter Soetens types: break TypeInfo API by returning shared_ptr instead of ptr<br/>
         
           5e0d3f4 8 months ago Peter Soetens base: fix initialisation of oro_atomic_t<br/>
         
           8c99b7f 8 months ago Peter Soetens locked: fix major bug in LockedQueue::dequeue function.<br/>
         
           20790e5 8 months ago Peter Soetens cmake: bump version number to 2.3.0<br/>
         
           a63ec39 8 months ago Peter Soetens internal: fix bug in enable_shared_from_this2<br/>
         
           7fb37b6 8 months ago Peter Soetens typekit: minor warning fixes for win32 compiler.<br/>
         
           2cb1eab 8 months ago Peter Soetens tests: fix win32 compiler warnings.<br/>
         
           dfd20fa 8 months ago Peter Soetens extras: fix win32 compiler warnings in ReadOnlyPointer.<br/>
         
           af73482 8 months ago Peter Soetens internal: fix enable_shared_from_this wrt weak_ptr API<br/>
         
           5bd60dc 8 months ago Peter Soetens win32: suppress extern C vs C++ API warning.<br/>
         
           dc46bc7 8 months ago Peter Soetens win32: fix unused variable warnings<br/>
         
           74f78e8 8 months ago Peter Soetens Merge branch 'toolchain-2.2'<br/>
         
           4fd873b 8 months ago Peter Soetens Revert "cmake: bump version number to 2.3.0"<br/>
         
           3ef4b3a 8 months ago Peter Soetens Merge branch 'toolchain-2.2'<br/>
         
           5be9b26 8 months ago Peter Soetens Initial changes document for 2.3 release.<br/>
         
           6f8c18f 8 months ago Peter Soetens useorocos: also install ROS components in target subdir<br/>
         
           d06684d 8 months ago Peter Soetens service: use new boost enable_shared_from_this2 implementation<br/>
         
           fdce535 8 months ago Peter Soetens win32: Minor fixes for MSVC10<br/>
         
           da4d68c 8 months ago Peter Soetens win32: clear out some warnings and add /EHa for tests<br/>
         
           5443b8b 8 months ago Peter Soetens cmake: use the OROCOS_TARGET environment variable if provided.<br/>
         
           0f41f5b 8 months ago Peter Soetens doc: update rtt-cheatsheet to v1.1<br/>
         
           3ff44c9 8 months ago Peter Soetens useorocos: only be verbose if that var is set in cmake.<br/>
         
           1afc978 8 months ago Peter Soetens doc: initial changes document.<br/>
         
           76640e2 8 months ago Peter Soetens components: add ORO_CREATE_COMPONENT_LIBRARY macro<br/>
         
           84cb0e2 8 months ago Peter Soetens cmake: Fix building both debug/release in win32<br/>
         
           9945ca5 8 months ago Peter Soetens cmake: fix SHARED typo in orocos_executable<br/>
         
           91663ed 8 months ago Peter Soetens cmake: revert conditionaly copying of plugins<br/>
         
           e3c1b07 8 months ago Peter Soetens types: revert including of typekit/Types.hpp<br/>
         
           db1e847 8 months ago Peter Soetens cmake: fixup (again) typekit/plugin install for unit tests.<br/>
         
           61c89c3 8 months ago Peter Soetens cmake: fix up plugin/typekit copying for unit tests.<br/>
         
           d3f43a0 8 months ago Peter Soetens cmake: fix typekit/plugin copying in case path contains spaces.<br/>
         
           d773260 8 months ago Peter Soetens cmake: cmake fixes to get unit tests working on windows-xp.<br/>
         
           ce2935b 8 months ago Sylvain Joyeux core: display log messages with additional information when updateHook() or errorHook() throw<br/>
         
           acf5929 8 months ago Peter Soetens win32: minor tweak for MSVC<br/>
         
           7041183 8 months ago Peter Soetens win32 test: missing boost unit test library<br/>
         
           3bdf1bb 8 months ago Peter Soetens win32 test: missing symbols<br/>
         
           cbd9d75 8 months ago Peter Soetens win32: disable MSVC extern template warning.<br/>
         
           bafdf12 8 months ago Peter Soetens types: add RTT_TYPEKIT_API and conditional extern to templates<br/>
         
           3374645 8 months ago Sylvain Joyeux mqueue: publish the MQLibPlugin class<br/>
         
           9995f34 8 months ago Sylvain Joyeux mqueue: fix read/write vs. disconnection race condition in MQ transport<br/>
         
           7fedea0 8 months ago Peter Soetens Merge branch 'toolchain-2.2'<br/>
         
           257e8b0 8 months ago Peter Soetens cmake: bump version number to 2.3.0<br/>
         
           4119c75 8 months ago Peter Soetens doc: fix typos in typekit manual.<br/>
         
           fdc6dfe 8 months ago Peter Soetens types: allow to return empty bags in decomposition<br/>
         
           553f506 8 months ago Peter Soetens corba: add missing include in connection policy.<br/>
         
           c784f99 8 months ago Peter Soetens tests: remove capacity test since it's not defined what the result will be<br/>
         
           f5e4035 8 months ago Peter Soetens win32: fix cmake error in UseOROCOS-RTT.<br/>
         
           7c36e12 8 months ago Peter Soetens win32: fix compile error when boost include directory contains spaces.<br/>
         
           c78cc29 8 months ago Peter Soetens win32: fix linking error of corba-ipc-server test<br/>
         
           ecd5e4d 8 months ago Peter Soetens Fix various exports for win32.<br/>
         
           285653c 8 months ago Peter Soetens Disable boost auto-linking on win32.<br/>
         
           1b68eed 8 months ago Peter Soetens Fix types-test that was assuming that the string capacity was equal to size.<br/>
         
           a3e97d8 8 months ago Peter Soetens Fix installation path of DLL on win32.<br/>
         
           ba4f123 8 months ago Peter Soetens Fix linking with ACE and TAO for both debug and release config.<br/>
         
           c395695 8 months ago Peter Soetens Fix name clashing with boost 1.44.<br/>
         
           b855e05 8 months ago Peter Soetens cmake: link with typekit if plugin/transport includes Types.hpp<br/>
         
           2a97a74 8 months ago Sylvain Joyeux corba: fix crash on connection creation for OOB if transport is not there<br/>
         
           5ab9296 8 months ago Sylvain Joyeux core: add keepNextWrittenValue<br/>
         
           5cbb252 8 months ago Peter Soetens Merge branch 'master-with-jsreng'<br/>
         
           5f891c4 8 months ago Peter Soetens types: cleanup old classes from rtt-types-fwd<br/>
         
           cca607d 8 months ago Peter Soetens types: rearrange extern templates in order to please gcc<br/>
         
           1344157 8 months ago Peter Soetens internal: put VDS specialisation in proper namespace.<br/>
         
           78af75b 8 months ago Peter Soetens internal: remove superfluous implementation for DS&lt;bool&gt;<br/>
         
           f00614a 8 months ago Peter Soetens extras: remove extern template defs from MultiVector<br/>
         
           1c86389 8 months ago Peter Soetens SendHandleC: move members to pimpl<br/>
         
           0198149 8 months ago Sylvain Joyeux core: fix thread-safety of OutputPort's last sample / initial sample handling<br/>
         
           93a3b71 8 months ago Peter Soetens Merge branch 'master-extern-template' into master-clang-extern-template<br/>
         
           a04d0fb 8 months ago Peter Soetens clang: import operators n std namespace to please clang.<br/>
         
           ba9b3b2 8 months ago Peter Soetens datasource: don't test offsetpart datasource for now<br/>
         
           9ac78b9 8 months ago Peter Soetens clang: minor warning fixes<br/>
         
           244f371 8 months ago Peter Soetens tao: fix implementation of disconnect in remote ports<br/>
         
           1c18f59 8 months ago Peter Soetens scripting: fix implementation of valid in call function<br/>
         
           95a88c1 8 months ago Peter Soetens clang: variour re-arrangements to please clang<br/>
         
           40ca9f1 8 months ago Peter Soetens clang: minor updates for clang support.<br/>
         
           5e449e7 8 months ago Peter Soetens attributes: use const references in API<br/>
         
           3a5865e 8 months ago Peter Soetens tests: remove capacity test since it's not defined what the result will be<br/>
         
           3a92f5c 8 months ago Peter Soetens types: detect double type registration, report it and install an alias<br/>
         
           889e444 8 months ago Peter Soetens corba: fix missing include of config file.<br/>
         
           8c2533e 8 months ago Sylvain Joyeux Merge remote branch 'orocos/toolchain-2.2'<br/>
         
           326e978 8 months ago Peter Soetens Merge remote branch 'phamelin/master-win32-ready'<br/>
         
           ce1fa73 8 months ago Peter Soetens typekit: allow to exclude vector/string implementations.<br/>
         
           098db87 9 months ago Philippe Hamelin win32: fix install path of DLLs for components, typekit and plugins.<br/>
         
           7c740e9 9 months ago Philippe Hamelin win32: fix cmake error in UseOROCOS-RTT.<br/>
         
           65f1924 9 months ago Philippe Hamelin win32: fix compile error when boost include directory contains spaces.<br/>
         
           f1a727e 9 months ago Philippe Hamelin win32: fix linking error of corba-ipc-server test<br/>
         
           1c8425e 9 months ago Philippe Hamelin Fix various exports for win32.<br/>
         
           e1c1116 9 months ago Philippe Hamelin Disable boost auto-linking on win32.<br/>
         
           7808011 9 months ago Philippe Hamelin Fix types-test that was assuming that the string capacity was equal to size.<br/>
         
           d39f5ef 9 months ago Philippe Hamelin Fix installation path of DLL on win32.<br/>
         
           a892916 9 months ago Philippe Hamelin Fix linking with ACE and TAO for both debug and release config.<br/>
         
           0b5e925 9 months ago Philippe Hamelin Fix name clashing with boost 1.44.<br/>
         
           c3b8798 9 months ago Peter Soetens typekit: include explicit instantions first<br/>
         
           8d339d1 9 months ago Peter Soetens internal: fix export tag for bad_assignment<br/>
         
           d3deabd 9 months ago Peter Soetens types: tag the template class defs for export<br/>
         
           9ce2587 9 months ago Peter Soetens property: remove custom extern template for properties<br/>
         
           d013e4b 9 months ago Peter Soetens types: include extern templates in typekit cpp<br/>
         
           2a7b6f5 9 months ago Peter Soetens types: split Types.hpp into pure RTT and primitive C types<br/>
         
           54f66ff 9 months ago Peter Soetens cmake: link with typekit in orocos libraries.<br/>
         
           9215f43 9 months ago Peter Soetens types: provide 'extern template' when including RTT.hpp<br/>
         
           d7d6bdf 9 months ago Peter Soetens git: update .gitignore file list.<br/>
         
           589479b 9 months ago Peter Soetens doc: add front page image source.<br/>
         
           06bbdb1 9 months ago Peter Soetens tests: add (unused) matrix type info class for types test.<br/>
         
           8e4f82c 9 months ago Peter Soetens attribute: add missing return statement.<br/>
         
           7bab329 9 months ago Peter Soetens useorocos: detect user-defined uninstall target<br/>
         
           b781fd5 9 months ago Peter Soetens cmake: always show the CORBA_IMPLEMENTATION option<br/>
         
           8509009 9 months ago Peter Soetens Disable boost auto-linking on win32.<br/>
         
           a907802 9 months ago Peter Soetens Fix types-test that was assuming that the string capacity was equal to size.<br/>
         
           d7317bd 9 months ago Peter Soetens Fix installation path of DLL on win32.<br/>
         
           b842119 9 months ago Peter Soetens Fix linking with ACE and TAO for both debug and release config.<br/>
         
           cb4f0d1 9 months ago Peter Soetens Fix name clashing with boost 1.44.<br/>
         
           a7aac46 9 months ago Peter Soetens corba: rewrite TAO specific specialisation for sequence&lt;string&gt;.<br/>
         
           41c1699 9 months ago Peter Soetens corba: fix compilation fixes after win32 merge<br/>
         
           dc46dc4 9 months ago Peter Soetens Merge remote branch 'jsreng/master' into master-with-jsreng<br/>
         
           2bbf851 9 months ago Peter Soetens configuration: implement addProperty(name, prop) to catch adding objects<br/>
         
           9498dd5 9 months ago Peter Soetens typekit: backport StdString type info constructor<br/>
         
           bc882fe 9 months ago Peter Soetens types: remove rogue 'virtual' keyword from class def.<br/>
         
           7d3a6c7 9 months ago Peter Soetens useorocos: fix possible conflict with user's invocation of ros macros<br/>
         
           9e54382 9 months ago Peter Soetens Merge branch 'toolchain-2.2'<br/>
         
           ea34ef6 9 months ago Peter Soetens useorocos: fix various issues in .pc generation and .pc usage<br/>
         
           fc7e9c3 9 months ago Peter Soetens tests: fix unchecked var test in service port test.<br/>
         
           fad9960 9 months ago Peter Soetens tests: fix warning about small margin not being used.<br/>
         
           a4c6d77 9 months ago Peter Soetens operators: remove the dead 'dotop' code<br/>
         
           0df48d3 9 months ago Peter Soetens taskcontext: sanely implement stop() and breakUpdateHook()<br/>
         
           2a4f283 9 months ago Peter Soetens cmake: if no OROCOS_SUFFIX is set, use /OROCOS_TARGET<br/>
         
           79add50 9 months ago Peter Soetens component: fix typos in component creation macros.<br/>
         
           5ad6b10 9 months ago Peter Soetens Add real-time output string stream.<br/>
         
           7da030f 9 months ago Peter Soetens cmake: bump version to 2.2.1<br/>
         
           f562ed0 9 months ago Peter Soetens FileDescriptorActivity: remove unused var w<br/>
         
           214889e 9 months ago Peter Soetens FileDescriptorActivity: use runner pointer from Activity class instead of local one<br/>
         
           4f65e16 9 months ago Janosch Machowinski compile as release<br/>
         
           73454a0 9 months ago Janosch Machowinski bugfix, release sample on clear() operation<br/>
         
           b25ecea 9 months ago Peter Soetens types: allow to find out if a type supports streams<br/>
         
           56c6d55 9 months ago Peter Soetens marsh: add installation of PropertyBagIntrospector header<br/>
         
           eee9ab7 9 months ago Peter Soetens types: add missing include for sequence types<br/>
         
           5fd115a 9 months ago Janosch Machowinski remove invalid assert in BufferLockFree<br/>
         
           598a0a1 9 months ago Peter Soetens Merge branch 'toolchain-2.2-conn-inspection'<br/>
         
           9a11b84 9 months ago Peter Soetens Merge branch 'toolchain-2.2-newlayout'<br/>
         
           01797ba 9 months ago Peter Soetens Merge branch 'toolchain-2.2-imports'<br/>
         
           b5adcb6 9 months ago Peter Soetens Merge branch 'toolchain-2.2-decomposition'<br/>
         
           0deda70 9 months ago Peter Soetens Merge commit 'refs/merge-requests/13' of git://gitorious.org/orocos-toolchain/rtt<br/>
         
           17f68f0 9 months ago Peter Soetens attribute: fix compilation and consistency errors<br/>
         
           c8ca441 9 months ago Janosch Machowinski bugfix, make BufferLockFree work if bufsize == 1<br/>
         
           5437ddb 9 months ago Janosch Machowinski add copy_old_data flag to InputPortInterface<br/>
         
           e760ddb 9 months ago Janosch Machowinski compilefix: make testcases match new ChannelElement API<br/>
         
           61f45bc 9 months ago Peter Soetens tests: don't enable tests by default<br/>
         
           85d75e0 9 months ago Janosch Machowinski bugfix: release last sample from buffer if ChannelBufferElement is removed<br/>
         
           6c04a4f 9 months ago Janosch Machowinski added ability to choose weather old data should be copied on read operation<br/>
         
           22dfc73 9 months ago Janosch Machowinski reduce number of sample copies during data transport<br/>
         
           6b57b36 9 months ago Janosch Machowinski Extended BufferInterface by PopWithoutRelease and Release<br/>
         
           a97443c 9 months ago Peter Soetens cmake: force remembering the INSTALL_PATH and CMAKE_INSTALL_PREFIX settings.<br/>
         
           caadd54 9 months ago Peter Soetens cmake: cleanup orocos_executable macro<br/>
         
           0173f64 9 months ago Peter Soetens cmake: update find macros to also check for Orocos-RTT<br/>
         
           2a1d3e8 9 months ago Peter Soetens cmake: option to force using the tiny marshaller instead of xerces.<br/>
         
           d79e802 9 months ago Peter Soetens cmake: fix find_package example.<br/>
         
           53d7559 9 months ago Sylvain Joyeux test: fix corba_mqueue_ipc_test<br/>
         
           cb499bb 9 months ago Sylvain Joyeux internal: make DataSource.hpp significantly less dependent on the MPL<br/>
         
           89bd9f5 9 months ago Sylvain Joyeux mqueue: make it zero-copy on write and single-copy on read, fix handling of data_sample<br/>
         
           7c5a094 9 months ago Sylvain Joyeux rtt: in OutputPort&lt;T&gt;, separate behaviour of setDataSample and keepLastWrittenValue<br/>
         
           05ad9cd 9 months ago Sylvain Joyeux remove some unnecessary recursive includes<br/>
         
           de552fd 9 months ago Sylvain Joyeux mqueue: return false in mqWrite only if the error is not that the buffer is full<br/>
         
           7e11b05 9 months ago Sylvain Joyeux mqueue: make mqWrite return false if the marshalling failed<br/>
         
           3084867 9 months ago Sylvain Joyeux mqueue: pass the actual message size to updateFromBlob, instead of the max message size<br/>
         
           b9af501 9 months ago Sylvain Joyeux mqueue: if channelReady throws, display the exception for easier debugging<br/>
         
           31c29e4 9 months ago Sylvain Joyeux base: remove /* within a comment<br/>
         
           8ab1952 9 months ago Sylvain Joyeux base: add getRawPointer() and getRawConstPointer() to the DataSource interface<br/>
         
           ad12956 9 months ago Peter Soetens scripting: fix wrong order of evaluating sums scripts<br/>
         
           2ece028 9 months ago Sylvain Joyeux types: add support for marshallers to have internal data structures (cookies)<br/>
         
           a77195f 9 months ago Sylvain Joyeux corba: remove some unneeded object allocations and copies in the dataflow<br/>
         
           bc2e40e 9 months ago Sylvain Joyeux internal: remove unused include "types/TypeMarshaller.hpp" in ConnFactory.hpp<br/>
         
           581a8d2 9 months ago Peter Soetens types: minor updates of log messages when double types are registered.<br/>
         
           ab00438 9 months ago Peter Soetens Revert "types: don't install a second type info handler for a type"<br/>
         
           0315d5d 9 months ago Sylvain Joyeux corba: fix establishment of remote connections between local ports<br/>
         
           e88607c 9 months ago Peter Soetens cmake: remove manifest.xml when typegen generates it.<br/>
         
           2b8d5de 9 months ago Peter Soetens scripting: fix setting text of parsed state machine.<br/>
         
           7cab0b4 9 months ago Peter Soetens rtt: fix compile warning by adding space<br/>
         
           bf38708 9 months ago Peter Soetens marsh: add MarshallingService header to installation<br/>
         
           a9f3f27 9 months ago Peter Soetens scripting: avoid unknown_t log error when assigning a SendHandle.<br/>
         
           4e35552 9 months ago Peter Soetens engine: also broadcast cond when function is done<br/>
         
           1736783 9 months ago Peter Soetens scripting: clear parse state when doing initBodyParser<br/>
         
           1588ac6 9 months ago Sylvain Joyeux log uncaught exception messages for all std::exception, not only for runtime_exception<br/>
         
           7f729d6 9 months ago Peter Soetens scripting: warn for non-periodic programs when the program is loaded<br/>
         
           e7993ff 9 months ago Peter Soetens properties: implement proper copy semantics for PropertyBag<br/>
         
           9ce6d17 9 months ago Peter Soetens types: compose the items of a sequence first before composing the sequence itself<br/>
         
           6b1ce7d 9 months ago Peter Soetens properties: allow to specify recursion and update property bag functions<br/>
         
           6f8044f 9 months ago Peter Soetens types: return const data source for size/capacity in array type info<br/>
         
           1b3da49 9 months ago Peter Soetens properties: remove composition code from propertybag functions.<br/>
         
           d8933e7 9 months ago Peter Soetens tests: extended testtypes and test them for marshalling<br/>
         
           bfcc312 9 months ago Peter Soetens properties: add new composition/decomposition functions<br/>
         
           484b90f 9 months ago Peter Soetens tests: test marshalling of sequence of sequence.<br/>
         
           29b6329 9 months ago Peter Soetens tests: add new type plugin for tests<br/>
         
           7630568 9 months ago Peter Soetens properties: mark unready when assigned from incompatible type<br/>
         
           ab7de9b 9 months ago Peter Soetens types: return const data source for size/capacity in array type info<br/>
         
           aa6e652 9 months ago Peter Soetens marshalling: better escaping and reading of 'char' types in xml.<br/>
         
           1d74f8c 9 months ago Peter Soetens marshalling: if file does not exist during writePropeties, use store<br/>
         
           51eeeb3 9 months ago Peter Soetens types: standard primitive types decompose into self.<br/>
         
           1edbf06 9 months ago Peter Soetens types: add backwards-compatibility with convertType<br/>
         
           fc36a54 9 months ago Sylvain Joyeux avoid non-static global variables<br/>
         
           96fd842 9 months ago Peter Soetens rtt: provide a Component.hpp header which allows apps to not depend on ocl.<br/>
         
           ef36ea6 9 months ago Peter Soetens ports: update service docs when port doc is updated.<br/>
         
           9219646 9 months ago iMoby when switching to exception() because of an unhandled exception, display a log message<br/>
         
           76f34a6 9 months ago Peter Soetens types: delete unused type info object and fix unit test.<br/>
         
           bbdf7e4 9 months ago Peter Soetens cmake: set pkg config path in ROS_ROOT builds<br/>
         
           a5ea9bf 9 months ago Peter Soetens doc: minor doxygen fix.<br/>
         
           121f3fa 9 months ago Peter Soetens cmake: force the install prefix when using ROS_ROOT<br/>
         
           52574e4 9 months ago Peter Soetens types: don't install a second type info handler for a type<br/>
         
           c066b41 9 months ago Peter Soetens doc: fix wrong link to doxy pages.<br/>
         
           f7a2e2f 10 months ago Peter Soetens manifest: remove the cflags export<br/>
         
           6036a27 10 months ago Sylvain Joyeux core: make breakUpdateHook() return true by default as discussed on the ML<br/>
         
           4483631 10 months ago Sylvain Joyeux Merge remote branch 'orocos/toolchain-2.2'<br/>
         
           25431fb 10 months ago Peter Soetens scripts: don't build pdf+html in parallel<br/>
         
           26be368 10 months ago Peter Soetens scripts: use branch name as second arg for release-docs<br/>
         
           65c6453 10 months ago Peter Soetens scripts: prepare to release master docs.<br/>
         
           1758e89 10 months ago Peter Soetens scripts: add new release script for automated docs<br/>
         
           e41be9c 10 months ago Peter Soetens doc: create dir first befor copying png files.<br/>
         
           a26aaea 10 months ago Peter Soetens doxygen: cleanup of doxygen markup tags.<br/>
         
           7943669 10 months ago Peter Soetens Merge branch 'toolchain-2.2-unittest' into toolchain-2.2<br/>
         
           063763b 10 months ago Peter Soetens test: provide boost.test checkpointing.<br/>
         
           6538ce1 10 months ago Peter Soetens test: include boost test headers through unit.hpp file.<br/>
         
           3281a49 10 months ago Peter Soetens connections: initial inspection code for connections.<br/>
         
           d36ae84 10 months ago Peter Soetens plugins: implement loadLibrary functionality<br/>
         
           150610d 10 months ago Peter Soetens cmake: orocos_generate_package macro<br/>
         
           09e34b2 10 months ago Peter Soetens cmake: fall back on xpath if rospack is not available.<br/>
         
           d58e4ba 10 months ago Peter Soetens cmake: add orocos_use_package macro to UseOrocos-RTT.<br/>
         
           bde3969 10 months ago Peter Soetens xenomai: indentation fix in fosi.h<br/>
         
           3310b97 10 months ago Peter Soetens rtt: adding orocos_executable macro<br/>
         
           94826f4 10 months ago Peter Soetens cmake: minor doc/message additions for UseOrocos<br/>
         
           faf4e85 10 months ago Peter Soetens MQ: boost version checking for throwing stream_errors<br/>
         
           bc7e96c 10 months ago Peter Soetens types: print error message when returning null in getMember.<br/>
         
           c20cb98 10 months ago Peter Soetens cmake: add orocos_create_pc_file macro<br/>
         
           dcdec03 10 months ago Peter Soetens os: provide argc/argv api in order to allow lookup of program arguments.<br/>
         
           0126fbf 10 months ago Thomas Roehr Provide an updated version of CMake 2.8's FindBoost to provide a consistent match between headers and libraries.<br/>
         
           e5b5fc2 10 months ago Thomas Roehr Add getIOR Method to TaskContextServer<br/>
         
           7bcecf2 10 months ago Peter Soetens scripting: add support for sequence-of-structs-of-sequence-of...<br/>
         
           18802ef 10 months ago Peter Soetens extras: don't show IRQ/Xenomai warning when building RTT itself.<br/>
         
           0d1983d 10 months ago Peter Soetens cmake: compile with -Wall on gnulinux,lxrt,xenomai.<br/>
         
           ce302d1 10 months ago Peter Soetens scripting: silence compiler warning.<br/>
         
           62525c1 10 months ago Peter Soetens cmake: minor improvements to RTT find macros.<br/>
         
           5de3d2c 10 months ago Peter Soetens internal: fix wrong return values in connection factory.<br/>
         
           b4fcc9f 10 months ago Peter Soetens scripting: also allow [] to be used in identifiers.<br/>
         
           bec3088 10 months ago Peter Soetens manifest: fix link library path in export/cpp/lflags.<br/>
         
           e90dc0b 10 months ago Peter Soetens scripting: be more pickier when looking up types and services.<br/>
         
           f2d1e8e 10 months ago Peter Soetens tests: only kill corba test servers by pid<br/>
         
           7401cc2 10 months ago Peter Soetens cmake: copy cheat sheets to xml area.<br/>
         
           fcce6b1 10 months ago Peter Soetens doc: remove filter from cheat sheet in order to avoid rasterization.<br/>
         
           67a0cb8 10 months ago Peter Soetens cmake: generate pluginpath.cpp in build dir.<br/>
         
           4e9736e 10 months ago Peter Soetens debian: install orocos components with OROCOS_SUFFIX dir.<br/>
         
           e980e8b 10 months ago Peter Soetens cmake: add OROCOS_SUFFIX to allow multi-target installs<br/>
         
           d5a56f4 11 months ago Peter Soetens cmake: add rpaths to UseOrocos.cmake macros.<br/>
         
           a28ac58 11 months ago Peter Soetens cmake: allow to set a version number when using UseOrocos.cmake<br/>
         
           d9b7181 11 months ago Peter Soetens debian: also install generic uninstall cmake file.<br/>
         
           130b463 11 months ago Peter Soetens cmake: split -config.cmake file in generic and target-specific part<br/>
         
           d48b9fe 11 months ago Peter Soetens debian: add new header to be packaged.<br/>
         
           a33de8d 11 months ago Peter Soetens types: add missing header in discovery.<br/>
         
           f9512b6 11 months ago Peter Soetens tests: minor extension to operations tests<br/>
         
           7dd8997 11 months ago Peter Soetens operations: fixed adding a C function to the operation interface<br/>
         
           ceaaecb 11 months ago Peter Soetens doc: finish up rtt-changes document.<br/>
         
           c7838fd 11 months ago Peter Soetens cmake: allow to define INSTALL path for headers.<br/>
         
           7bb910e 11 months ago Peter Soetens doc:added package layout to rtt cheat sheet.<br/>
         
           99ceb76 11 months ago Peter Soetens scripts: remove the word 'Lesser' from gpl+link exception notice.<br/>
         
           7580441 11 months ago Peter Soetens make: update default Makefile.<br/>
         
           a2b2740 11 months ago Peter Soetens add default Makefile<br/>
         
           ec4b899 11 months ago Peter Soetens Merge branch 'master-fix-opcaller-disconnect'<br/>
         
           8884f94 11 months ago Peter Soetens cmake: add INSTALL option for each UseOrocos macro.<br/>
         
           83cae71 11 months ago Peter Soetens doc: generate pdfs for cheat sheets.<br/>
         
           2305937 11 months ago Peter Soetens doc: fixed bugs in typekit for fixed size arrays.<br/>
         
           7157378 11 months ago Peter Soetens operations: fix disconnecting of operationcaller<br/>
         
           e492d3c 11 months ago Peter Soetens doc: font and cleanup updates to cheat sheet.<br/>
         
           f747e47 11 months ago Peter Soetens cmake: updated version number to 2.2.0.<br/>
         
           6337c3a 11 months ago Jean Sreng Merge branch 'master' into master-jsreng<br/>
         
           ae5015a 11 months ago Jean Sreng internal: implement DataSourceTypeInfo&lt;T*&gt;::getTypeInfo()<br/>
         
           506a183 12 months ago Jean Sreng corba : add AnyConversion for std::pair, std::map and std::vector<br/>
         
           a7b27e7 1 year ago Jean Sreng corba : add char transport to corbalib<br/>
         
           2a7e35b 1 year ago Jean Sreng corba : collectype must return typename<br/>
         
           1058d28 1 year ago Jean Sreng corba: fetch services from the parent provider<br/>
         
           b7d8479 1 year ago Jean Sreng scripting: compilation fixes (namespace boost)<br/>
         
           0529394 1 year ago Jean Sreng Merge remote branch 'remotes/origin/toolchain-2.1' into master-jsreng<br/>
         
           5d81a02 1 year, 1 month ago Jean Sreng test: boost namespace<br/>
         
           d0fe2cc 1 year, 1 month ago Jean Sreng Merge branch 'psoetens-toolchain-2.0-fix-corba-send' into master-jsreng<br/>
         
           41ea8d5 1 year, 1 month ago Jean Sreng corba: compat with TAO 5.8.0<br/>
         
           f39f79a 1 year, 1 month ago Jean Sreng internal: Add default constructor to ArgumentDescription<br/>
         
           740ba9b 1 year, 2 months ago Jean Sreng boost: avoid nameclash with C++0x implementation in vs2010 (mainly bind and shared_ptr)<br/>
         
           d22285c 1 year, 2 months ago Jean Sreng win32: missing include<br/>
         
           b1dd179 1 year, 2 months ago Jean Sreng corba: do not use keywork for variable name (compatibility TAO 5.8.0)<br/>
         
           d4f9950 1 year, 2 months ago Jean Sreng corba : fix two calls to remote method<br/>
         
           0fa6f0a 1 year, 2 months ago Jean Sreng cmake : do not override TAO_*_HINTS if TAO_ROOT is found<br/>
         
           4b68aaf 1 year, 2 months ago Jean Sreng win32 : missing symbol<br/>
         
           a39864e 1 year, 2 months ago Jean Sreng win32: don't export inlined functions<br/>
         
           0c6ba6c 1 year, 2 months ago Jean Sreng Merge branch 'master' into master-jsreng<br/>
         
           78135b2 1 year, 2 months ago Jean Sreng corba: fix value to any conversion of data sources in the transport<br/>
         
         </td></tr>
       
       



       <tr class="name" id="slam/envire">
         <th>slam/envire</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="34"> 54 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_34"><td>
         
           3d6fe9b 6 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           53e9d72 6 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next' into HEAD<br/>
         
           497e2ed 7 weeks ago Jakob Schwendner icp: added code in the applyTranform to maintain isometry constraint<br/>
         
           257db37 7 weeks ago Jakob Schwendner Revert "removed tools"<br/>
         
           3c288a7 7 weeks ago Jakob Schwendner core: added FrameNode constructor for TransformWithUncertainty<br/>
         
           3c2547a 7 weeks ago Jakob Schwendner operator: fixed error in distance to grid operator<br/>
         
           43ec34a 7 weeks ago Patrick there is a bug in erasing old scans. Commented out until there is time to indentify the issue.<br/>
         
           d30f568 7 weeks ago Patrick removed tools<br/>
         
           d5367d0 7 weeks ago Jakob Schwendner added documentation on uncertainty information for the transforms<br/>
         
           f7dbc3d 8 weeks ago Jakob Schwendner viz: added small convenience class that makes it easier to debug environments<br/>
         
           4ae2714 9 weeks ago Jakob Schwendner grids: added method to copy a DistanceImage to a DistanceGrid<br/>
         
           9b2d272 3 months ago Janosch Machowinski Compilefix for renaming of QVizkitWidget to Vizkit3DWidget<br/>
         
           107b8eb 3 months ago Asguard Demo2 Account Revert "fixed histogram generation"<br/>
         
           3abe752 3 months ago Jakob Schwendner fixed generation of doxygen<br/>
         
           bd43f47 3 months ago Stefan Haase Replaces OSG_VERSION_LESS_THAN(3,0,0) with OPENSCENEGRAPH_MAJOR_VERSION &lt; 3.<br/>
         
           e289a81 3 months ago Jakob Schwendner added a switch which disables CGAL by default<br/>
         
           9787f4a 3 months ago Patrick fixed histogram generation<br/>
         
           4b0ea6f 3 months ago Thomas Roehr Add setting of BOOST_ROOT to avoid mixing of different boost versions<br/>
         
           e859921 3 months ago Jakob Schwendner eigen3: use pkgconfig for including eigen3 and updated icp changes<br/>
         
           96b2d9d 3 months ago Jakob Schwendner additional eigen3 fixes<br/>
         
           b158a8a 3 months ago Jakob Schwendner update to eigen3<br/>
         
           5d9cf57 3 months ago Jakob Schwendner added caching to MLSMap<br/>
         
           cf87e68 3 months ago Jakob Schwendner added function to add eventfilter to visualisation<br/>
         
           b4196d7 3 months ago Jakob Schwendner distance_grid: added new max distance parameter<br/>
         
           e83e395 3 months ago Jakob Schwendner event: added possibility to add filter to eventhandlers<br/>
         
           8ae6f99 3 months ago Jakob Schwendner distance_grid: added generation of uncertainty for distancegrid projection<br/>
         
           d3be725 3 months ago Jakob Schwendner ply: throw if trimesh has some inconsistencies<br/>
         
           6706ff9 3 months ago Jakob Schwendner scanmeshing: remove color if it's not being filled<br/>
         
           e635c1c 3 months ago Jakob Schwendner scanmeshing operator filters edgeAngle<br/>
         
           ad1750e 3 months ago Sylvain Joyeux fix compilation on OSG 3 by disabling the FrameNodeSelection<br/>
         
           b7bed42 4 months ago Patrick sigma sampling bug fix and conf types changes<br/>
         
           056a198 4 months ago Patrick fixed bugs and removes old laser scan from pointcloud<br/>
         
           a4988bd 4 months ago Patrick encapsulate boost random generator<br/>
         
           39dda20 4 months ago Patrick changed interface<br/>
         
           4684f1f 4 months ago Patrick added library for the icp localization functions<br/>
         
           3738fab 4 months ago Patrick Paranhos configuration types<br/>
         
           3a476dc 4 months ago Patrick Paranhos configuration types<br/>
         
           9e913ab 4 months ago Patrick Paranhos added a configuration type<br/>
         
           4b8ea99 5 months ago Patrick Paranhos removed sampling on Z axis<br/>
         
           65f1ea3 5 months ago Patrick Paranhos commented out the debbug prinouts<br/>
         
           fa04ab8 5 months ago Jakob Schwendner grid: fixed interpretation of offset value<br/>
         
           9d23b22 5 months ago Jakob Schwendner added eigen2 compatibility<br/>
         
           5f6eeac 5 months ago Jakob Schwendner distance_image_op: fixed handling of no-value entries in distance grid<br/>
         
           a58556d 5 months ago Jakob Schwendner added operator that converts a distanceGrid to a pointcloud<br/>
         
           b47c8d7 5 months ago Jakob Schwendner added clear method to pointcloud<br/>
         
           6f9c325 5 months ago Jakob Schwendner added DistanceGrid<br/>
         
           cce78d7 5 months ago Jakob Schwendner added offset to grid<br/>
         
           8f16567 5 months ago Jakob Schwendner added ability to remove data from the generic datastore for layers<br/>
         
           311362c 5 months ago Jakob Schwendner updated color cycling hack for pointclouds<br/>
         
           995b543 5 months ago Jakob Schwendner fixed mlsgrid backward compatibility<br/>
         
           964ed84 5 months ago Patrick Paranhos bug fix<br/>
         
           7f5d42b 5 months ago Patrick Paranhos code cleaning and optimization<br/>
         
           d959ddc 5 months ago Patrick Paranhos icp sampling, clustering and histogram methods<br/>
         
           0e2392b 5 months ago Patrick Paranhos moved histogram to the stability class<br/>
         
         </td></tr>
       
       





       <tr class="name" id="tools/orocos.rb">
         <th>tools/orocos.rb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="35"> 231 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_35"><td>
         
           6e1aaa7 8 weeks ago Sylvain Joyeux validate the result of Orocos.task_model_from_name<br/>
         
           6931d19 8 weeks ago Sylvain Joyeux Revert "In Configuration handling, added check if resulting model is nil. In this case Skipping Configuration"<br/>
         
           190fbdc 8 weeks ago Matthias Goldhoorn log_replay: Added getter for current sample indexes<br/>
         
           444ef4f 8 weeks ago Matthias Goldhoorn Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb<br/>
         
           f3665b9 8 weeks ago Matthias Goldhoorn replay.rb: Added extraction method for current sample,(needed if stream is seekt through advance)<br/>
         
           5419461 8 weeks ago Matthias Goldhoorn Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb<br/>
         
           9ff439f 8 weeks ago auv In Configuration handling, added check if resulting model is nil. In this case Skipping Configuration<br/>
         
           f8c594b 8 weeks ago Sylvain Joyeux Merge branch 'master' of dagon3:/home/cuslam/cuslam-dev/tools/orocos.rb<br/>
         
           ee726f2 8 weeks ago cuslam fix non-zero timeout case in Process#spawn<br/>
         
           1f947b6 8 weeks ago Matthias Goldhoorn Extended replay, now it's possible to jump direct to some timemarker<br/>
         
           68627e4 9 weeks ago Asguard Demo2 Account roby: fix wrong place for calling validate_generated_network<br/>
         
           7878c4a 9 weeks ago Asguard Demo2 Account roby: remove some more debugging outputs<br/>
         
           1ae7f73 9 weeks ago Asguard Demo2 Account roby: remove some debugging output<br/>
         
           303e45a 9 weeks ago Asguard Demo2 Account Merge remote branch 'autobuild/master'<br/>
         
           4bcbf09 9 weeks ago Asguard Demo2 Account roby: fix handling of default arguments<br/>
         
           d3e20ea 10 weeks ago Sylvain Joyeux catch and forward C++ exceptions throws by RTT's loadLibrary<br/>
         
           ef69a57 10 weeks ago Sylvain Joyeux *really* make the timeout 20 seconds (was 20 from the last commit)<br/>
         
           4c6920c 10 weeks ago Sylvain Joyeux bump the default timeout from Orocos.run to 20 seconds<br/>
         
           8516399 10 weeks ago Chris Müller Merge branch 'master' of git://gitorious.org//rock-toolchain/orocos-rb<br/>
         
           bfcc386 10 weeks ago Chris Müller remove :prefix attribute access in lib/orocos/roby/deployment.rb. Roby.app doesn't provide a prefix property anymore.<br/>
         
           a6b5f8a 10 weeks ago Asguard Demo2 Account Revert "Check if the Roby.app.prefix property is set by the supervision run script"<br/>
         
           065ee40 10 weeks ago Matthias Goldhoorn try to load a type's typekit in Port#initialize if it is not yet registered<br/>
         
           6ebefea 2 months ago Matthias Goldhoorn Added Handling for not-standart logfiles instead simply throw an exception (warning is written to stdout, and taskname is assumend as "unknown"<br/>
         
           2394ef5 3 months ago Chris Müller Check if the Roby.app.prefix property is set by the supervision run script and add it to the commandline argument map which is transmitted to the process server.<br/>
         
           3a46a2b 3 months ago Asguard Demo2 Account roby: better debug messages<br/>
         
           2468b8b 3 months ago Asguard Demo2 Account roby: fix find_most_specialized to resolve parent-children in the possible candidates<br/>
         
           f742473 3 months ago Thomas Roehr Remove requirement of TaskContextProxy.<br/>
         
           7ede023 3 months ago Thomas Roehr Add check for empty args in method_missing<br/>
         
           f5e46b3 3 months ago Sylvain Joyeux in load_typekit_for, do not load anything if the type is already registered on the RTT<br/>
         
           35d3ce6 3 months ago Sylvain Joyeux document Orocos.typelib_type_for<br/>
         
           8e40dc9 3 months ago Sylvain Joyeux implement Orocos.load_typekit_for(typename)<br/>
         
           0f19243 3 months ago Sylvain Joyeux roby: in #dataflow_change_handler, handle the case where the task is in no plans<br/>
         
           ccf1887 3 months ago Janosch Machowinski implemented missing method fullfilled_model<br/>
         
           ae3cb9b 3 months ago Jakob Schwendner config: improve error message for typelib conversion<br/>
         
           a9c746f 3 months ago Janosch Machowinski Also put the name of the stream that did not follow the conventions into the error message<br/>
         
           341e54b 3 months ago Sylvain Joyeux Merge branch 'experimental' of /media/Data/dfki/sauce/dev/tools/orocos.rb<br/>
         
           526e5ec 3 months ago Sylvain Joyeux log: fix a bug in log port management<br/>
         
           133e2c2 3 months ago avalon-rear remove default timeouts for CORBA<br/>
         
           b9b5ce2 3 months ago Sylvain Joyeux roby: increase the buffer size for the state reader even more<br/>
         
           8b14703 3 months ago Sylvain Joyeux roby: make #disconnect_ports return the port mappings and stored policies<br/>
         
           59f2bd7 3 months ago Sylvain Joyeux roby: implement connect_ports for CompositionChild objects<br/>
         
           ece04a9 3 months ago Sylvain Joyeux roby: add API to programmatically remove connections from the DataFlow graph<br/>
         
           0e7cb6f 3 months ago Sylvain Joyeux roby: disable calling #disconnect_all if an input port has no connections in our graph<br/>
         
           e33a110 3 months ago Sylvain Joyeux roby: fix export_defines_to_planner<br/>
         
           73a96b1 3 months ago Sylvain Joyeux app: in instanciate_gui, setup Roby in single mode<br/>
         
           227fcbd 3 months ago avalon-rear allow to deploy devices directly from the shell<br/>
         
           bfeb6d3 3 months ago avalon-rear clear the merged_conf cache when some configurations change<br/>
         
           1fd2cb6 4 months ago avalon-rear Merge branch 'experimental' of git://avalon.local/rock-toolchain/orocos-rb into experimental<br/>
         
           5649a77 4 months ago Sylvain Joyeux roby: make the selection tasks compatible with replacement<br/>
         
           4cee394 4 months ago Sylvain Joyeux roby: do a static garbage collection phase at the end of generate_system_network<br/>
         
           9274e90 4 months ago avalon-rear when loading a project description from a remote server, validate that the requested project exists<br/>
         
           9dd33b9 4 months ago Alexander replay:  bug fix for properties.log<br/>
         
           592e134 4 months ago Sylvain Joyeux roby: check for possible state changes loss due to the fixed state buffer size<br/>
         
           69a6624 4 months ago Thomas Roehr Add multiplexes? to CompositionChildInputPort.<br/>
         
           d1de8fa 4 months ago avalon-rear roby: only allow to enable/disable log groups, direct modification is too uncertain<br/>
         
           2a446df 4 months ago avalon-rear roby: make sure #reusable? only applies to the already configured tasks<br/>
         
           d32dd88 4 months ago avalon-rear roby: fix preference order in cycle breaking in #merge_prepare<br/>
         
           5f83033 4 months ago avalon-rear roby: add more debugging output to the network merging algorithm<br/>
         
           8f92629 4 months ago avalon-rear TEMP<br/>
         
           b591af8 4 months ago Sylvain Joyeux roby: support dRoby marshalling for the RequiredDataFlow graph<br/>
         
           900e36e 4 months ago Sylvain Joyeux roby: in App#require_planners, recreate the planning methods for the definitions<br/>
         
           14f2188 4 months ago Sylvain Joyeux roby: in the deployment's stop command, handle a crashing component fine<br/>
         
           8479f1f 4 months ago Sylvain Joyeux roby: increase the buffer size for the state reader<br/>
         
           6c777c8 4 months ago Sylvain Joyeux handle the case of a killed process in #peek_state<br/>
         
           602e4b8 4 months ago Sylvain Joyeux roby: add a name accessor to ConnectionGraph so that dRoby can marshal it<br/>
         
           34d2255 4 months ago Sylvain Joyeux roby: fix typo<br/>
         
           b387907 4 months ago Sylvain Joyeux roby: fix Composition#find_input_port and #find_output_port to return nil if the port does not exist<br/>
         
           f037f3a 4 months ago Sylvain Joyeux in TaskContext#kill, don't wait for the state update<br/>
         
           00791b0 4 months ago Sylvain Joyeux roby: fix process server management in single and/or no process server modes<br/>
         
           ae94f38 4 months ago avalon-rear roby: fix filtering out ports when no match is found<br/>
         
           e0ac557 4 months ago Alexander replay: add methods to be compatible with Orocos::TaskContext<br/>
         
           22db37c 4 months ago Sylvain Joyeux disable unregistering tasks from CORBA when the process is terminated<br/>
         
           87ae3d3 4 months ago Sylvain Joyeux app: validate the options given to orocos_process_server<br/>
         
           b7ed4b3 4 months ago Sylvain Joyeux app: fix wrong initialization of Deployment instances when orocos_start_all_deployments is set<br/>
         
           4b9ed8b 4 months ago Sylvain Joyeux app: make logging configuration more flexible<br/>
         
           b4b8b7b 4 months ago Sylvain Joyeux core: fix the dataflow management code to trigger if new connections are added between tasks that are already connected<br/>
         
           4eea19c 4 months ago Sylvain Joyeux bin: support changing the name of the local variable in oroshell<br/>
         
           186b1fc 4 months ago Sylvain Joyeux roby: in instanciate --test, output the files in instanciate-ROBOTNAME<br/>
         
           23b721d 4 months ago Sylvain Joyeux roby: don't load any model while in the shell<br/>
         
           6a28800 4 months ago Sylvain Joyeux roby: if roby is started in single-host mode and no process servers are running, redirect everything to the main project<br/>
         
           7f56916 4 months ago Sylvain Joyeux roby: add consistency check<br/>
         
           7cb98de 4 months ago Sylvain Joyeux roby: mark all deployments as permanent<br/>
         
           70e6763 4 months ago Sylvain Joyeux app: add the orocos_start_all_deployments option<br/>
         
           0f6fb5a 4 months ago Sylvain Joyeux conf: properly handle empty sections<br/>
         
           6b5f8b8 4 months ago Thomas Roehr Add :cmdline_args option to forward command line options to deployments<br/>
         
           45fdfa3 4 months ago Thomas Roehr Fix wait_running. Note, that :wait argument still takes seconds (float allowed).<br/>
         
           87abb8c 4 months ago Sylvain Joyeux roby: fix reconfiguring tasks after a reset_exception recovery<br/>
         
           0c7e9ad 4 months ago Sylvain Joyeux roby: define Engine#device to allow selecting devices and override their configuration in #use<br/>
         
           800ee28 4 months ago Sylvain Joyeux remove some debugging output<br/>
         
           702b4f3 4 months ago Sylvain Joyeux core: accept a reference to a device or another define as model argument for #add and #define<br/>
         
           6d31cf2 4 months ago Alexander Duda replay: add methods to be compatible with Orocos::TaskContext<br/>
         
           2b90f9e 4 months ago Sylvain Joyeux app: make sure the output graphs of instanciate --test goes to the results directory<br/>
         
           3d00644 4 months ago Sylvain Joyeux roby: replace a graph-represented-through-hashes by a proper graph<br/>
         
           ec21aef 4 months ago Sylvain Joyeux roby: resolve selections recursively<br/>
         
           f6e0b86 4 months ago Sylvain Joyeux roby: in compositions, accept task =&gt; port, port =&gt; task and task =&gt; task in #connect<br/>
         
           0f66919 4 months ago Sylvain Joyeux roby: fix #pretty_print on AmbiguousSpecializationSelection<br/>
         
           da359d6 4 months ago Sylvain Joyeux roby: don't allow multiplexing on compositions (yet)<br/>
         
           b6b584f 4 months ago Sylvain Joyeux roby: remove debugging output, wrongly committed ...<br/>
         
           949f802 4 months ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/master' into experimental<br/>
         
           10a189f 4 months ago Sylvain Joyeux roby: demote runtime connection management messages to debug from info<br/>
         
           1270f8f 4 months ago Sylvain Joyeux roby: implement/fix support to specify on which process server a given task should run<br/>
         
           e0fb9a9 4 months ago Sylvain Joyeux roby: expose use_deployment on Roby.app<br/>
         
           1916e22 4 months ago Sylvain Joyeux taskmon: accept the caller to provide PID names as well<br/>
         
           bfe2163 4 months ago Sylvain Joyeux don't try to access /proc on non-local machines<br/>
         
           68758af 4 months ago Sylvain Joyeux promote taskmon messages from debug to info<br/>
         
           5036ae1 4 months ago iMoby roby: workaround lack of dynamic port handling in #find_(input|output)_port<br/>
         
           ecff6a9 4 months ago Sylvain Joyeux roby: extend Roby new task scripting to add data_reader and data_writer support<br/>
         
           2d43b8c 4 months ago Sylvain Joyeux roby: allow to access ports on tasks with &lt;port_name&gt;_port<br/>
         
           5d13d94 4 months ago Sylvain Joyeux roby: in #dataflow_change_handler, don't consider non-executable plans<br/>
         
           4fcf95c 4 months ago Sylvain Joyeux roby: rename #add_main_task to #add_main to make it consistent with #add<br/>
         
           b866700 4 months ago Sylvain Joyeux roby: display the roles in the generated graphs<br/>
         
           9eadf68 4 months ago Sylvain Joyeux roby: add a planning method for defines<br/>
         
           083613f 4 months ago Sylvain Joyeux roby: fix the instanciation GUI in presence of defines<br/>
         
           7aae000 4 months ago Sylvain Joyeux roby: display compositions on the instanciation GUI<br/>
         
           e2beadd 4 months ago Sylvain Joyeux roby: when creating a placeholder, set it as abstract instead of simply non-executable<br/>
         
           591f577 4 months ago Sylvain Joyeux roby: better error message<br/>
         
           a27d44b 4 months ago Sylvain Joyeux roby: properly handle port mappings in #data_reader and #data_writer<br/>
         
           45248c4 4 months ago Sylvain Joyeux roby: split the main propagation handler into an external event handler and the requirement modification handler<br/>
         
           12bd841 4 months ago Chris Mueller roby: only filter out consecutive duplicate state changes<br/>
         
           06bdfd6 4 months ago Chris Mueller roby: fix event emissions related to exception states<br/>
         
           e4771ec 4 months ago iMoby conf: ignore a file that looks like a conf file but has no associated task model<br/>
         
           884e6ca 4 months ago Sylvain Joyeux roby: in #add_child, verify that the dependency options are valid<br/>
         
           16b3798 4 months ago Sylvain Joyeux roby: accept multiple connections to the same port if that port is marked as multiplexing<br/>
         
           6a46c5a 4 months ago Sylvain Joyeux roby: in #link_task_to_bus, don't look for a special naming pattern if only one output port of the right type is available<br/>
         
           eba46bb 4 months ago Sylvain Joyeux fix giving a device to resolve_explicit_selection<br/>
         
           726fb5d 4 months ago Sylvain Joyeux bin: create oroshell<br/>
         
           637ce4a 4 months ago Sylvain Joyeux roby: some more info output in runtime connection management<br/>
         
           6e838f1 4 months ago Sylvain Joyeux when shutting down a deployment, simply ignore failure-to-cleanup<br/>
         
           b7a545e 4 months ago Sylvain Joyeux roby: verify the actual component state in #setup<br/>
         
           6071fd4 4 months ago Sylvain Joyeux roby: #setup resets exceptions, remove the handling in update_state_change<br/>
         
           5ff4031 4 months ago Sylvain Joyeux roby: filter out any runtime state until RUNNING has been received<br/>
         
           37f7078 4 months ago Sylvain Joyeux roby: check the actual component state in #ready_for_setup?<br/>
         
           3acc25d 4 months ago Sylvain Joyeux roby: when updating the task states, stop as soon as the state is STOPPED<br/>
         
           f9f2b0c 4 months ago Sylvain Joyeux roby: make sure we do not reuse finishing tasks<br/>
         
           d964c03 4 months ago Sylvain Joyeux roby: accept a complex path in data_reader / data_writer<br/>
         
           4fc0c0e 4 months ago Sascha Arnold fixed an error<br/>
         
           a83291d 4 months ago Alexander Duda replay bugfix: replay now understands paths like ~/temp<br/>
         
           f8a8eec 4 months ago Alexander Duda replay: replace attrib_reader tasks by method tasks<br/>
         
           0bc35a8 4 months ago Matthias Goldhoorn Allow CORBA nameservice to be still set via Orocos::CORBA.name_service. Switched orops to new interface for setting the nameservice.<br/>
         
           a20ba14 4 months ago Sylvain Joyeux roby: in #setup, use #rtt_state and take into account our calling of #cleanup<br/>
         
           43cf820 4 months ago Sylvain Joyeux roby: define #as_plan on InstanceSpec, so that it can be used directly in plan building<br/>
         
           6b519e3 4 months ago Sylvain Joyeux roby: when creating a placeholder, properly set the required arguments<br/>
         
           739b195 4 months ago Sylvain Joyeux roby: accept EngineRequirement objects in #define and friends<br/>
         
           e62c345 4 months ago Sylvain Joyeux roby: call #cleanup when quitting the deployments<br/>
         
           0ffbddf 4 months ago Sylvain Joyeux roby: fix missed #configure calls<br/>
         
           1a4a5cf 4 months ago Sylvain Joyeux define the #sendop and #callop shortcuts on TaskContext<br/>
         
           56636cf 4 months ago Sylvain Joyeux define operation reports SEND_* on Orocos as the documentation suggests<br/>
         
           112576f 4 months ago Alexander Duda replay.rb: add support for properties<br/>
         
           1a8a657 4 months ago Sylvain Joyeux taskmon: fix default naming in #resolve_process_threads<br/>
         
           cfb9337 4 months ago Sylvain Joyeux document OutputReader# and InputReader# connected?<br/>
         
           35f44a1 4 months ago Sylvain Joyeux roby: fix selecting defines in #use calls<br/>
         
           2172cfa 4 months ago Sylvain Joyeux fix the :wait option in Orocos.run<br/>
         
           69a8fc5 4 months ago Sylvain Joyeux in the changed Composition#executable?, make sure that our children children also have an orocos task<br/>
         
           dac23a7 4 months ago Sylvain Joyeux roby: in Composition#executable? only wait for the children to have a task<br/>
         
           2851cee 4 months ago Thomas Roehr Merge branch 'avahi_nameservice'<br/>
         
           f8685b8 4 months ago Thomas Roehr Adapt to rely on base logging in service_discovery<br/>
         
           4d84463 5 months ago Jakob Schwendner replay: added method to query for a task<br/>
         
           6ede3b7 5 months ago Sylvain Joyeux roby: fix SingleRequirementTask.subplan<br/>
         
           e5a2611 5 months ago Sylvain Joyeux roby: when adding a main task, forward each intermediate event in the child that are also defined in the parent<br/>
         
           0d4dd36 5 months ago Sylvain Joyeux roby: use find_(input|output)_port in data_(reader|writer) to allow accessing composition ports<br/>
         
           ced250c 5 months ago Sylvain Joyeux roby: CompositionChild and Roby::Task are acceptable selections in #use<br/>
         
           8d901c2 5 months ago Sylvain Joyeux Merge branch 'master' of git://gitorious.org/rock-toolchain/orocos-rb into next<br/>
         
           51439f3 5 months ago Sylvain Joyeux roby: fix port mapping usage for selections that are given as InstanceSpec<br/>
         
           7dc6c5d 5 months ago Sylvain Joyeux roby: we also need narrowing in the system model<br/>
         
           5e754af 5 months ago Sylvain Joyeux roby: add debugging output to track the port mappings created by ComponentModel.provides<br/>
         
           25227f5 5 months ago Sylvain Joyeux Merge branch 'configuration' of /home/doudou/dfki/imoby/tools/orocos.rb into next<br/>
         
           ab527a4 5 months ago Sylvain Joyeux roby: fix handling of tasks that went into exception state<br/>
         
           007944b 5 months ago Sylvain Joyeux roby: properly set logging task's configuration to 'default'<br/>
         
           b010423 5 months ago Sylvain Joyeux roby: in configure_logging, we might not have any logger<br/>
         
           4d70091 5 months ago Sylvain Joyeux roby: fix task reconfiguration<br/>
         
           abe59a0 5 months ago Sylvain Joyeux roby: set default configurations in #compute_system_network<br/>
         
           b7fc2bb 5 months ago Sylvain Joyeux roby: in #finalize_deployed_tasks, update InstanceSpec#task as well<br/>
         
           e26b29a 5 months ago Sylvain Joyeux roby: when really deploying tasks, we need to use the specialized models<br/>
         
           7b3dc30 5 months ago Sylvain Joyeux require YAML in configurations.rb<br/>
         
           124da2b 5 months ago Sylvain Joyeux oroinspect: fix the file_name:section_name syntax for file names that contain :<br/>
         
           c1278ed 5 months ago Sylvain Joyeux roby: add the connection_log script which displays modifications in the connection graphs<br/>
         
           e4c2058 5 months ago Sylvain Joyeux bin: in oroinspect -C, allow to specify a task by name<br/>
         
           f11104b 5 months ago Sylvain Joyeux roby: add a shell interface for configuration updates<br/>
         
           8c9a6b8 5 months ago Sylvain Joyeux roby: major round of bugfixes for the dynamic reconfiguration code<br/>
         
           acc8c17 5 months ago Sylvain Joyeux roby: don't use non-reusable tasks as merge targets<br/>
         
           eb2db6c 5 months ago Sylvain Joyeux roby: don't modify the graph while iterating on it<br/>
         
           2eed2a3 5 months ago Sylvain Joyeux roby: fix requirement modification<br/>
         
           c669de5 5 months ago Sylvain Joyeux bin: add the --debug option to orocos_process_server<br/>
         
           5ab83ad 5 months ago Sylvain Joyeux roby: accept multiple passes in scripts/instanciate<br/>
         
           f667819 5 months ago Sylvain Joyeux roby: fix generation of deployment_tasks in #resolve<br/>
         
           283e33f 5 months ago Sylvain Joyeux roby: there is no can_reuse? method, it is called #reusable?<br/>
         
           925072d 5 months ago Sylvain Joyeux roby: fix requiring a device by its name<br/>
         
           85086ca 5 months ago Sylvain Joyeux roby: add experimental support for dynamic reconfiguration<br/>
         
           eb96bc5 5 months ago Sylvain Joyeux bin: fix oroinspect --help<br/>
         
           b3b8b2a 5 months ago Sylvain Joyeux add an extension mechanism for tasks in plain Ruby<br/>
         
           7739d72 5 months ago Sylvain Joyeux small style fix<br/>
         
           63fded5 5 months ago Sylvain Joyeux add the convenience method Orocos.apply_conf_file<br/>
         
           fd4247c 5 months ago Sylvain Joyeux roby: use the temporal scheduler to make sure selection tasks are started when needed<br/>
         
           f33bcb4 5 months ago Sylvain Joyeux roby: fix handling of default value for :conf<br/>
         
           88787cb 5 months ago Sylvain Joyeux roby: start tasks only if *all* their connections are available<br/>
         
           009b2ae 5 months ago Sylvain Joyeux roby: fix creation of placeholder tasks<br/>
         
           c8eeeb7 5 months ago Sylvain Joyeux roby: integrate configuration logging<br/>
         
           8c90186 5 months ago Sylvain Joyeux roby: fix removal of requirements by model<br/>
         
           f525c23 5 months ago Sylvain Joyeux roby: add conf support in instance requirements, composition models and for composition themselves<br/>
         
           ae8357f 5 months ago Sylvain Joyeux roby: add missing orocos/roby/instance_spec.rb file<br/>
         
           ee07c07 5 months ago Sylvain Joyeux implement configuration selection for devices<br/>
         
           c537ecf 6 months ago Sylvain Joyeux roby: remove the support for faceted selection<br/>
         
           09e7f4b 6 months ago Sylvain Joyeux roby: big refactoring and cleanup of modelling and instantiation code<br/>
         
           2349888 6 months ago Sylvain Joyeux roby: in scripts/configure, validate that the required deployments do exist<br/>
         
           503f1e2 6 months ago Sylvain Joyeux roby: in scripts/configure, set ConfigurationManager's logger level to INFO<br/>
         
           78a750f 6 months ago Sylvain Joyeux roby: integrate configuration file loading<br/>
         
           4c53e8f 6 months ago Sylvain Joyeux conf: raise in #apply if the required configuration does not exist<br/>
         
           5532792 6 months ago Sylvain Joyeux conf: add a logger to ConfigurationManager<br/>
         
           09b9f57 6 months ago Sylvain Joyeux conf: add the property's documentation to the saved yml files<br/>
         
           e595f53 6 months ago Sylvain Joyeux conf: in #apply, use raw_read to get the original property value<br/>
         
           18f102f 6 months ago Sylvain Joyeux conf: when there are some errors during loading, mention what file causes the problem<br/>
         
           3f4f5a6 6 months ago Sylvain Joyeux bin: modify scripts/configure to be more flexible and allow saving the configuration<br/>
         
           cae4f9a 6 months ago Sylvain Joyeux conf: fix typelib_to_yaml_value for enums<br/>
         
           499df0e 6 months ago Sylvain Joyeux bin: make oroinspect match the query to the project names as well<br/>
         
           c30064c 6 months ago Sylvain Joyeux roby: define SystemModel#each_deployment_model<br/>
         
           dbb82fb 6 months ago Sylvain Joyeux roby: fix cleanup, must be a singleton method so that it gets called as a plugin<br/>
         
           b2d2dc4 6 months ago Sylvain Joyeux conf: fix getting the property types from the model<br/>
         
           1c8f9f6 6 months ago Sylvain Joyeux roby: start an orocos-specific shell interface<br/>
         
           419e18d 6 months ago Sylvain Joyeux conf: implement ConfigurationManager#save<br/>
         
           4c61b5a 6 months ago Sylvain Joyeux conf: use .yml instead of .conf<br/>
         
           de4d672 6 months ago Sylvain Joyeux conf: use the task name as default section name in save<br/>
         
           e79e04c 6 months ago Sylvain Joyeux in TaskConfiguration::save, allow passing a directory name<br/>
         
           af867eb 6 months ago Sylvain Joyeux fix applying configuration to a task<br/>
         
           953cb92 6 months ago Sylvain Joyeux start support for configuration files<br/>
         
           6b1e6de 6 months ago Thomas Roehr Allow priority order and check for CORBA default before Orocos.initialize is called<br/>
         
           245c0a2 6 months ago Thomas Roehr Adapt to service discovery ruby bindings<br/>
         
           6e75932 7 months ago Thomas Roehr Update nameservice interface and include CORBA nameserver. Adapt to updated distributed_nameserver. Add test_nameservice.<br/>
         
           323761d 7 months ago Thomas Roehr Add documentation and perform renaming<br/>
         
           011c2a7 7 months ago Thomas Roehr Add avahi to TaskContext.get<br/>
         
           f756b63 7 months ago Thomas Roehr Allow retrieval of task context via ior<br/>
         
           c86d02c 7 months ago Thomas Roehr Add avahi nameservice integration<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/pocolog">
         <th>tools/pocolog</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="36"> 2 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_36"><td>
         
           4845f34 5 months ago Sylvain Joyeux add convenience method Pocolog::Logfiles.file_stream(file, stream_name)<br/>
         
           8d5b8c8 5 months ago Sylvain Joyeux ruby 1.9 fix<br/>
         
         </td></tr>
       
       



       <tr class="name" id="tools/roby">
         <th>tools/roby</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="37"> 175 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_37"><td>
         
           a38b2fc 6 weeks ago Sylvain Joyeux Merge remote-tracking branch 'autobuild/next'<br/>
         
           21d8c01 7 weeks ago Asguard Demo2 Account state_machine: properly initialize class-level instance variable in the class<br/>
         
           5c7891d 7 weeks ago Asguard Demo2 Account core: allow the modification of #fullfilled_model in transactions<br/>
         
           804a274 7 weeks ago Asguard Demo2 Account core: add pretty-printing of a graph<br/>
         
           78a50d2 8 weeks ago Thomas Roehr Fix inheritance for TaskStateMachine.<br/>
         
           28ade63 8 weeks ago Sylvain Joyeux log: fix small bugs in plan replay<br/>
         
           7ba3f0a 8 weeks ago Sylvain Joyeux doc update<br/>
         
           05c5bcc 9 weeks ago Ganesh Neupane Validate state_machine before calling do_poll<br/>
         
           fcd376c 9 weeks ago Asguard Demo2 Account core: make #influenced_by accept objects that respond to #as_plan<br/>
         
           d0a94ac 9 weeks ago Asguard Demo2 Account core: properly gather errors in external event handlers and propagation handlers<br/>
         
           2a51984 9 weeks ago Asguard Demo2 Account core: fix deadlock if the log thread dies<br/>
         
           a008abe 9 weeks ago Asguard Demo2 Account log: fix debugging message when an object cannot be marshalled<br/>
         
           9910141 9 weeks ago Asguard Demo2 Account core: fix #can_merge? w.r.t. default arguments<br/>
         
           2519737 9 weeks ago Asguard Demo2 Account core: fix DelayedTaskArgument#pretty_print<br/>
         
           99dd4a9 9 weeks ago Asguard Demo2 Account core: better error message when trying to overwrite an existing task argument<br/>
         
           6c12eb0 9 weeks ago Asguard Demo2 Account core: make all argument defaults delayed<br/>
         
           ea811a3 9 weeks ago Sylvain Joyeux state: allow to specify paths in trigger_when<br/>
         
           3507b30 9 weeks ago Sylvain Joyeux log: remove debugging output<br/>
         
           baa2e5a 9 weeks ago Sylvain Joyeux log: fix clash between current_state() defined for display and the one from state machine support<br/>
         
           3d1075f 2 months ago Chris Müller Revert "add --prefix argument handler in lib/roby/app/run.rb"<br/>
         
           9d4eb37 3 months ago Chris Müller add --prefix argument handler in lib/roby/app/run.rb and save its value in a property :prefix within the Roby application singleton instance.<br/>
         
           2ebc8d5 3 months ago Sylvain Joyeux log: implement display of relation information<br/>
         
           86c9e30 3 months ago Thomas Roehr Add test cases for task_statemachine<br/>
         
           cfa65c8 3 months ago Thomas Roehr Fix inheritance by adding existing ancestors to proxy<br/>
         
           3187de8 3 months ago Thomas Roehr Fix from_model for task_statemachine when no models exist<br/>
         
           9934c78 3 months ago Jakob Schwendner fixed missing references to state_machine gem and TaskStateMachine<br/>
         
           001442f 3 months ago Thomas Roehr Add current_state and polling support for state_machine.<br/>
         
           7bf450d 3 months ago Thomas Roehr Add first approach to task_statemachine integration<br/>
         
           8851acd 3 months ago Thomas Roehr Minor spelling corrections<br/>
         
           49f997e 3 months ago Sylvain Joyeux core: more informative error message in #child_from_roles<br/>
         
           4313f78 3 months ago Sylvain Joyeux scripting: re-resolve the events at each #poll to handle replacements properly<br/>
         
           abf469f 3 months ago Sylvain Joyeux core: fix temporal scheduler w.r.t. free events<br/>
         
           23e3817 3 months ago Sylvain Joyeux scripting: implement timeout(duration) { }<br/>
         
           1a9703e 3 months ago Sylvain Joyeux app: in Robot.prepare_action, mark the placeholder task as abstract<br/>
         
           9369f63 3 months ago avalon-rear log: ruby 1.9 fixes<br/>
         
           9dafb3a 3 months ago Sylvain Joyeux core: replace some calls to #to_hms to Roby.format_time<br/>
         
           94ccdd1 4 months ago Sylvain Joyeux scripting: buggy attempt at having a better progress information<br/>
         
           688a0b3 4 months ago Sylvain Joyeux log: in PlanRebuilder#find_model, accept a regexp on the model name<br/>
         
           8fe1f27 4 months ago Sylvain Joyeux log: make the plan rebuilder API more usable in a scripting context<br/>
         
           fac70c9 4 months ago Sylvain Joyeux test: add task scripting to the core suite<br/>
         
           b2d0aa4 4 months ago Sylvain Joyeux core: in #replace_subplan_by, do not copy relations between the old and the new tree<br/>
         
           ff1b414 4 months ago Sylvain Joyeux scripting: instance-level poll handlers now have a single argument<br/>
         
           fbaed4f 4 months ago Sylvain Joyeux log: remove debugging output<br/>
         
           c7f4fa2 4 months ago Sylvain Joyeux log: in PlanRebuilder#analyze_stream, do not rewind the stream<br/>
         
           9a5c29f 4 months ago Sylvain Joyeux core: fix EventNotExecutable#pretty_print for task events<br/>
         
           5e9519f 4 months ago Sylvain Joyeux core: implement copy-on-replace support for finalization handlers<br/>
         
           4262165 4 months ago Sylvain Joyeux core: call instance-level poll handlers with the task<br/>
         
           f504868 4 months ago Sylvain Joyeux scripting: don't add the poll handlers if no scripts have been defined on the task<br/>
         
           41cf2b1 4 months ago Sylvain Joyeux test,core: improve the testing of poll/event handler-during-replace greatly<br/>
         
           c01194b 4 months ago Sylvain Joyeux log: reworked the event filtering infrastructure to make it usable from scripts<br/>
         
           1c34348 4 months ago Sylvain Joyeux core: make the supervision's default :wait behaviour be consistent with the logical script steps<br/>
         
           2dfc05e 4 months ago Sylvain Joyeux scripting: in #wait(event), allow to provide a threshold time above which we consider any emission<br/>
         
           098f796 4 months ago Sylvain Joyeux script: implement #wait_any<br/>
         
           0fbb8ce 4 months ago Sylvain Joyeux log: fix the workaround introduced in 3732b9f5f011d7bf25627875c0ee07c38260cebf<br/>
         
           8bc0383 4 months ago avalon-rear core: don't raise temporal violations in #fired(event)<br/>
         
           ec6b099 4 months ago avalon-rear core: emitting exceptions in the event firing code is harmful, warn when it happens and that it will be removed in the future<br/>
         
           3732b9f 4 months ago Sylvain Joyeux log: WORKAROUND #updated_task_relation being called on tasks that are not yet linked in said relation<br/>
         
           ba903a2 4 months ago Sylvain Joyeux core: fix planner model reload by removing method descriptions in #remove_planning_methods<br/>
         
           3f83e53 4 months ago Sylvain Joyeux core: give more info if a constant cannot be marshalled<br/>
         
           77b7a46 4 months ago Sylvain Joyeux app: remove nonfunctional reload code<br/>
         
           d990462 4 months ago Sylvain Joyeux app: support reloading planner code<br/>
         
           391a8da 4 months ago Sylvain Joyeux Revert "log: disable logging updated_relation_info for now, it is broken for plain graphs"<br/>
         
           fea22bc 4 months ago avalon-rear log: disable logging updated_relation_info for now, it is broken for plain graphs<br/>
         
           710e3c9 4 months ago avalon-rear core: don't assume that the graphs have an updated_relation_info hook<br/>
         
           b09d529 4 months ago Sylvain Joyeux core: add a hook that gets triggered each time a relation info is updated<br/>
         
           196b34a 4 months ago Sylvain Joyeux core: when committing modified relation info, directly write down the info from the transaction<br/>
         
           28e7e4d 4 months ago Sylvain Joyeux app: dont load models when running in the shell<br/>
         
           9a63f20 4 months ago Sylvain Joyeux core: fix #do_display_exception for when IO#puts requires an argument<br/>
         
           0de8660 4 months ago Sylvain Joyeux core: fix changing relation info in a transaction<br/>
         
           8e58717 4 months ago Sylvain Joyeux app: fix validating strings from the shell<br/>
         
           7e9134c 4 months ago Sylvain Joyeux roby: fix support for failed_to_start! in the plan display<br/>
         
           11750fd 4 months ago Sylvain Joyeux log: show task histories on double-click<br/>
         
           81af8f2 4 months ago Sylvain Joyeux core: add a bit of more of debugging info for the GC<br/>
         
           6307158 4 months ago Sylvain Joyeux core: fix stray puts<br/>
         
           e4e9956 4 months ago Sylvain Joyeux core: change time formatting in log display<br/>
         
           2324686 4 months ago Sylvain Joyeux core: fix Plan#add_(mission|permanent)(object_that_responds_to_as_plan)<br/>
         
           e4bd5de 4 months ago Sylvain Joyeux log: add support for transactions in the display<br/>
         
           147dd3e 4 months ago Sylvain Joyeux log: in PlanRebuilder, fix understandable confusion between throw :ignored and throw :ignore<br/>
         
           13a6555 4 months ago Sylvain Joyeux log: fix unnecessary creation/destruction of task events<br/>
         
           73cadf3 4 months ago Sylvain Joyeux log: in Task#display_create, reinitialize @width and @height<br/>
         
           53aa2e8 4 months ago Sylvain Joyeux log: fix longstanding relation arrows staying in the display while they have been removed<br/>
         
           a4f022b 4 months ago Sylvain Joyeux core: fix #disable_ownership<br/>
         
           8249ce7 4 months ago Sylvain Joyeux droby: fix some wrong direct calls to #droby_dump<br/>
         
           c593b54 4 months ago Sylvain Joyeux core: make single? true only if explicitely set<br/>
         
           b31a3d7 4 months ago Sylvain Joyeux app: don't start the discovery mechanism if not configured<br/>
         
           a48fa71 4 months ago Sylvain Joyeux core: remove debug message<br/>
         
           8b864fc 4 months ago Sylvain Joyeux core: call #as_plan when needed in the Plan#add* methods<br/>
         
           40c513d 4 months ago Sylvain Joyeux core: execute scripts at the beginning of the task execution<br/>
         
           f48c6aa 4 months ago Sylvain Joyeux core: accept customization of descriptions in scripts<br/>
         
           aa4f5bb 4 months ago Sylvain Joyeux core: in scripting, display the element description only when it gets started<br/>
         
           1db23df 4 months ago Sylvain Joyeux core: fix wait(event) that has been broken by the introduction of wait(time)<br/>
         
           8dc7efc 4 months ago Sylvain Joyeux fix loading all planning files in planners/<br/>
         
           bd8ccef 4 months ago Sylvain Joyeux core: accept wait(duration) in task scripting<br/>
         
           f72a3bc 4 months ago Sylvain Joyeux log: fix configuration of the canvas view<br/>
         
           96aed69 4 months ago Sylvain Joyeux log: in the plan rebuilder, fix access to plan snapshots from the history<br/>
         
           f56739e 4 months ago Sylvain Joyeux core: the plan services do their own replacement tracking, set :on_replace to :drop<br/>
         
           98d3d34 4 months ago Sylvain Joyeux log: don't snapshot the relation graphs when they have not changed<br/>
         
           91918c0 4 months ago Sylvain Joyeux log: progress display in rebuild index / update index<br/>
         
           587a80b 4 months ago Sylvain Joyeux log: remove unnecessary index-loading operations<br/>
         
           63b626d 4 months ago Sylvain Joyeux log: rename File.load and File#load to load_one_chunk<br/>
         
           20de1e3 4 months ago Sylvain Joyeux log: do not do unnecessary deep copies when replaying the logs<br/>
         
           bbecdd8 4 months ago Sylvain Joyeux core: add a flexible logging support in the scripting interface<br/>
         
           da93c6a 4 months ago Sylvain Joyeux core: change scripting API related to poll_end_if (idea from Alex Duda)<br/>
         
           ad9913c 4 months ago Sylvain Joyeux core: make Task#script return self<br/>
         
           6cde186 4 months ago Sylvain Joyeux core: modify scripting so that plugin can extend it<br/>
         
           d7cbbe0 4 months ago Sylvain Joyeux core: allow task scripting to refer to children, even though the children are not there yet<br/>
         
           31e96be 4 months ago Sylvain Joyeux core: accept task.&lt;role&gt;_child to get a child from its role<br/>
         
           e565e11 4 months ago Sylvain Joyeux core: make resolve_role_path([]) return self<br/>
         
           a2b0a76 4 months ago Sylvain Joyeux core: mark the plan rebuilder's plan as non executable<br/>
         
           5b91208 4 months ago Sylvain Joyeux log: fix initial connection to the process server<br/>
         
           5943981 4 months ago Sylvain Joyeux core: define task.roles, which returns the set of role names a task assumes<br/>
         
           3b11266 4 months ago Sylvain Joyeux core: implement a simple DSL for sequencing actions in tasks<br/>
         
           482215e 4 months ago Sylvain Joyeux core: implement "late" propagation handlers<br/>
         
           ee19886 4 months ago Sylvain Joyeux core,test: update the State#reset_when test w.r.t. the change in execution cycle<br/>
         
           bdb8d41 4 months ago Sylvain Joyeux core,test: remove wrong assertion in execution agent respawning<br/>
         
           543dbc9 4 months ago Sylvain Joyeux core: fix instance-level poll block support in transactions, and implement :on_replace =&gt; :copy<br/>
         
           dba299a 4 months ago Sylvain Joyeux core: support for copying event handlers during replacements<br/>
         
           feba30f 4 months ago Sylvain Joyeux core: allow to override the abstract flag on a per-instance basis<br/>
         
           e6a5b06 4 months ago Sylvain Joyeux core: in Roby.log_pp, do not do anything if the log level is lower than the displayed level<br/>
         
           f2bd7bb 4 months ago Sylvain Joyeux core: accept instance-level polling methods<br/>
         
           a04673e 4 months ago Sylvain Joyeux core: make the state events poll block a propagation handler<br/>
         
           6370a9a 4 months ago Sylvain Joyeux test,core: small test update<br/>
         
           64cc5ce 4 months ago Sylvain Joyeux core: change the structure of the complete execution phase<br/>
         
           11a33df 4 months ago Sylvain Joyeux add a method to validate if an option hash is compatible with #depends_on<br/>
         
           7a480d0 4 months ago Sylvain Joyeux droby: fix setting up new event proxies<br/>
         
           c7c84c8 4 months ago Sylvain Joyeux gui: do not assume that a task has instanciated all the events listed in their models<br/>
         
           6dbed19 4 months ago Sylvain Joyeux gui: separate setupUi and setupActions<br/>
         
           d2f44e9 4 months ago Sylvain Joyeux gui: fix exception if keep_signals is selected<br/>
         
           4436e8d 4 months ago Sylvain Joyeux gui: fix exception if the configuration dialog is opened before any cycle has been selected<br/>
         
           517e0c9 4 months ago Sylvain Joyeux gui: fix code that assumes that ancestors are "marshalled" ancestors<br/>
         
           8acc20f 4 months ago Sylvain Joyeux gui: fix creating a snapshot after the last interesting cycle<br/>
         
           7be6de6 4 months ago Sylvain Joyeux core: make DelayedArgumentFromObject usable if no class is explicitely expected<br/>
         
           63d7c97 4 months ago Sylvain Joyeux core: make DelayedArgumentFromObject weak by default<br/>
         
           a4788a0 4 months ago Sylvain Joyeux core: make DelayedArgumentFromState more robust<br/>
         
           c106793 4 months ago Sylvain Joyeux app: implement #pretty_print in ExtendedStruct<br/>
         
           8595daf 4 months ago Sylvain Joyeux core: in schedulers, when debug output is required, display the tasks that are pending and not executable<br/>
         
           8c8ef29 4 months ago Sylvain Joyeux app: make the arguments optional in #prepare_action<br/>
         
           14c76c9 4 months ago Sylvain Joyeux accept resolve_role_path 'role0', 'role1', ...<br/>
         
           f39ff7e 4 months ago Sylvain Joyeux shell: fix #remote_constant<br/>
         
           9268fb7 4 months ago Sylvain Joyeux core: call model event handlers before instance handlers<br/>
         
           3227ec5 4 months ago Sylvain Joyeux core: define #has_role?<br/>
         
           57fbf52 4 months ago Sylvain Joyeux temporal: schedule a child if its non-running parent has a temporal constraint to it<br/>
         
           85eb644 4 months ago Sylvain Joyeux add #remove_dependency that allows to remove a task dependency from a role name<br/>
         
           7cd51ad 4 months ago Sylvain Joyeux log: display failed emissions differently<br/>
         
           f440b45 4 months ago Sylvain Joyeux log: use a different plan for rebuilding and displaying<br/>
         
           e95728f 4 months ago Sylvain Joyeux distributed: add a mean to disable ownership tests completely for the sake of plan rebuilding in logs<br/>
         
           39cf938 5 months ago Sylvain Joyeux core,test: small 1.9<br/>
         
           95979a8 5 months ago Sylvain Joyeux core: better scheduler debug output<br/>
         
           ab79c9e 5 months ago Sylvain Joyeux core: we don't really need the reuse flag anymore (and it is harmful). Set it to false by default<br/>
         
           bd99fa3 5 months ago Sylvain Joyeux core: if the value returned by a planning method responds to as_plan, call it<br/>
         
           169eff2 5 months ago Sylvain Joyeux gui: fix selectively hiding tasks in the relations view<br/>
         
           9cbf7e1 5 months ago Sylvain Joyeux bin: fix changing the port in roby-display --server<br/>
         
           64265c9 5 months ago Sylvain Joyeux doc: small fixes<br/>
         
           692f5b8 5 months ago Sylvain Joyeux doc: move to the Rock style<br/>
         
           68f6d00 5 months ago Sylvain Joyeux log: display the full backtrace when the relation view catches an exception<br/>
         
           d6677cd 5 months ago Sylvain Joyeux log: fix loading relations_view.rb<br/>
         
           0d68aba 5 months ago Sylvain Joyeux log: in plan display, always add a display just after an event<br/>
         
           3f822ca 5 months ago Sylvain Joyeux core: in Event#initialize, initialize @sources with an empty set<br/>
         
           3a3ad98 5 months ago Alexander Duda compatibility fix for rake 0.9<br/>
         
           aa8859d 5 months ago Sylvain Joyeux log: move the plan rebuilder widget in its own file<br/>
         
           cadf615 5 months ago Sylvain Joyeux core: add some tests<br/>
         
           9ee617a 5 months ago Sylvain Joyeux core: in transactions, commit new unreachability handlers to the underlying plan<br/>
         
           eebbd7a 5 months ago Sylvain Joyeux core: make the execution agent relation usable in plans without engines<br/>
         
           39087ec 5 months ago Sylvain Joyeux app: make the shell look for methods on Robot as well<br/>
         
           ffa38e1 5 months ago Sylvain Joyeux core: remove old debugging code that is also a very small memory leak<br/>
         
           0947acd 5 months ago Sylvain Joyeux core: add droby marshalling support for Event<br/>
         
           46c0ebd 5 months ago Sylvain Joyeux core: fix LocalizedError#droby_dump<br/>
         
           003ba1f 5 months ago Sylvain Joyeux core: style fix<br/>
         
           936c661 5 months ago Sylvain Joyeux core: complete the temporal scheduler tests<br/>
         
           9f9dbd5 5 months ago Sylvain Joyeux core: improve message<br/>
         
           50a463f 5 months ago Sylvain Joyeux core: move the temporal scheduling logic from the scheduling relation to the temporal scheduler<br/>
         
           a75680b 5 months ago Sylvain Joyeux roby: rename #is_scheduled_as to #schedule_as<br/>
         
           d898847 5 months ago Sylvain Joyeux core: add the :plan_early option to #planned_by<br/>
         
           6f1cf9c 5 months ago Sylvain Joyeux log: add support for logging emit_failed and failed_to_start, and display them<br/>
         
           9198025 5 months ago Sylvain Joyeux log: improve dump/load of LocalizedError<br/>
         
         </td></tr>
       
       



       <tr class="name" id="typelib">
         <th>typelib</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="38"> 129 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_38"><td>
         
           3ca4de3 9 weeks ago Sylvain Joyeux tlb: fix loading containers that have a given name different than container_name&lt;Type&gt;<br/>
         
           9f94978 2 months ago Sylvain Joyeux expose the generic OutputStream/InputStream method for dump and load<br/>
         
           ab22197 2 months ago Sylvain Joyeux ruby: define Infinity and NaN to deal with these special values more easily<br/>
         
           d8d5083 3 months ago Sylvain Joyeux ruby: when converting to/from (u)int8, require the input to be a numeric<br/>
         
           2026ae1 5 months ago Peter Nemeth ruby: move some generic code out of the 'if dyncall?' guards<br/>
         
           090c5d1 5 months ago Sylvain Joyeux ruby: fix handling of false as a valid result of the convertion to ruby<br/>
         
           7ac7499 5 months ago Sylvain Joyeux ruby: make zero the only false value for /bool<br/>
         
           4ee80fd 5 months ago Sylvain Joyeux compatibility fix for boost &gt;= 1.46<br/>
         
           ae7995c 6 months ago Sylvain Joyeux ruby: in CompoundType::[], raise if the field does not exist<br/>
         
           f54d402 6 months ago Sylvain Joyeux ruby: add ways to access values bypassing the convertion<br/>
         
           71646a0 6 months ago Sylvain Joyeux ruby: make std::string values respond to to_str<br/>
         
           2ec1c66 6 months ago Sylvain Joyeux ruby: define some more raw access methods<br/>
         
           f30ff7a 6 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           5b6f430 6 months ago Sylvain Joyeux ruby: why linking with -z noexecstack was needed is not very clear, remove<br/>
         
           92e2089 6 months ago Sylvain Joyeux ruby: implement a scheme to allow subtype access in specialize blocks<br/>
         
           d7fb570 6 months ago Sylvain Joyeux Revert "Add antlr to manifest"<br/>
         
           68cd048 6 months ago Sylvain Joyeux fix compilation without antlr<br/>
         
           3753f67 6 months ago Sylvain Joyeux implement ContainerType#concat<br/>
         
           97baa3c 6 months ago Sylvain Joyeux ruby: implement ContainerType[index, size]<br/>
         
           8e95e42 6 months ago Sylvain Joyeux typelib needs nokogiri<br/>
         
           5429528 6 months ago Thomas Roehr Add antlr to manifest<br/>
         
           7459382 6 months ago Peter Soetens cmake: allow to override the plugin path for typelib.<br/>
         
           7976728 6 months ago Sylvain Joyeux core: implement a method to remove all aliases defined on a registry<br/>
         
           0f621d1 7 months ago Alexander Duda ruby: fix #(invalidate,apply)_changes_from_converted_types for compound-in-compound-with-converted-field<br/>
         
           64f8c30 7 months ago Sylvain Joyeux allow casting an enum to another enum that is its superset<br/>
         
           4e873cd 7 months ago Sylvain Joyeux test: remove usage of compound_type.field_name to get a field type<br/>
         
           5213c74 7 months ago Sylvain Joyeux ruby: don't overload methods on the type classes to provide easy access to field types<br/>
         
           8a33a2a 7 months ago Sylvain Joyeux test: add more complex tests for type name manipulation<br/>
         
           1cbfac7 7 months ago Sylvain Joyeux ruby: implement Registry#dup<br/>
         
           c3dbec8 7 months ago Sylvain Joyeux make cxx_to_typelib a singleton method of GCCXMLLoader so that it is available externally<br/>
         
           db419af 7 months ago Sylvain Joyeux remove deprecated dependency on antlr<br/>
         
           8e92132 7 months ago Sylvain Joyeux make the C++ tests use a tlb as input, so that most of them work if the internal C parser is disabled<br/>
         
           3aba7c9 7 months ago Sylvain Joyeux remove debugging-oriented 'throw' that was added to Registry::isSame<br/>
         
           e3f3239 7 months ago Sylvain Joyeux cmake: add link with ruby library for test<br/>
         
           57e30f6 7 months ago Sylvain Joyeux cmake: fix linking with boost::system and boost::filesystem<br/>
         
           1bba7e9 7 months ago Sylvain Joyeux cmake: fix linking on Mac OSX<br/>
         
           a55ad05 7 months ago Sylvain Joyeux make the cimport plugin optional<br/>
         
           c341e65 7 months ago Sylvain Joyeux ruby: fix Typelib.copy to properly handle converted fields<br/>
         
           7e8625f 7 months ago iMoby ruby: 1.9 compatibility fix<br/>
         
           f6e4167 8 months ago Peter Soetens manifest: remove depend_optional until autoproj is updated.<br/>
         
           450c423 8 months ago Steven Bellens typelib: declare doxygen and rdoc as optional dependencies<br/>
         
           fa949d9 8 months ago Sylvain Joyeux gccxml: ignore anonymous enums<br/>
         
           4cc72ff 8 months ago Sylvain Joyeux gccxml: don't ignore typedefs starting with __<br/>
         
           24c6daf 8 months ago Peter Soetens typelib: add export flags<br/>
         
           d7fa124 8 months ago Peter Soetens typelib: make gccxml system dependency<br/>
         
           ed8a978 8 months ago Peter Soetens typelib: add default Makefile for ROS systems<br/>
         
           2370c23 8 months ago Alexander Duda ruby: add a way to make sure that all converted fields get updated from the underlying typelib value<br/>
         
           94f1609 8 months ago iMoby ruby: small fix for Ruby1.9<br/>
         
           a1f3647 8 months ago Janosch Machowinski idl: do not generate typedefs for types with spaces in them<br/>
         
           ec0c9a7 8 months ago Sylvain Joyeux ruby: fix overloading protection for classes<br/>
         
           da95d40 8 months ago Sylvain Joyeux fix convertion of array-of-converted-types to Ruby<br/>
         
           9f4e6ff 8 months ago Alexander Duda ruby: fix redefinition warning for compounds with converted types<br/>
         
           27bff99 8 months ago Sylvain Joyeux ruby: in CompoundType better overloading policy and issue warnings when overloading is possible<br/>
         
           2bb0a96 8 months ago Sylvain Joyeux ruby: save the block given to convert_to_ruby for documentation purposes<br/>
         
           c5510cd 8 months ago Sylvain Joyeux ruby: fix convertion to/from ruby between char* and String<br/>
         
           b0dbd7c 8 months ago Sylvain Joyeux ruby: make ArrayType#each do the convertion to ruby<br/>
         
           1320288 8 months ago Sylvain Joyeux ruby: fix default convertions of ContainerType to Array<br/>
         
           99fab4b 9 months ago Sylvain Joyeux ruby: rename leftover do_insert to do_push<br/>
         
           ba51504 9 months ago Sylvain Joyeux ruby: small code improvement<br/>
         
           a5461a6 9 months ago Sylvain Joyeux ruby: small documentation fixup<br/>
         
           87e8dc3 9 months ago Sylvain Joyeux implement random access containers in both C++ and Ruby<br/>
         
           12243c1 9 months ago Sylvain Joyeux c++: document and test the main assumption in Vector::resize<br/>
         
           29572a1 9 months ago Sylvain Joyeux rename Container::insert to Container::push<br/>
         
           5da3122 9 months ago Sylvain Joyeux ruby: make ContainerType#each, #erase and #delete_if do proper ruby-to-typelib conversions<br/>
         
           d0d684b 9 months ago Sylvain Joyeux ruby: more useful error message if an inconsistency is found during type export<br/>
         
           2a6ee84 9 months ago Sylvain Joyeux ruby: use utilrb's const_defined_here? predicate as a 1.8/1.9 behaviour<br/>
         
           0dfd24e 9 months ago Janosch Machowinski display the converted type, not the raw type in pretty print<br/>
         
           7de2736 9 months ago Sylvain Joyeux ContainerType#insert is incompatible with Array's #insert method. Rename to #push<br/>
         
           2d3e72f 9 months ago Sylvain Joyeux document options to memory layout computation, and make Type#to_byte_array accept them<br/>
         
           7cda70e 9 months ago Sylvain Joyeux ruby: in the C++ extension, catch std::exception instead of only runtime_error<br/>
         
           7fcebfe 9 months ago Sylvain Joyeux ruby: implement Type.compatible_with_memcpy?<br/>
         
           c0cd194 9 months ago Sylvain Joyeux sort out some cross-include mess<br/>
         
           aa18f60 9 months ago Matthias Goldhoorn ruby: remove another 'exporting ...' debugging output<br/>
         
           93a24e9 9 months ago Matthias Goldhoorn ruby: remove 'exporting ...' debugging output<br/>
         
           c86d3d3 9 months ago Sylvain Joyeux ruby,gccxml: fix cxx_to_typelib to properly handle templates in a type's path<br/>
         
           45c2c77 9 months ago Sylvain Joyeux ruby,gccxml: don't register file names in name_to_nodes<br/>
         
           27fea29 9 months ago Alexander Duda fix typo yield(field_name, get_field[field_name]) =&gt; yield(field_name, get_field(field_name))<br/>
         
           95a6c16 9 months ago Alexander Duda generate valid IDL code for subtypes of templates<br/>
         
           93b4af4 9 months ago Sylvain Joyeux ruby: add ruby filter for git<br/>
         
           c653536 9 months ago Sylvain Joyeux ruby: fix return value of #dup defined on CompoundType for custom convertion contexts<br/>
         
           ee3b8e4 9 months ago Sylvain Joyeux fix some weird issue with normalizeIDLName<br/>
         
           7d89aa7 9 months ago Sylvain Joyeux ruby: validate values returned by Typelib.to_ruby a bit more<br/>
         
           78ed191 9 months ago Sylvain Joyeux ruby: allow the convertion functions to output subclasses of the specified type<br/>
         
           589324c 9 months ago Sylvain Joyeux ruby: remove debugging output<br/>
         
           9a3250c 9 months ago Sylvain Joyeux ruby: use #raw_get_field in CompoundType#pretty_print<br/>
         
           d05c3fb 9 months ago Sylvain Joyeux ruby: find_custom_convertion returns an array, no need to test for nil<br/>
         
           1c494f9 9 months ago Sylvain Joyeux ruby: fix typo<br/>
         
           cc54abd 9 months ago Sylvain Joyeux ruby: fix handling of recursive type convertion<br/>
         
           dd9feb9 9 months ago Sylvain Joyeux ruby: implement type export<br/>
         
           b2685f7 9 months ago Sylvain Joyeux ruby: add missing argument to block<br/>
         
           f60110d 9 months ago Sylvain Joyeux ruby: specify the convertions that exist for numeric types<br/>
         
           7e106bf 9 months ago Sylvain Joyeux ruby: always accept arrays to set ArrayType values<br/>
         
           cdf452a 9 months ago Sylvain Joyeux ruby: don't use Type#[] and Type#[]= internally<br/>
         
           bba3b5e 9 months ago Sylvain Joyeux ruby: export typename manipulation function from the C++ API to singleton methods on Typelib<br/>
         
           04bf928 9 months ago Sylvain Joyeux fix small warning<br/>
         
           ba029e9 9 months ago Sylvain Joyeux test: fix the C++ test suite by using __GCCXML__ to recognize Ruby or C parser in test_cimport.1<br/>
         
           d3e620c 9 months ago Sylvain Joyeux core: define splitTypename, fix getTypename and getNamespace for template-as-namespaces<br/>
         
           bbf2383 9 months ago Sylvain Joyeux ruby: major cleanup of the type convertion infrastructure<br/>
         
           4a2c99f 9 months ago Sylvain Joyeux ruby: fix most of the test suite<br/>
         
           af4aace 9 months ago Sylvain Joyeux ruby: fix convertions from /bool to true/false<br/>
         
           855d04c 9 months ago Sylvain Joyeux recursive types are not supported by GCCXML, leave them out<br/>
         
           53436a8 9 months ago Sylvain Joyeux ruby,test: start reviving the Ruby testsuite<br/>
         
           7133af4 9 months ago Sylvain Joyeux ruby,gccxml: don't generate identity aliases<br/>
         
           ca441b5 9 months ago Sylvain Joyeux ruby,gccxml: ignore the nodes that we don't use<br/>
         
           d9dbae9 9 months ago Sylvain Joyeux ruby,gccxml: simplify name handling<br/>
         
           3fdaf1a 9 months ago Sylvain Joyeux core: properly ignore copy(dst, src) where dst == src<br/>
         
           234ea7c 9 months ago iMoby ruby: fix for ruby 1.9<br/>
         
           1ff1d7b 10 months ago Sylvain Joyeux ruby,gccxml: properly ignore classes with protected members<br/>
         
           73611c3 10 months ago Sylvain Joyeux ruby,gccxml: improve typelib_to_cxx to properly handle complex templates<br/>
         
           c3ee056 10 months ago Sylvain Joyeux ruby: if a typelib_plugin file is present in a folder listed in TYPELIB_PLUGIN_PATH, load only that file<br/>
         
           99c1d59 10 months ago Sylvain Joyeux define Type#each_field<br/>
         
           d084d40 10 months ago Sylvain Joyeux define Type#marshalling_size<br/>
         
           bd6700e 10 months ago Sylvain Joyeux improve an error message during load()<br/>
         
           3dfce97 10 months ago Sylvain Joyeux ruby: in Typelib.from_ruby, return the raw value if no convertion method has been found<br/>
         
           51fe2e2 10 months ago Sylvain Joyeux ruby: properly detect errors in ContainerType.from_ruby<br/>
         
           ca578ba 10 months ago Sylvain Joyeux ruby: in CompoundType::offset_of, normalize the field name to string<br/>
         
           b8e7ee9 10 months ago Sylvain Joyeux ruby: use Typelib.to_ruby and Typelib.from_ruby to convert values for arrays and compounds<br/>
         
           148f96b 10 months ago Sylvain Joyeux ruby: validate that CompoundType::has_field? and CompoundType::[] get string as argument<br/>
         
           20ea270 10 months ago Sylvain Joyeux ruby: implement conditional specializations<br/>
         
           77154f4 10 months ago Sylvain Joyeux ruby: make DynamicWrapperBase#pretty_print forward to the typelib object<br/>
         
           0e44c1e 10 months ago Sylvain Joyeux ruby: fix DynamicWrapperBase#method_missing<br/>
         
           6e043ef 10 months ago Sylvain Joyeux ruby: in is_string_handler, return false if /char is not available in the registry<br/>
         
           879ee04 10 months ago Thomas Roehr Include BOOST headers explicitly to allow for multiple boost installations on a single system<br/>
         
           5f336bf 10 months ago Thomas Roehr Fix FindBoost to find matching set of headers and libraries.<br/>
         
           2cdad47 10 months ago Sylvain Joyeux tag typelib as "stable"<br/>
         
           a8355e9 10 months ago Sylvain Joyeux optimization in Registry#merge<br/>
         
           8fad856 10 months ago Sylvain Joyeux ruby: define Registry#size<br/>
         
           affdb19 10 months ago Sylvain Joyeux ruby: allow to initialize std::vector values from Ruby arrays<br/>
         
           b417a3b 11 months ago Sylvain Joyeux ruby: fix modifying-while-iterating bug<br/>
         
         </td></tr>
       
       



       <tr class="name" id="utilmm">
         <th>utilmm</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="39"> 18 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_39"><td>
         
           96ee929 7 weeks ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           7af2f04 3 months ago Thomas Roehr Allow building of utilmm for WIN32 in a first place by excluding UNIX specific classes<br/>
         
           9590175 3 months ago Thomas Roehr Add linking to boost_system for MAC<br/>
         
           7ee3044 3 months ago Peter Soetens make: update paths to smoothen transition to new stack layout<br/>
         
           39967b4 4 months ago Peter Soetens Merge remote branch 'origin/master-ros-refactoring'<br/>
         
           c4ac99e 4 months ago Peter Soetens Merge branch 'toolchain-2.4'<br/>
         
           fc54572 4 months ago Peter Soetens clang: cosmetic fixes to silence clang warnings.<br/>
         
           eaf0b03 4 months ago Peter Soetens configuration: fix bug with wrong C string comparison.<br/>
         
           e0b5b6e 4 months ago Peter Soetens make: install in stack's install directory.<br/>
         
           3e571be 4 months ago Steven Bellens fixing boost v1.46 compile errors by adding boost version checking ifdefs<br/>
         
           d31ac6a 5 months ago Sylvain Joyeux git: ignore build/<br/>
         
           888d6bc 5 months ago Sylvain Joyeux compatibility fix for boost 1.46<br/>
         
           91995dc 6 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           0f4d25c 8 months ago Peter Soetens utilmm: add export flags<br/>
         
           fe380d6 8 months ago Peter Soetens utilmm: add default Makefile for ROS systems<br/>
         
           113613d 9 months ago Thomas Roehr Add findSystemConfig to search through &lt;system-type&gt;/&lt;id&gt;/ and in &lt;system-type&gt; as fallback<br/>
         
           6c4f7c0 9 months ago Thomas Roehr Add configsearch (former configuration-manager pkg)<br/>
         
           e785c3d 10 months ago Thomas Roehr Add update FindBoost version to fix incorrect match between include and link directories.<br/>
         
         </td></tr>
       
       



       <tr class="name" id="utilrb">
         <th>utilrb</th>
       </tr>
       
         <tr class="from_commits_header">
           <td><a class="commit_event_toggler" id="40"> 35 commits</a> </td>
         </tr>
         <tr class="from_commits" id="commits_40"><td>
         
           c39c1e4 7 weeks ago Sylvain Joyeux pkgconfig: validate some properties on include_dirs and library_dirs<br/>
         
           27f00d0 7 weeks ago Sylvain Joyeux add Logger::Hierarchy#reset_own_logger<br/>
         
           3d90685 7 weeks ago Sylvain Joyeux automatically add Forward if Hierarchy is used to extend a module that has Forward<br/>
         
           b2e1425 7 weeks ago Sylvain Joyeux define Logger::Root to define a root logger compatible with Forward and Hierarchy<br/>
         
           09fd818 8 weeks ago Sylvain Joyeux pkgconfig: support running lines broken with \\<br/>
         
           2343757 3 months ago Sylvain Joyeux release 1.4.0<br/>
         
           2f79c6d 3 months ago Sylvain Joyeux fix rubygem installation with the newest versions of mkmf.rb<br/>
         
           f3e5fea 5 months ago Sylvain Joyeux use FileUtils::RUBY from rake for better compatibility<br/>
         
           c80881e 6 months ago Sylvain Joyeux logger: define #make_own_logger in Logger::Hierarchy<br/>
         
           1e85ba3 6 months ago Sylvain Joyeux define Hash#recursive_merge<br/>
         
           994e227 6 months ago Sylvain Joyeux Merge remote-tracking branch 'orocos/master'<br/>
         
           6c9e974 6 months ago Peter Soetens Add ruby dependency on utilrb.<br/>
         
           9e55e3b 6 months ago Peter Soetens manifest: remove ruby dep since autoproj does not handle it.<br/>
         
           9b60797 6 months ago Peter Soetens manifest: depend on nokogiri<br/>
         
           f0dfefc 6 months ago Sylvain Joyeux marshal: in #load_with_missing_constants, seek to the position at the beginning of the method when retrying<br/>
         
           bf7fe6a 7 months ago Ruben Smits manifest: add ruby dependency<br/>
         
           55f5d4c 7 months ago Sylvain Joyeux Marshal#load_with_missing_constants was missing the BlackHole implementation<br/>
         
           e773128 8 months ago Sylvain Joyeux define Marshal.load_with_missing_constants<br/>
         
           bc38c8f 8 months ago Peter Soetens utilrb: add default Makefile for ROS systems<br/>
         
           093b539 8 months ago Sylvain Joyeux fix Logger.io<br/>
         
           43172dc 9 months ago Thomas Roehr Add configsearch to utilrb. Allows search for configuration files in ROCK_CONFIG_PATH<br/>
         
           32b3c40 9 months ago iMoby implement Logger#io<br/>
         
           89b7428 9 months ago Sylvain Joyeux module: add const_defined_here?<br/>
         
           c733c1d 10 months ago Alexander Duda fix DSL detection of newly defined constants if QtRuby is loaded<br/>
         
           2f7aeff 10 months ago Sylvain Joyeux create a pure-ruby implementation of pkg-config<br/>
         
           8a6ed80 10 months ago Sylvain Joyeux module: fix define_or_reuse on 1.9.2<br/>
         
           96b4b2e 10 months ago Sylvain Joyeux cached_enum: needs object/attribute<br/>
         
           57cb42a 10 months ago Sylvain Joyeux pkg-config: optimizations<br/>
         
           a80bdbd 11 months ago Sylvain Joyeux now that eval accepts a file and line number argument, there is no need to do weird backtrace fitlering<br/>
         
           c7a3fb7 11 months ago Sylvain Joyeux Module does not have a #superclass instance method. Split has_ancestor? between Module and Class<br/>
         
           166ee6b 11 months ago Sylvain Joyeux define all_NAME and self_NAME for inherited enumerables<br/>
         
           a72411c 11 months ago Sylvain Joyeux make ValueSet an acceptable object for hash keys<br/>
         
           a33fd74 11 months ago Sylvain Joyeux NoMethodError is a NameError but we don't want to filter it out<br/>
         
           a44cc56 11 months ago Sylvain Joyeux dsl: when filtering NameError, use e.backtrace instead of caller<br/>
         
           afe6879 11 months ago Sylvain Joyeux dsl: if full_backtrace is true, do not filter NameError exceptions<br/>
         
         </td></tr>
       
       


</table>
