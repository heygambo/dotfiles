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

brew cleanup