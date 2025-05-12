#!/bin/bash

# Remove symlink
rm -f ~/.local/bin/git-helper

# Remove from .bashrc
sed -i '/git-helper/d' ~/.bashrc

echo "Uninstallation complete."
