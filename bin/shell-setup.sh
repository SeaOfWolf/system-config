#!/usr/bin/sh

# Setup ~/.zshrc
cp ~/.system-config/config/dotfiles/zshrc ~/.zshrc

# Run ZSH so that everything intializes
zsh

# Change user shell to zsh
chsh -s $(which zsh)

# Confirm it worked
echo $SHELL
