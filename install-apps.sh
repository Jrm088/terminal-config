#!/bin/bash
set -euo pipefail

echo "Updating package lists..."
sudo apt update && sudo apt upgrade -y

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
  libldacbt-enc2 \
  thunderbird \
  xbanish

# Add Signal repo if not present
if ! grep -q "signal-xenial.list" /etc/apt/sources.list.d/* 2>/dev/null; then
  echo "Adding Signal repository..."
  curl -fsSL https://updates.signal.org/desktop/apt/keys.asc | \
    sudo gpg --dearmor -o /usr/share/keyrings/signal-desktop-keyring.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main" | \
    sudo tee /etc/apt/sources.list.d/signal-xenial.list
  sudo apt update
fi

echo "Installing Signal..."
sudo apt install -y signal-desktop

echo "Downloading and installing Discord..."
DISCORD_DEB="/tmp/discord.deb"
wget -O "$DISCORD_DEB" "https://discord.com/api/download?platform=linux&format=deb"
sudo dpkg -i "$DISCORD_DEB" || sudo apt -f install -y
rm -f "$DISCORD_DEB"

echo "Installation complete!"

