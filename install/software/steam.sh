#!/usr/bin/env bash

sudo dnf install -y \
  steam protontricks


# do proton via the cli
pip3 install --user protonup
mkdir -p ~/.steam/root/compatibilitytools.d
protonup -y -d ~/.steam/root/compatibilitytools.d/

protonup 

# sudo dnf copr enable apicalshark/ProtonUp-Qt -y
# sudo dnf install protonup-qt -y

