#!/usr/bin/env bash

sudo dnf install jetbrains-mono-fonts -y


mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts

# prepared to get throttled by github
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

unzip JetBrainsMono.zip -d JetBrainsMono-NF


# Reload cache to make sure that our font(s) are available
fc-cache -fv
