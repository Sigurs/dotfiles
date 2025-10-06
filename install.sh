#!/bin/bash

set -xe

# Install packages
sudo ./packages.sh

# Stow
stow -S fonts kitty ohmyzsh ohmyzsh-plugins ohmyzsh-themes p10k scripts tmux wireplumber zsh git

# Set global gitignore
git config --global core.excludesfile ~/.gitignore_global

# Refresh fonts
./fonts-post.sh
