#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
print_in_purple "\n   Nvidia Driver Installation\n\n"

ask_for_confirmation "Do you want to install Nvidia Driver?"

if answer_is_yes; then
    add_ppa "graphics-drivers/ppa"
    update
    install_package "nvidia-440" "nvidia-440"
fi


