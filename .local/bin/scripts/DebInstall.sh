#!/bin/sh

# For Debian/Ubuntu based, POST-install script

if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo ./DebInstall.sh" 2>&1
  exit 1
fi

username=$(id -u -n 1000)
builddir=$(pwd)

# Update packages list and update system
apt update
apt upgrade -y

## Installs Nala Package Manager
apt install nala -y

# Make .config and Moving config files and background
cd $builddir
mkdir -p /home/$username/.config
mkdir -p /home/$username/.fonts
mkdir -p /home/$username/Pictures
mkdir -p /home/$username/Documents

# Installing nice-to-have Programs
nala install git ffmpeg vim curl openssh flameshot neofetch -y

# Install and setup Flatpak
nala install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#nala install gnome-software-plugin-flatpak # uncomment when using gnome-software

# Install Nix Package Manager
sh <(curl -L https://nixos.org/nix/install) --daemon
