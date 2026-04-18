# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# if [[ -d "$PYENV_ROOT/bin" ]]; then
#   export PATH="$PYENV_ROOT/bin:$PATH"
#   eval "pyenv" "pyenv init - zsh"
# fi

# fzf
if (( $+commands[fzf] )); then
  source <(fzf --zsh)
else
  echo $fg[red] "FZF is not installed"
fi

# mise - shims mode only needs PATH, no eval needed
# Note: run `mise settings set python.compile true` once manually if needed
if (( $+commands[mise] )); then
  export PATH="$HOME/.local/share/mise/shims:$PATH"
else
  echo $fg[red] "Mise is not installed"
fi

# zoxide
if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi

# Terraform completions moved to 40_completions.sh (needs compinit first)
