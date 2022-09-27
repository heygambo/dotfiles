#!/usr/bin/env bash

# Abort on error
set -e

echo "Clone nnn";
cd /tmp
git clone https://github.com/jarun/nnn.git
cd nnn

echo "Build nnn";
make O_ICONS=1

echo "Install nnn";
mkdir -p ~/.local/bin
cp ./nnn $HOME/.local/bin

echo "Cleanup";
rm -rf /tmp/nnn

echo "Synlink config folder";
ln -s $HOME/.dotfiles/nnn $HOME/.config/nnn
