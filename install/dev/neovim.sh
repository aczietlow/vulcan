#!/usr/bin/env bash

# Neovim
sudo dnf install -y \
  gcc make \
  ripgrep fd-find unzip \
  neovim

## Neovim Dependencies
sudo dnf install -y nodejs
sudo npm install -g prettier 

## Pullin in my nvim config
rm -rf "$neovim_config_dir"
git clone "$neovim_config_repo" "$neovim_config_dir"
