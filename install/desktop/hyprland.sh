#!/usr/bin/env bash

# TODO: solopasha hasnt updated since fedora 43
# sudo dnf copr enable solopasha/hyprland -y
sudo dnf copr enable lionheartp/Hyprland -y

sudo dnf install -y \
  hyprland \
  hyprpicker \
  hyprlock \
  hypridle \
  hyprsunset \
  hyprpolkitagent \
  waybar \
  mako \
  hyprpaper \
  pavucontrol \
  xdg-desktop-portal-hyprland \
  xdg-desktop-portal-gtk \
  kvantum-qt6 \
  hyprshot \
  hyprland-guiutils

# SwayOSD (volume/brightness OSD)
sudo dnf copr enable -y markupstart/SwayOSD
sudo dnf install -y swayosd

# Incase working with older x11 file
# sudo sed -i -E 's/^\s*#?\s*WaylandEnable\s*=\s*false/#WaylandEnable=false/' /etc/gdm/custom.conf

