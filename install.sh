#!/bin/bash

# Create symlink in user's bin directory
mkdir -p ~/.local/bin
ln -sf "$(pwd)/bin/git-helper" ~/.local/bin/git-helper

# Add to .bashrc if not already present
if ! grep -q "git-helper" ~/.bashrc; then
  echo "source $(pwd)/.bashrc-hook" >> ~/.bashrc
fi

echo "Installation complete. Restart your shell."
