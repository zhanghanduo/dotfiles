#!/bin/zsh

## 1. Install Opencv with opencv_contrib and compile with CUDA

cd ~/softwares/

git clone https://github.com/opencv/opencv.git

git clone https://github.com/opencv/opencv_contrib.git

cd opencv

mkdir release && cd release

cmake -D CMAKE_BUILD_TYPE=RELEASE \ 
-D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \ 
-D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON \ 
-D BUILD_EXAMPLES=ON -D WITH_OPENGL=ON -D WITH_QT=ON -D WITH_CUDA=ON -D CUDA_NVCC_FLAGS="-D_FORCE_INLINES" \ 
-D ENABLE_FAST_MATH=1 -D CUDA_FAST_MATH=1 -D WITH_CUBLAS=1 -D CUDA_GENERATION=Auto ..

make -j8

sudo make install

pkg-config --modversion opencv

echo '/usr/local/lib' | sudo tee -a /etc/ld.so.conf.d/opencv.conf

sudo ldconfig

printf '# OpenCV\nPKGCONFIGPATH=$PKGCONFIGPATH:/usr/local/lib/pkgconfig\nexport PKGCONFIGPATH\n' >> ~/.zhrc

source ~/.zhrc 

## 2. Install ROS Opencv Bridge

cd ~/catkin_ws/src/

git clone https://github.com/ros-perception/vision_opencv.git

ck

## 3. Install Other computer vision tools

cd ~/softwares/

### DLib

git clone git@github.com:dorian3d/DLib.git
cd DLib && mkdir build && cd build && cmake .. & make -j8 & sudo make install

### DLoopDetector

git clone git@github.com:dorian3d/DLoopDetector.git
cd DLoopDetector && mkdir build && cd build && cmake .. & make -j8 & sudo make install

### OpenGV (Optional)

git clone git@github.com:laurentkneip/opengv.git
cd opengv && mkdir build && cd build && cmake .. & make -j8 & sudo make install


