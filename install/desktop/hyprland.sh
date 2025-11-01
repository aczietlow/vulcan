#!/usr/bin/env bash

sudo dnf copr enable solopasha/hyprland -y

sudo dnf install -y \
  hyprland \
  hyprpicker \
  hyprlock \
  hypridle \
  hyprsunset \
  hyprland-qtutils \
  hyprpolkitagent \
  waybar \
  mako \
  hyprpaper \
  pavucontrol \
  xdg-desktop-portal-hyprland \
  xdg-desktop-portal-gtk


sudo dnf copr enable -y livegrenier/hyprland
sudo dnf install -y hyprshot

# SwayOSD (volume/brightness OSD)
sudo dnf copr enable -y markupstart/SwayOSD
sudo dnf install -y swayosd

# Incase working with older x11 file
# sudo sed -i -E 's/^\s*#?\s*WaylandEnable\s*=\s*false/#WaylandEnable=false/' /etc/gdm/custom.conf

