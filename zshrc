#!/bin/zsh
#set -x

for i in $HOME/dotfiles/[0-9]*.sh; do
        if [[ $__shell_bench -eq 1 ]]; then
                start_ns=$(gdate +%s%N)
                source "$i"
                end_ns=$(gdate +%s%N)
                ((elapsed_ms = (end_ns - start_ns) / 1000000))
                echo $i $elapsed_ms
        else
                source "$i"
        fi
done
unset i
echo "Done loading dotfiles..."
