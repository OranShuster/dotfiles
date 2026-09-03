alias gs='git status'
alias gb='git branch'
alias gco='git switch'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset %d' --abbrev-commit"

if (( $+commands[eza] ));
then
    alias ls='eza --icons=auto'
    alias ll='eza -lh --icons=auto --git'
    alias la='eza -lah --icons=auto --git'
    alias tree='eza --tree --icons=auto'
    # Reuse ls completions for eza (avoids defining a separate completion function)
    compdef eza=ls
else
    alias ll='ls -la'
    alias la='ls -lah'
    # ponytail: find|sed tree for a bare system with neither eza nor tree(1).
    # Prints every level, no depth limit -- install eza or tree if that matters.
    alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
fi

alias mkdir='mkdir -pv'

alias cat='bat'
alias catt='bat -pp'
alias preview="fzf --preview 'bat --color \"always\" {}'"

alias tf='terraform'

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'
