# Eval cache helper - caches output of slow `eval "$(tool init)"` commands
# Run `zsh-cache-clear` after updating tools to regenerate caches
_cached_eval() {
  local name="$1" cmd="$2"
  local cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/zsh-eval-cache"
  local cache_file="${cache_dir}/${name}.zsh"
  if [[ ! -f "$cache_file" ]]; then
    mkdir -p "$cache_dir"
    eval "$cmd" > "$cache_file" 2>/dev/null
  fi
  source "$cache_file"
}

zsh-cache-clear() {
  rm -rf "${XDG_CACHE_HOME:-$HOME/.cache}/zsh-eval-cache"
  echo "Eval cache cleared. Restart shell to regenerate."
}

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT/bin" ]]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  _cached_eval "pyenv" "pyenv init - zsh"
fi

# fzf
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# fnm - just add to PATH (astra uses `fnm exec` directly, no shell hooks needed)
if [[ -d "/opt/homebrew/opt/fnm/bin" ]]; then
  export PATH="/opt/homebrew/opt/fnm/bin:$PATH"
fi

# mise - shims mode only needs PATH, no eval needed
# Note: run `mise settings set python.compile true` once manually if needed
if [[ -f "$HOME/.local/bin/mise" ]]; then
  export PATH="$HOME/.local/share/mise/shims:$PATH"
fi

# zoxide
if (( $+commands[zoxide] )); then
  _cached_eval "zoxide" "zoxide init zsh"
fi

if [[ "${DOTFILES_ENABLE_JS}" = "true" ]]; then
fi

if [[ "${DOTFILES_ENABLE_GO}" = "true" ]]; then
  export PATH="$HOME/go/bin:$PATH"
fi

# Terraform completions moved to 40_completions.sh (needs compinit first)
