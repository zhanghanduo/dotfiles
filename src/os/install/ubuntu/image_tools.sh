#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Image Tools\n\n"

# install_package "GIMP" "gimp"
install_package "ImageMagick" "imagemagick"
install_package "W3m-img" "w3m-img"
install_package "png quant" "pngquant"
install_package "key status display" "key-mon"
add_ppa "peek-developers/stable"
install_package "peek" "peek"
