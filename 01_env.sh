# Path shit
export PATH="$HOME/.local/bin:${PATH}"
export PATH="/usr/local/sbin:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="$HOME/scripts:${PATH}"
export PATH="$HOME/.local/bin:${PATH}"
export PATH="$HOME/.cargo/bin:${PATH}"
export PATH="$HOME/.rd/bin:${PATH}"

eval "$(/opt/homebrew/bin/brew shellenv zsh)"

export NODE_OPTIONS=--max-old-space-size=16000