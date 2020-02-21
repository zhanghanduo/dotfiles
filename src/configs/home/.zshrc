source $HOME/antigen.zsh

HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle extract
# antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle leophys/zsh-plugin-fzf-finder
antigen bundle sudo
# antigen bundle fzf
antigen bundle z
antigen bundle andrewferrier/fzf-z
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle MichaelAquilina/zsh-autoswitch-virtualenv
antigen bundle supercrabtree/k
antigen bundle copydir
antigen bundle fd
antigen bundle larkery/zsh-histdb

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $HOME/.aliases
source $HOME/.env

[ -f ".zshrc.local"] && source ".zshrc.local"