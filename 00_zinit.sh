### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

autoload -U +X compinit && compinit

zinit light "romkatv/powerlevel10k"
zinit light "zsh-users/zsh-autosuggestions"
zinit light "MichaelAquilina/zsh-you-should-use"

zinit snippet OMZP::brew
zinit snippet OMZP::colorize
zinit snippet OMZP::command-not-found
zinit snippet OMZP::git
zinit snippet OMZP::github
zinit snippet OMZP::kubectl
zinit snippet OMZP::python
#Temp fix till asdf plugin fixes its env
#zinit snippet OMZP::asdf

zinit ice svn
zinit snippet OMZ::plugins/macos
zinit ice svn
zinit snippet OMZ::plugins/z
zinit ice svn