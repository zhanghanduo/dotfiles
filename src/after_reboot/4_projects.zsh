#!/bin/zsh

## 1. Install flycapture softwares
cd softwares/flycapture/

sudo sh install_flycapture.sh



## 2. Install Flea camera driver
cd ~/catkin_ws/src/

git clone git@gitlab.com:ugv_stereo/flea_capture.git

## 3. Install GPS (Novatel) driver
git clone git@gitlab.com:ugv_stereo/gps_novatel.git

## 4. Install camera info publisher
cd ~/catkin_spt/src/
git clone git@gitlab.com:ugv_stereo/cameraInfoPublisher.git

## 5. Download SLAM package
git clone git@gitlab.com:ugv_stereo/sslam.git
cd ~/catkin_ws/src/
## 6. Download Object Detection package (together with universal obstacle msgs)
git clone git clone git@bitbucket.org:ugv_stereo/object_detection.git
cd object_detection/ && git checkout long_comm && cd ..

git clone git@gitlab.com:ugv_stereo/obstacle_msgs.git
## 7. (Optional) Download heading reference package
git clone git@gitlab.com:ugv_stereo/localization_shell.git

## 8. Download Lane Detection package

## 9. Download Kerb Detection package

## 10. Download Map integration package
git clone git@gitlab.com:ugv_stereo/cubicle_merge.git

## 11. Read through all the readme in these packages and compile

catkin_make



