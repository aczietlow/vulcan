#!/usr/bin/env bash

#TODO: Install and build from source
sudo dnf install -y \
  golang

go install github.com/gohugoio/hugo@latest
