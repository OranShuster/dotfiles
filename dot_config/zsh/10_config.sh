export DOTFILES_ENABLE_GO=true
export DOTFILES_ENABLE_PYTHON=true
export DOTFILES_ENABLE_JS=true
export DOTFILES_ENABLE_TF=true

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT  # sort file10 after file9, not after file1

RED="\033[1;31m"
