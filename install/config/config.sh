#!/usr/bin/env bash

for d in $vulcan_dir/config/*; do
  # Overwrite if exists, don't derefernece dest, treat as plain text path (replace it, don't create inside it)
  ln -sfnT "$d" "$HOME/.config/$(basename "$d")"
done
