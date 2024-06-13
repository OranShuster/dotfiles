export DOTFILES_ENABLE_GO=true
export DOTFILES_ENABLE_PYTHON=true
export DOTFILES_ENABLE_JS=true
export DOTFILES_ENABLE_TF=true

setopt hist_ignore_all_dups
setopt APPEND_HISTORY
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE

export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi


RED="\033[1;31m"

