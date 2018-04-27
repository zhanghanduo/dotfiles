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

install_package "Zsh-syntax-highlighting" "zsh-syntax-highlighting"

install_package "Autojump" "autojump"

git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

chsh -s `which zsh`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -