#!/bin/bash

set -xe

# Install packages
sudo ./packages.sh

mkdir -p ~/.config/{deckky}

# Stow
stow --no-folding --dotfiles -S fonts kitty ohmyzsh ohmyzsh-plugins ohmyzsh-themes p10k scripts tmux wireplumber zsh git deckky

# Set global gitignore
git config --global core.excludesfile ~/.gitignore_global

# Refresh fonts
./fonts-post.sh
