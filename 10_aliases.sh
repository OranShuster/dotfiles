alias cd..="cd .."
alias gp='gpv'
alias gpr='git pull --rebase=merges origin develop'
alias gs='gst'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# alias gslack="git --no-pager log --pretty=format:'> %s%Creset' --abbrev-commit -n 15 | sed 's/\[src\]/*\[src\]*/g' | sed 's/\[fix\]/*\[fix\]*/g' | sed '/[vV]ersion/q'"
alias kns="kubectl config set-context --current --namespace"

alias ls='eza'
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .*'

##create parent directories
alias mkdir='mkdir -pv'

alias cat='bat'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias sshpub='pbcopy < /Users/oran.shuster/.ssh/id_rsa.pub'

alias gcf='git --no-pager  diff --name-only HEAD..origin/master'
alias gcdc='git log --format=%s origin/master..HEAD | wc -l'

function grebase() {
  if [ $# -eq 0 ]
    then
      1=$(gcdc)
  fi
  git rebase -i HEAD~"$1"
}

function greset() {
  if [ $# -eq 0 ]
    then
      1=$(gcdc)
  fi
  git reset --soft HEAD~"$1"
}

function gsquash() {
  if [ $# -eq 0 ]
    then
      echo "No argument"
      return 1
  fi
  git reset --soft HEAD~"$1"
  git commit --edit -m"$(git log --format=%B --reverse HEAD..HEAD@{1})"
}

unalias gpf &>/dev/null
function gpf(){
	git push -fu origin "$(current_branch)"
}

unalias gpfv &>/dev/null
function gpfv(){
        git push -fu --no-verify  origin "$(current_branch)"
}

function piall(){
    set -e
    branches="$(git for-each-ref refs/heads | cut -d/ -f3-)"
    for branch in $branches; do
        printf "\n ***Updating branch %s \n" "${branch}"
        gc "${branch}"
        pi
    done
    set +e
}