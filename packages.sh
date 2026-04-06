#!/bin/bash

set -xe

source /etc/os-release
case $ID in
  debian|ubuntu)
    apt install -y stow htop nano screen tmux kitty direnv git \
      build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
      libsqlite3-dev libncursesw5-dev xz-utils tk-dev libxml2-dev \
      libxmlsec1-dev libffi-dev liblzma-dev curl wget

    # Rust
    if ! command -v rustup &>/dev/null; then
      curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    fi

    # Pyenv
    if [ ! -d "$HOME/.pyenv" ]; then
      git clone https://github.com/pyenv/pyenv.git "$HOME/.pyenv"
    fi

    # NVM
    if [ ! -d "$HOME/.nvm" ]; then
      NVM_VERSION=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep -o '"tag_name": *"[^"]*"' | grep -o 'v[0-9.]*')
      git clone https://github.com/nvm-sh/nvm.git "$HOME/.nvm"
      git -C "$HOME/.nvm" checkout "$NVM_VERSION"
    fi
    ;;

  arch)
    pacman -S --needed stow htop nano screen tmux kitty direnv git \
      alsa-utils pipewire pipewire-alsa pipewire-pulse wireplumber wget curl \
      rustup

    # Pyenv (not in official repos)
    if [ ! -d "$HOME/.pyenv" ]; then
      git clone https://github.com/pyenv/pyenv.git "$HOME/.pyenv"
    fi

    # NVM
    if [ ! -d "$HOME/.nvm" ]; then
      NVM_VERSION=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep -o '"tag_name": *"[^"]*"' | grep -o 'v[0-9.]*')
      git clone https://github.com/nvm-sh/nvm.git "$HOME/.nvm"
      git -C "$HOME/.nvm" checkout "$NVM_VERSION"
    fi
    ;;
    
  *)
    echo -n "unsupported linux distro"
    ;;
esac
