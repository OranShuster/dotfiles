# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# if [[ -d "$PYENV_ROOT/bin" ]]; then
#   export PATH="$PYENV_ROOT/bin:$PATH"
#   eval "pyenv" "pyenv init - zsh"
# fi

# fzf
if (( $+commands[fzf] )); then
  source <(fzf --zsh)
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix'  # strip-cwd-prefix removes the leading ./ from results
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
    --height=60%
    --layout=reverse
    --border=rounded
    --prompt="  "
    --pointer="  "
    --preview-window=right:65%:wrap:border-left
  '
  export _FZF_PREVIEW_CMD='bat --color=always --style=plain,numbers --line-range=:500 {}'
  export FZF_CTRL_T_OPTS="--preview '$_FZF_PREVIEW_CMD'"

  # Ctrl+F: file picker excluding hidden files
  _fzf_file_no_hidden() {
    local cmd result
    cmd="${FZF_DEFAULT_COMMAND/--hidden /}"
    result=$(eval "${cmd:-find . -type f}" | fzf --preview "$_FZF_PREVIEW_CMD") \
      && LBUFFER+="$result"  # LBUFFER is the text left of the cursor
    zle reset-prompt
  }
  zle -N _fzf_file_no_hidden
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

# fnm
if (( $+commands[fnm] )); then
  eval "$(fnm env --shell zsh)"
fi

# Terraform completions moved to 40_completions.sh (needs compinit first)
