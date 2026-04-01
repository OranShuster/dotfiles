# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Load zinit plugin manager (fast replacement for zplug)
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [[ ! -d "$ZINIT_HOME" ]]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Theme - load synchronously (required for instant prompt)
zinit ice depth=1
eval "$(starship init zsh)"
# zinit light romkatv/powerlevel10k

# Oh-My-Zsh plugins - load async via turbo mode (after prompt appears)
# Removed: brew (already setup in 01_env.sh, plugin triggers slow brew commands)
# Removed: colorize (redundant with bat), command-not-found, github
# zinit wait lucid for \
#   OMZL::git.zsh \
#   OMZP::git \
#   OMZP::python \
#   OMZP::terraform

# External plugins - load async
zinit wait lucid for \
  MichaelAquilina/zsh-you-should-use \
  zsh-users/zsh-autosuggestions
