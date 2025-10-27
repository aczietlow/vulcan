#!/usr/bin/env bash

if ! fc-list | grep -qi "JetBrains Mono"; then
  sudo dnf install jetbrains-mono-fonts -y
  mkdir -p ~/.local/share/fonts

  pushd ~/.local/share/fonts > /dev/null

  # prepared to get throttled by github
  curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
  unzip JetBrainsMono.zip -d JetBrainsMono-NF

  popd > /dev/null
   
  # Reload cache to make sure that our font(s) are available
  fc-cache -fv
else
  echo "Fonts are already installed"
fi
