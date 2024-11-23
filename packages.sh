#!/bin/bash

set -ex

source /etc/os-release
case $ID in
  debian|ubuntu)
    apt install stow install htop nano neovim screen tmux solaar kitty
    ;;
  arch)
    pacman -S stow htop nano neovim screen tmux solaar kitty
    ;;
  *)
    echo -n "unsupported linux distro"
    ;;
esac
