#!/bin/bash

# Creates Alacritty config folder
mkdir -p .config

# Symlinks config
ln -s $HOME/.dotfiles/alacritty $HOME/.config/alacritty
