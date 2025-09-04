#!/bin/zsh
# Xcode Setup Installer Script
# Copies One Dark color theme and VSCode keybindings to Xcode user folders

set -e

echo "Xcode Setup Installer"
echo "----------------------"

# Color theme destination
theme_dest="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"
# Keybindings destination
keybindings_dest="$HOME/Library/Developer/Xcode/UserData/KeyBindings"

# Create directories if they don't exist
mkdir -p "$theme_dest"
mkdir -p "$keybindings_dest"

# Copy color theme
if [[ -f "One Dark.xccolortheme" ]]; then
    cp "One Dark.xccolortheme" "$theme_dest/"
    echo "✓ One Dark.xccolortheme installed to $theme_dest"
else
    echo "✗ One Dark.xccolortheme not found. Skipping."
fi

# Copy keybindings
if [[ -f "VSCode.idekeybindings" ]]; then
    cp "VSCode.idekeybindings" "$keybindings_dest/"
    echo "✓ VSCode.idekeybindings installed to $keybindings_dest"
else
    echo "✗ VSCode.idekeybindings not found. Skipping."
fi

echo "\nDone! Restart Xcode to see changes."
