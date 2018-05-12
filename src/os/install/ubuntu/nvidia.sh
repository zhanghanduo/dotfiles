#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Nvidia Driver Install\n\n"

add_ppa "graphics-drivers/ppa"

update()

install_package "Nvidia" "nvidia-396"

install_package "Nvidia-settings" "nvidia-settings"
