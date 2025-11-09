#!/usr/bin/env bash

# Create sym links for all config files
for d in $vulcan_dir/config/*; do
  # Overwrite if exists, don't derefernece dest, treat as plain text path (replace it, don't create inside it)
  ln -sfnT "$d" "$HOME/.config/$(basename "$d")"
done

# Ensure ~/.zshrc exists
[[ -f ~/.zshrc ]] || touch ~/.zshrc

# Only append if the line isn't already there
grep -qxF 'source ~/.config/zsh/zshrc' ~/.zshrc || \
  echo 'source ~/.config/zsh/zshrc' >> ~/.zshrc

# Ensure ~/.zshrc exists
[[ -f ~/.zshprofile ]] || touch ~/.zshprofile

# Only append if the line isn't already there
grep -qxF 'source ~/.config/zsh/zshprofile' ~/.zshprofile || \
  echo 'source ~/.config/zsh/zshprofile' >> ~/.zshprofile

echo "installed config"
