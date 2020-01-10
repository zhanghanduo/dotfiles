#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Build Essentials\n\n"

# Install tools for compiling/building software from source.
install_package "Build Essential" "build-essential"

# GnuPG archive keys of the Debian archive.
install_package "GnuPG archive keys" "debian-archive-keyring"

install_package "Cmake" "cmake"
install_package "pkg-config" "pkg-config"
install_package "python-dev" "python-dev"

# ssh
install_package "ssh-client" "openssh-client"
install_package "ssh-server" "openssh-server"

# GCC Optional
install_package "tbb" "libtbb-dev"

install_package "flann" "libflann-dev"

install_package "gcc-multi" "gcc-multilib"

install_package "g++-multi" "g++-multilib"

install_package "fortran" "gfortran"

# Network protocol
#install_package "pcap" "libpcap-dev"

# Software which is not included by default
# in Ubuntu due to legal or copyright reasons.
#install_package "Ubuntu Restricted Extras" "ubuntu-restricted-extras"
