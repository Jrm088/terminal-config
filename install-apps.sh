#!/bin/bash
set -e

echo "Updating package lists..."
sudo apt update
sudo apt upgrade -y

echo "Installing essential packages..."

sudo apt install -y \
  timeshift \
  code \
  joplin \
  vim \
  git \
  curl \
  wget \
  virtualbox \
  virtualbox-ext-pack \
  pulseaudio \
  pavucontrol \
  celluloid \
  blueman \
  bluetooth \
  bluez \
  libbluetooth3 \
  pulseaudio-module-bluetooth \
  libldacbt-enc2


echo "Installation complete!"

