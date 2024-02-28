#!/bin/sh
#
# Bootstrap script for setting up a new OSX machine
#
# This should be idempotent so it can be run multiple times.
#

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

echo "Init submodules"
~/.local/bin/yadm submodule update --recursive --init


# homebrew
if ! command -v brew &> /dev/null
then
    echo 'brew must be installed! (/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")'
else
    echo "Homebrew already installed. Getting updates..."
    brew update
    brew doctor
fi


echo ">>> Installing brew packages.."
brew bundle install --file ~/Brewfile_test

# setup Mac default settings
cd ~/.configs/setup_mac/macos_settings/ && bash ~/.configs/setup_mac/macos_settings/main.bash

rm ~/.local/bin/yadm

# done
echo "Bootstrapping complete"
