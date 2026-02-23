#!/usr/bin/env bash
set -e

echo "Installing Neovim nightly..."

NVIM_URL="https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz"

mkdir -p ~/.local
cd ~/.local

curl -LO "$NVIM_URL"
tar -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Symlink para bin
mkdir -p ~/.local/bin
ln -sf ~/.local/nvim-linux-x86_64/bin/nvim ~/.local/bin/nvim

echo "Neovim nightly installed:"
~/.local/bin/nvim --version

