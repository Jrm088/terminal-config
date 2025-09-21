#!/bin/bash

# Ensure config directories exist
mkdir -p ~/.config/qtile
mkdir -p ~/.config/kitty
mkdir -p ~/.config/neofetch

# Symlink Qtile config
ln -sf ~/dotfiles/qtile/config.py ~/.config/qtile/config.py

# Symlink Kitty config
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# Symlink Neofetch config
ln -sf ~/dotfiles/neofetch/config.conf ~/.config/neofetch/config.conf

# Symlink home-level files
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile

echo "All symlinks created!"

