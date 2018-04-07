#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

add_ppa "graphics-drivers/ppa"

update()

install_package "Nvidia" "nvidia-390"

install_package "Nvidia-settings" "nvidia-settings"
