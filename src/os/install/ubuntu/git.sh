#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Git\n\n"

install_package "Git" "git"

# git configuration
git config --global user.name "ugv"
git config --global user.email "hzhang032@e.ntu.edu.sg"
# git config --global user.signingkey "$PGP_KEY"
