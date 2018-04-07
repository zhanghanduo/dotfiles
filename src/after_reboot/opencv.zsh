#!/bin/zsh

cd ~/softwares/opencv_3.4/opencv/

mkdir release && cd release

cmake -D CMAKE_BUILD_TYPE=RELEASE \ 
-D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=../../softwares/opencv_3.4/opencv_contrib/modules \ 
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

cd ~