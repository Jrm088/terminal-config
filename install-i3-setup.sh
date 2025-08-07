#!/bin/bash
set -e

echo "Updating package lists..."
sudo apt update
sudo apt upgrade -y

echo "Installing essential packages for i3 + LXQt rice..."

sudo apt install -y \
  betterlockscreen \
  i3 \
  i3status \
  i3lock \
  i3blocks \
  imagemagick \
  x11-xserver-utils \
  dunst \
  libnotify-bin \
  lxappearance \
  qt5ct \
  gtk2-engines-murrine \
  gtk2-engines-pixbuf \
  kitty \
  neofetch \
  pfetch \
  picom \
  polybar \
  sddm \
  starship \
  lxqt \
  lxqt-config \
  lxqt-panel \
  nemo \
  rofi

echo "Installation complete!"

