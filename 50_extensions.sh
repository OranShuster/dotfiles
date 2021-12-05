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

if [ -s "/Users/oranshuster/.config/broot/launcher/bash/br" ]; then 
  source /Users/oranshuster/.config/broot/launcher/bash/br
else
  echo -e "${RED}!!!broot not installed!!!${NOCOLOR}"
fi

source /Users/oranshuster/.config/broot/launcher/bash/br

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"
else
  echo -e "${RED}!!!pyenv not installed!!!${NOCOLOR}"
fi

if [ -s "/usr/local/opt/asdf/libexec/asdf.sh" ]; then 
  . /usr/local/opt/asdf/libexec/asdf.sh
else
  echo -e "${RED}!!!asdf not installed!!!${NOCOLOR}"
fi