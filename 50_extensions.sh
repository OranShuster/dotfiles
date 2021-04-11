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

source /Users/oranshuster/.config/broot/launcher/bash/br

if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then 
  . "/usr/local/opt/nvm/nvm.sh"
else
  echo -e "${RED}!!!nvm not installed!!!${NOCOLOR}"
fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
else
  echo -e "${RED}!!!pyenv not installed!!!${NOCOLOR}"
fi