#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

# install_package "Transmission" "transmission"
install_package "VLC" "vlc"

install_package "Zsh" "zsh"
chsh -s "/usr/bin/zsh"

# GUI

install_package "qt5" "qt5-default"

install_package "glew" "libglew-dev"

install_package "jpeg" "libjpeg8-dev"

install_package "gtk" "libgtk2.0-dev"

install_package "ranger" "ranger"

# Install package of ripgrep to replace native grep/ack
# curl -LO "https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb"

# sudo dpkg -i "repgrep_11.0.2_amd64.deb"

# Cannot apt or pip install bat on ubuntu version older than 19.10.
# install_package "bat" "bat"

git clone --depth 1 --quiet https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

