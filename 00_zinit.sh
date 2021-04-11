### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

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
zinit snippet OMZP::asdf

zinit ice svn
zinit snippet OMZ::plugins/osx
zinit ice svn
zinit snippet OMZ::plugins/z
zinit ice svn