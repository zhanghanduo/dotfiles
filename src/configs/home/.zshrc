# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz compinit && compinit -C
HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')

eval "$(zoxide init zsh)"
# source <(antibody init)
source ~/.zsh_plugins.sh
# antibody bundle robbyrussell/oh-my-zsh path:lib
export ZSH=$(antibody path robbyrussell/oh-my-zsh)

source $HOME/.aliases
source $HOME/.env
source $HOME/.functions
# [ -f ".zshrc.local"] && source ".zshrc.local"


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
