#!/usr/bin/env bash

#TODO: Install and build from source
sudo dnf install -y \
  golang

# TODO: 1 install dart sass first
# TODO 2 install this from brew instead since it needs addtional library bindings
go install github.com/gohugoio/hugo@latest
