#!/bin/bash

set -xe

source /etc/os-release
case $ID in
  debian|ubuntu)
    apt install stow install htop nano screen tmux kitty direnv git
    ;;
  arch)
    pacman -S stow htop nano screen tmux kitty direnv git alsa-utils pipewire pipewire-alsa pipewire-pulse wget curl
    ;;
  *)
    echo -n "unsupported linux distro"
    ;;
esac
