if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
else
  echo -e "${RED}!!!fzf not installed!!!${NOCOLOR}"
fi

if command -v thefuck 1>/dev/null 2>&1; then
  eval $(thefuck --alias)
else
  echo -e "${RED}!!!thefuck not installed!!!${NOCOLOR}"
fi

if [ -n "${DOTFILES_ENABLE_PYTHON}" ]; then
  if command -v pyenv 1>/dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
  else
    echo -e "${RED}!!!pyenv not installed!!!${NOCOLOR}"
  fi
fi

if [ -s "/opt/homebrew/opt/asdf/libexec/asdf.sh" ]; then 
  . /opt/homebrew/opt/asdf/libexec/asdf.sh
  . ~/.asdf/plugins/java/set-java-home.zsh
else
  echo -e "${RED}!!!asdf not installed!!!${NOCOLOR}"
fi

if command -v zoxide 1>/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
else
  echo -e "${RED}!!!zoxide not installed!!!${NOCOLOR}"
fi

if [ -n "${DOTFILES_ENABLE_JS}" ]; then
  export NVM_DIR="$HOME/.nvm"
  if [ -s "$NVM_DIR/nvm.sh" ]; then
    \. "$NVM_DIR/nvm.sh"  # This loads nvm
  else
    echo -e "${RED}!!!nvm not installed!!!${NOCOLOR}"
  fi
fi

if [ -n "${DOTFILES_ENABLE_GO}" ]; then
  if command -v goenv 1>/dev/null 2>&1; then
    export GOENV_ROOT="$HOME/.goenv"
    export PATH="$GOENV_ROOT/bin:$PATH"
    eval "$(goenv init -)"
    export PATH="$GOROOT/bin:$PATH"
    export PATH="$PATH:$GOPATH/bin"
  else
    echo -e "${RED}!!!goenv not installed!!!${NOCOLOR}"
  fi
fi

autoload -U +X bashcompinit && bashcompinit
if [ -n "${DOTFILES_ENABLE_TF}" ]; then
  complete -o nospace -C /usr/local/bin/terraform terraform
fi

