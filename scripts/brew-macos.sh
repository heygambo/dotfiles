#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install git
brew install terminal-notifier
# brew install android-platform-tools
brew install itermocil
brew install mosh
brew install tmux
brew install m-cli

brew tap jason0x43/homebrew-neovim-nightly
brew install --cask neovim-nightly

# ThinkVim dependencies
# brew install --HEAD universal-ctags/universal-ctags/universal-ctags

brew cleanup
