#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"

install_package "Cmake" "cmake"

install_package "Python pip" "python-pip"

## Time sync tools
install_package "Chrony" "chrony"
install_package "Ntpdate" "ntpdate"

## Compiling toolchains

sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler

sudo apt-get install --no-install-recommends libboost-all-dev

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

# BLAS & LAPACK
sudo apt-get install libatlas-base-dev

## Install g2o
install_package "Suite Sparse" "libsuitesparse-dev"

cd ~/projects

git clone git@github.com:RainerKuemmerle/g2o.git

cd g2o/ && mkdir build && cmake .. && make -j8 && sudo make install

## Install Ceres Solver
cd ~/softwares

git clone --quiet git@github.com:ceres-solver/ceres-solver.git

cd ceres-solver && mkdir build && cmake .. && make -j8 && sudo make install
cd ~
## ZSH envrionment
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package "Zsh" "zsh"
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s `which zsh`

install_package "Zsh-syntax-highlighting" "zsh-syntax-highlighting"

install_package "Autojump" "autojump"

git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# install_package "ShellCheck" "shellcheck"
# install_package "xclip" "xclip"

# if [ -d "$HOME/.nvm" ]; then

#     if ! package_is_installed "yarn"; then

#         add_key "https://dl.yarnpkg.com/debian/pubkey.gpg" \
#             || print_error "Yarn (add key)"

#         add_to_source_list "https://dl.yarnpkg.com/debian/ stable main" "yarn.list" \
#             || print_error "Yarn (add to package resource list)"

#         update &> /dev/null \
#             || print_error "Yarn (resync package index files)"

#     fi

#     install_package "Yarn" "yarn" "--no-install-recommends"
# fi
