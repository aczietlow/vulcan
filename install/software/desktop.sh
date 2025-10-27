#!/usr/bin/env bash

## Brave Browser
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo --overwrite

## Zen Browser
sudo dnf copr enable -y sneexy/zen-browser

sudo dnf check-update -y

sudo dnf install -y \
  brave-browser zen-browser 


