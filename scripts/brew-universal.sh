#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils

# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed

# Install wget with IRI support
brew install wget --with-iri

# ThinkVim dependency
brew install ripgrep

# neovim
brew install neovim

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
brew install hub

# mtr - ping & traceroute. best.
brew install mtr

brew install fd
brew install htop
brew install watch
brew install youtube-dl

# langauges
brew install rbenv
brew install ruby-build
brew install yarn --ignore-dependencies

# allow mtr to run without sudo
mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
sudo chmod 4755 $mtrlocation/sbin/mtr
sudo chown root $mtrlocation/sbin/mtr

# Install other useful binaries
brew install the_silver_searcher
brew install fzf
brew install fasd
brew install cask ngrok

brew install imagemagick
brew install rename
brew install tree
brew install ffmpeg --with-libvpx

brew install ncdu # find where your diskspace went

# cloud tools
brew cask install google-cloud-sdk
brew install awscli
brew install terraform
brew install kubernetes-helm

brew cask install themekit

# Remove outdated versions from the cellar
brew cleanup
