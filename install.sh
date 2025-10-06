#!/bin/bash

set -ex

sudo ./packages.sh
stow -S fonts kitty ohmyzsh ohmyzsh-plugins ohmyzsh-themes p10k scripts tmux wireplumber zsh
./fonts-post.sh
