# Remove any existing config folders that can have a conflict
cd ~/.config/
rm awesome fish kitty helix picom starship.toml lf btop zathura MangoHud cava\
	mpv rofi yazi -rf
rm ~/media

# Symlink everything
ln -s ~/.dotfiles/awesome/ ~/.config/
ln -s ~/.dotfiles/fish/ ~/.config/
ln -s ~/.dotfiles/kitty/ ~/.config/
ln -s ~/.dotfiles/helix/ ~/.config/
ln -s ~/.dotfiles/picom/ ~/.config/
ln -s ~/.dotfiles/lf/ ~/.config/
ln -s ~/.dotfiles/mpv/ ~/.config/
ln -s ~/.dotfiles/btop/ ~/.config/
ln -s ~/.dotfiles/starship/starship.toml ~/.config/
ln -s ~/.dotfiles/zathura/ ~/.config/
ln -s ~/.dotfiles/MangoHud/ ~/.config/
ln -s ~/.dotfiles/cava/ ~/.config/
ln -s ~/.dotfiles/rofi/ ~/.config/
ln -s ~/.dotfiles/yazi/ ~/.config/
ln -s /run/media/$USER/ ~/media
