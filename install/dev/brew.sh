#/usr/bin/env bash

#TODO: capture the exit code so the install script can continue to run
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo dnf group install development-tools

brew install sass/sass/sass
brew install hugo
