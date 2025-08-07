#!/bin/bash
set -e

FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

echo "Installing Meslo Nerd Fonts..."
# Download Meslo patched Nerd Fonts (Mono, Regular, Bold, Italic)
MESLO_BASE_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3"
MESLO_FILES=(
  "Meslo%20LG%20M%20Regular%20Nerd%20Font%20Complete.ttf"
  "Meslo%20LG%20M%20Bold%20Nerd%20Font%20Complete.ttf"
  "Meslo%20LG%20M%20Italic%20Nerd%20Font%20Complete.ttf"
  "Meslo%20LG%20M%20Bold%20Italic%20Nerd%20Font%20Complete.ttf"
)

for file in "${MESLO_FILES[@]}"; do
  wget -qO "$FONT_DIR/${file//%20/ }" "$MESLO_BASE_URL/$file"
done

echo "Installing JetBrains Mono..."
# Download JetBrains Mono ttf from official repo
JETBRAINS_URL="https://github.com/JetBrains/JetBrainsMono/releases/latest/download"
JETBRAINS_TTF="JetBrainsMono-2.242.zip"

wget -qO /tmp/$JETBRAINS_TTF "$JETBRAINS_URL/$JETBRAINS_TTF"
unzip -q /tmp/$JETBRAINS_TTF -d /tmp/jetbrains-mono
cp /tmp/jetbrains-mono/ttf/*.ttf "$FONT_DIR"
rm -rf /tmp/jetbrains-mono /tmp/$JETBRAINS_TTF

echo "Updating font cache..."
fc-cache -f

echo "Fonts installed successfully."

