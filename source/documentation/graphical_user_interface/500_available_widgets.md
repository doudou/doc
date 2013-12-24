---
title: Available Widgets
sort_info: 500
---

All standard qt and qwt widgets can be used from ruby. Furthermore rock is
shipped with a collection of widgets for some basic data analysis.

**ImageView:**
Widget for displaying camera images (base/frame/frame, base/frame/FramePair)

~~~ ruby
  require 'vizkit'
  orocos.run 'my_camera' do
    camera = Orocos.name_service.get 'camera'
    camera.start 
    Vizkit.display camera.frame
    Vizkit.exec
  end
~~~

![ImageView](500_image_viewer.png)
{: .align-center}

**PlotWidget:**
Widget for plotting sensor data

~~~ ruby
  require 'vizkit'
  orocos.run 'my_sensor' do
    widget = Vizkit.default_loader.Plot2d
    sensor = Orocos.name_service.get 'sensor'
    sensor.configure
    sensor.start 

    sensor.data.connect_to do |sample,_|
      widget.update sample.field2.to_f,"sample1"
      widget.update sample.field2.to_f,"sample2"
    end

    widget.show
    Vizkit.exec
  end
~~~

![Plot2d](500_plot2d.png)
{: .align-center}


**ArtificialHorizon:**
Widget for visualizing a rigid body state
