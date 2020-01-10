#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Original Vim 8.0
# install_package "GNOME Vim" "vim-gnome"

# neoVim
vim_url="https://github.com/neovim/neovim/releases/download/v0.4.3/nvim.appimage"
print_in_purple "\n • Download neoVim\n"

download "$vim_url" "/usr/local/bin/vim"
excute "chmod +x /usr/local/bin/vim"

