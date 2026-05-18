alias gs='git status'
alias gb='git branch'
alias gco='git switch'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

if (( $+commands[eza] ));
then
    alias ls='eza --icons'
    alias ll='eza -lh --icons --git'
    alias la='eza -lah --icons --git'
    alias tree='eza --tree --icons'
    # Reuse ls completions for eza (avoids defining a separate completion function)
    compdef eza=ls
fi

alias ll='ls -la'
alias mkdir='mkdir -pv'

alias cat='bat'
alias catt='bat -pp'
alias preview="fzf --preview 'bat --color \"always\" {}'"

alias tf='terraform'

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'
