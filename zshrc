#!/bin/zsh
#set -x
# zmodload zsh/zprof # Uncomment to benchmark

DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

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
# echo "Done loading dotfiles..."

# zprof # Uncomment to benchmark
export PATH=/Users/orans/.local/bin:${PATH}

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/orans/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
