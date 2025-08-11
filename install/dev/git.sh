#!/usr/bin/env bash

git config --global pull.rebase true
git config --global init.defaultBranch main

git config --global user.name "$user_name"
git config --global user.email "$user_email"
