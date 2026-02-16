# if command -v kubectl 1>/dev/null 2>&1; then
#     source <(kubectl completion zsh)
# fi

autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

# Terraform bash-style completions (must come after compinit)
if [[ "${DOTFILES_ENABLE_TF}" = "true" ]]; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C /usr/local/bin/terraform terraform
fi

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1
