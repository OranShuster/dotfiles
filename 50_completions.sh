if command -v kubectl 1>/dev/null 2>&1; then
    source <(kubectl completion zsh)
fi