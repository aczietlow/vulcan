#!/usr/bin/env bash

sudo dnf install -y \
  alacritty jq zsh \
  btop

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s $(which zsh) "$USER"
