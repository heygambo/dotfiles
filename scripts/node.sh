#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if nvm is already installed...";

# installs nvm
if test -d "$HOME/.nvm"
then
    echo "nvm is already installed... skipping."
else
    echo "Installing nvm"
    yes | curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
fi

echo "Installing node.js 10..."; echo;
yes | source $HOME/.zprofile
yes | nvm install 16
