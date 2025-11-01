#!/usr/bin/env bash

# Folder with wallpapers
WP_DIR="$HOME/.local/share/vulcan/wallpaper"

# wait time
INTERVAL=$((30 * 60))

# Get list of wallpapers
mapfile -t WALLS < <(find "$WP_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | sort)

while true; do
  for WALL in "${WALLS[@]}"; do
    echo "Setting wallpaper: $WALL"
    hyprctl hyprpaper wallpaper ",$WALL"
    sleep "$INTERVAL"
  done
done
