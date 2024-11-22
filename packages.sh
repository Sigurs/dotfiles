#!/bin/bash

set -ex

source /etc/os-release
case $ID in
  debian|ubuntu)
    apt install htop nano neovim screen tmux solaar kitty
    ;;
  arch)
    pacman -S htop nano neovim screen tmux solaar kitty
    ;;
  *)
    echo -n "unsupported linux distro"
    ;;
esac
