#!/bin/zsh
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
RED="\033[1;31m"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
setopt hist_ignore_all_dups
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

for i in $HOME/dotfiles/*.sh(.); do
	if [[ $__shell_bench -eq 1 ]]; then
    start_ns=$(gdate +%s%N)
    source "$i"
    end_ns=$(gdate +%s%N)
    (( elapsed_ms = (end_ns - start_ns) / 1000000 ))
    echo $i $elapsed_ms
	else
		source "$i"
	fi
done; unset i