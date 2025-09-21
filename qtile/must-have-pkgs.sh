#!/bin/bash
# Minimal must-have Arch packages

# Update system
sudo pacman -Syu --noconfirm

# ------------------------
# Core Utilities
# ------------------------
sudo pacman -S --needed git vim neovim curl wget xbanish timeshift

# ------------------------
# Virtualization
# ------------------------
sudo pacman -S --needed virtualbox virtualbox-host-modules-arch virtualbox-ext-oracle

# ------------------------
# Audio / Bluetooth
# ------------------------
sudo pacman -S --needed pulseaudio pulseaudio-bluetooth pavucontrol bluez bluez-utils blueman celluloid libldacbt

# ------------------------
# Optional extras
# ------------------------
# Add any other utilities you discover you need here

echo "All must-have packages installed!"

