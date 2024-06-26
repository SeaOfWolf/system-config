#!/usr/bin/sh

## macOS Preferences

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Store screenshots in subfolder on desktop
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots


## Github
## ssh-keygen -t rsa -C "amorgan@`hostname -s`"

# Copy public key to Github.com
# cat ~/.ssh/id_rsa.pub

# Test connection
# ssh -T git@github.com

# Configure SSH for 1Password Agent
# mkdir ~/.ssh/
# touch ~/.ssh/config
# echo -e "Host * \n\tIdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock\n" >> ~/.ssh/config

# Git global config
git config --global user.name "Alex Morgan"
git config --global user.email "replace@email.com"

git config --global github.user seaofwolf
# git config --global github.token your_token_here

git config --global core.editor "code -w"
# git config --global core.excludesfile ~/.gitignore_global
git config --global color.ui true
git config --global init.defaultBranch main

# Configure Git commit signing with SSH and 1Password
# See https://developer.1password.com/docs/ssh/git-commit-signing/
# git config --global user.signingkey your_key_here
# git config --global gpg.format ssh
# git config --global gpg.ssh.program your_signer_binary_here
# git config --global commit.gpgsign true