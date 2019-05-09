#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Zsh Install\n\n"

## ZSH envrionment (Highly recommended!)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
install_package "Zsh" "zsh"
## install oh-my-zsh to manage zsh environment
# wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --quiet https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sudo apt install fonts-powerline

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# ZSH_THEME="spaceship" in your .zshrc

chsh -s `which zsh`

#Optional fasd (or natural j) and sudo

# Don't forget to add plugins=( [plugins...] zsh-syntax-highlighting zsh-autosuggestions autojump) to your zshrc later!
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
