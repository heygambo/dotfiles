#!/bin/bash

# Creates Alacritty config folder
mkdir -p .config

# Symlinks config
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

