#!/bin/bash
# Install Papirus icons locally (no sudo required)

# 1. Create local icons folder if missing
mkdir -p ~/.icons

# 2. Download Papirus icon theme
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git ~/Downloads/papirus-icon-theme

# 3. Install into local icons folder
cd ~/Downloads/papirus-icon-theme
./install.sh -d ~/.icons

# 4. Clean up
cd ~
rm -rf ~/Downloads/papirus-icon-theme

echo "Papirus icons installed locally! Use LXAppearance to select them."

