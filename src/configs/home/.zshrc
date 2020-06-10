# source $HOME/antigen.zsh
HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')

source ~/.zsh_plugins.sh

source $HOME/.aliases
source $HOME/.env
source $HOME/.functions
# [ -f ".zshrc.local"] && source ".zshrc.local"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
