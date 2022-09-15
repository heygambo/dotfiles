#/bin/bash
# chsh -s /bin/zsh

# Change directory to the directory of the script
cd "$(dirname "$0")"

# Abort on error
set -e

# Display LICENSE
echo "Copyright (C) 2019 Christian Gambardella"
echo "This program comes with ABSOLUTELY NO WARRANTY; for details see LICENSE."
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions; see LICENSE for details."; echo;

# Ensure user has read the LICENSE
read -p "By continuing, you agree to the terms above. Press [enter] to continue..."; echo;

# Show what must be installed to run the program
echo "The script will now install three necessary prerequisites -- Xcode Command Line Tools and Homebrew..."; echo;

# Ensure the user understands what must be installed.
read -p "Press [enter] to continue..."; echo;

# Install Xcode Command Line Tools
echo "Ensuring Xcode Command Line Tools are installed..."; echo;
./scripts/xcode-clt.sh

# Install Homebrew
./scripts/homebrew.sh

# Symlink prezto to ~/.zprezto
if test -d "$HOME/.zprezto"
then
    echo "Prezto is symlinked already... skipping."
else
    echo "Symlinking prezto..."
    ln -s $HOME/.dotfiles/submodules/prezto $HOME/.zprezto
fi

# Symlinks zsh rc files to home directory
ln -s -f $HOME/.dotfiles/zsh/zlogin $HOME/.zlogin
ln -s -f $HOME/.dotfiles/zsh/zlogout $HOME/.zlogout
ln -s -f $HOME/.dotfiles/zsh/zpreztorc $HOME/.zpreztorc
ln -s -f $HOME/.dotfiles/zsh/zprofile $HOME/.zprofile
ln -s -f $HOME/.dotfiles/zsh/zshenv $HOME/.zshenv
ln -s -f $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

# symlink tmux
ln -s -f $HOME/.dotfiles/submodules/tmux/.tmux.conf $HOME/.tmux.conf
cp $HOME/.dotfiles/submodules/tmux/.tmux.conf.local $HOME/.tmux.conf.local

# Installs rust through rustup
./scripts/rustup.sh

# Installs node through nvm
./scripts/node.sh

# Installs yarn and a bunch of global packages
./scripts/yarn.sh

# Symlinks alacritty config
./scripts/alacritty.sh
