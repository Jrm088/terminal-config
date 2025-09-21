#!/bin/bash
# Qtile essentials and UI utilities

# Update system
sudo pacman -Syu --noconfirm

# ------------------------
# Core Desktop / Window Manager
# ------------------------
sudo pacman -S --needed xorg-xinit xterm qtile python-pywal

# ------------------------
# Terminal / Shell
# ------------------------
sudo pacman -S --needed kitty starship

# ------------------------
# Fonts
# ------------------------
sudo pacman -S --needed ttf-jetbrains-mono-nerd ttf-dejavu ttf-font-awesome

# ------------------------
# Compositing / Visuals / Notifications
# ------------------------
sudo pacman -S --needed picom dunst rofi fastfetch

# ------------------------
# File Manager
# ------------------------
sudo pacman -S --needed nemo

echo "Qtile essentials installed!"

