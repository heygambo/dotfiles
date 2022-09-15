#!/bin/bash

# Creates kitty config folder
mkdir -p ~/.config

# Symlinks config
ln -s $HOME/.dotfiles/kitty $HOME/.config/kitty
