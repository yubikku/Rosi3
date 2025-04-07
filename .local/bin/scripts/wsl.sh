#!/bin/sh

# For wsl (Ubuntu) POST-install script
# Check if Script is Run as Root


username=$(id -u -n 1000)
builddir=$(pwd)

# Update packages list and update system
apt update
apt upgrade -y

## Installs Nala Package Manager
apt install nala -y

# Make .config and Moving config files and background
cd $builddir 

# Installing nice-to-have Programs
nala install git curl stow  

# Install Nix Package Manager
sh <(curl -L https://nixos.org/nix/install) --daemon
