#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"
install_package "ShellCheck" "shellcheck"
install_package "xclip" "xclip"
install_package "ag" "silversearcher-ag"
install_package "Python pip" "python-pip"
install_package "Python3 pip" "python3-pip"

# Compiling toolchains
install_package "Boost" "libboost-all-dev" "--no-install-recommends"

install_package "protobuf" "libprotobuf-dev"

install_package "Gflags" "libgflags-dev"

install_package "Glog" "libgoogle-glog-dev"

# install_package "LMDB" "liblmdb-dev"

# BLAS & LAPACK (Numeric Calculation)

install_package "BLAS" "libatlas-base-dev"

install_package "LAPACK" "liblapack-dev"

install_package "Suite Sparse" "libsuitesparse-dev"

## Install Eigen
install_package "Eigen3" "libeigen3-dev"

# Guake Terminal
install_package "Guake" "guake"

# Asciinema
install_package "ASCII record" "asciinema"

# direnv
install_package "direnv" "direnv"


# node js packages
# if [ -d "$HOME/.nvm" ]; then
#
#     if ! package_is_installed "yarn"; then
#
#         add_key "https://dl.yarnpkg.com/debian/pubkey.gpg" \
#             || print_error "Yarn (add key)"
#
#         add_to_source_list "https://dl.yarnpkg.com/debian/ stable main" "yarn.list" \
#             || print_error "Yarn (add to package resource list)"
#
#         update &> /dev/null \
#             || print_error "Yarn (resync package index files)"
#
#     fi
#
#     install_package "Yarn" "yarn" "--no-install-recommends"
# fi
