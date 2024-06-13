source ~/.zplug/init.zsh

# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit

zplug romkatv/powerlevel10k, as:theme, depth:1
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh

zplug "MichaelAquilina/zsh-you-should-use"
zplug "zsh-users/zsh-autosuggestions"

# autoload -Uz compinit
# compinit

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load