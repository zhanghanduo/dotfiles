#!/bin/zsh


sudo apt-get install python-catkin-tools






sudo apt install ros-kinetic-gps-common

cd ~

mkdir -p novatel/src

cd novatel

catkin init

catkin config --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo

cd src

git clone https://github.com/swri-robotics/novatel_gps_driver

rosdep install . --from-paths -i

catkin build


