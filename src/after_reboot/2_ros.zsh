#!/bin/zsh

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../os/utils.sh" \
    && . "../os/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

update

install_package "ROS full" "ros-kinetic-desktop-full"

sudo rosdep init

rosdep update

echo "source /opt/ros/kinetic/setup.zsh" >> ~/.zshrc

echo "source $HOME/catkin_ws/devel/setup.zsh" >> ~/.zshrc

echo "source $HOME/catkin_spt/devel/setup.zsh" >> ~/.zshrc

source ~/.zshrc

# Install compiling tools

install_package "Rosinstall" "python-rosinstall"

install_package "Rosinstall generator" "python-rosinstall-generator"

install_package "Wstool" "python-wstool"

install_package "Catkin tools" "python-catkin-tools"

# Install ROS tools

install_package "GPS common" "ros-kinetic-gps-common"

install_package "ROS serial" "ros-kinetic-serial"

install_package "ROS tf-eigen" "ros-kinetic-tf2-eigen"

install_package "ROS tf-convensions" "ros-kinetic-tf-conversions"

install_package "ROS eigen-conversions" "ros-kinetic-eigen-conversions"

install_package "ROS rviz visual tools" "ros-kinetic-rviz-visual-tools"

cd ~/catkin_spt/src/

git clone git@github.com:lrse/ros-utils.git

## (Optional) Hector tools for map and path visualization
# install_package "ROS hector family" "ros-kinetic-hector-*"





