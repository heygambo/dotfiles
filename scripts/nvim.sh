#!/bin/bash

# Creates nvim config folder
mkdir -p .config

# Symlinks config
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim

# Synlinks nvim to vim
ln -s $(which nvim) /opt/homebrew/bin/vim

# Installs vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
