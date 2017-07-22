#!/bin/bash -xve

#required packages
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg

#ros install
cd ..
git clone https://github.com/futa0829/ros_setup_scripts_Ubuntu14.04_server.git
cd ./ros_setup_scripts_Ubuntu14.04_server
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_es/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
