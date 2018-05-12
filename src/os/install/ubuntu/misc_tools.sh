#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"

install_package "Cmake" "cmake"

install_package "Python pip" "python-pip"

## Install python tools


## Time sync tools
install_package "Chrony" "chrony"

install_package "Ntpdate" "ntpdate"

## Compiling toolchains

#sudo apt-get install --allow-unauthenticated -qqy libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler

install_package "Boost" "libboost-all-dev" "--no-install-recommends"

install_package "Gflags" "libgflags-dev"

install_package "Glog" "libgoogle-glog-dev"

install_package "LMDB" "liblmdb-dev"

# BLAS & LAPACK (Numeric Calculation)
install_package "BLAS" "libatlas-base-dev"

install_package "LAPACK" "liblapack-dev"

install_package "Suite Sparse" "libsuitesparse-dev"

## Install Eigen
install_package "Eigen3" "libeigen3-dev"

## Install Ceres Solver
cd ~/softwares

git clone --quiet https://github.com/RainerKuemmerle/g2o.git

cd ceres-solver && mkdir build && cd build && cmake .. && make -j8 && sudo make install

# Install G2O
cd ~/softwares

git clone --quiet https://github.com/RainerKuemmerle/g2o.git

cd g2o/ && mkdir build && cd build && cmake .. && make -j8 && sudo make install

cd ~

# Install Dropdown Terminal Guake
install_package "Guake3" "guake"

sudo ln -s `which zsh` /etc/xdg/autostart/
