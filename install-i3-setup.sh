#!/bin/bash
echo "Installing essential packages for i3 + LXQt rice with SDDM..."

sudo apt update && sudo apt upgrade -y

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
  qml-module-qtquick-controls \
  qml-module-qtquick-controls2 \
  qml-module-qtquick-layouts \
  qml-module-qtgraphicaleffects \
  qml-module-qtquick-window2 \
  qml-module-qtquick2 \
  libqt5svg5 \
  starship \
  lxqt \
  lxqt-config \
  lxqt-panel \
  nemo \
  rofi \
  network-manager \
  network-manager-gnome

echo "Setting SDDM as default display manager..."
sudo systemctl enable sddm

echo "Installation complete! You can reboot now to use SDDM with your theme."

