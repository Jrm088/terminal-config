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
  libldacbt-enc2 \
  thunderbird \
  xbanish


# Add Signal signing key and repo only if not already added
if ! grep -q "signal-xenial.list" /etc/apt/sources.list.d/* 2>/dev/null; then
  curl -fsSL https://updates.signal.org/desktop/apt/keys.asc | sudo gpg --dearmor -o /usr/share/keyrings/signal-desktop-keyring.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main" | sudo tee /etc/apt/sources.list.d/signal-xenial.list
  sudo apt update
fi

sudo apt install -y signal-desktop

echo "Downloading and installing Discord..."

wget -O /tmp/discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb || sudo apt -f install -y

echo "Installation complete!"

