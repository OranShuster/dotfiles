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

if [ -s "$HOME/.config/broot/launcher/bash/br" ]; then 
  source $HOME/.config/broot/launcher/bash/br
else
  echo -e "${RED}!!!broot not installed!!!${NOCOLOR}"
fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"
else
  echo -e "${RED}!!!pyenv not installed!!!${NOCOLOR}"
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

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform