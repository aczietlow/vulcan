#!/usr/bin/env bash

echo -e "Cloning repo"
rm -rf ~/.local/share/vulcan/
git clone "https://github.com/aczietlow/vulcan.git" ~/.local/share/vulcan

echo -e "Starting installation"
source ~/.local/share/vulcan/install.sh
