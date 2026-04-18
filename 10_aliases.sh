alias gs='git status'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
if (( $+commands[eza] )); then alias ls='eza'; fi

alias ll='ls -la'
alias mkdir='mkdir -pv'

alias cat='bat'
alias catt='bat -pp'
alias preview="fzf --preview 'bat --color \"always\" {}'"