rm -f $HOME/.zshrc                           && ln -shf $HOME/dotfiles/zshrc $HOME/.zshrc
rm -f $HOME/.config/starship.toml            && ln -shf $HOME/dotfiles/starship.toml $HOME/.config/starship.toml
rm -f $HOME/.config/kitty/kitty.conf         && ln -shf $HOME/dotfiles/kitty.conf $HOME/.config/kitty/kitty.conf
rm -f $HOME/.config/kitty/current-theme.conf && ln -shf $HOME/dotfiles/current-theme.conf $HOME/.config/kitty/current-theme.conf
rm -f $HOME/.config/kitty/tab_bar.py         && ln -shf $HOME/dotfiles/tab_bar.py $HOME/.config/kitty/tab_bar.py