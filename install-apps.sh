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
  wget
echo "Installation complete!"
