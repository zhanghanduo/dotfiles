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

# Cannot apt or pip install bat on ubuntu version older than 19.10.
# install_package "bat" "bat"

git clone --depth 1 --quiet https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

