#!/bin/bash

set -ex

source /etc/os-release
case $ID in
  debian|ubuntu)
    apt install stow install htop nano neovim screen tmux solaar kitty direnv git
    ;;
  arch)
    pacman -S stow htop nano neovim screen tmux solaar kitty direnv git
    ;;
  *)
    echo -n "unsupported linux distro"
    ;;
esac
