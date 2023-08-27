#!/bin/sh

# Debian/Ubuntu/WSL Installer
# by: Jovic Gutierrez

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo ./install.sh" 2>&1
  exit 1
fi

username=$(id -un 1000)

# Update packages list and update system
apt update
apt upgrade -y

# 

# Making .config and Moving config files and background to Pictures
mkdir -p "/home/$username/.config"
mkdir -p "/home/$username/.fonts"
mkdir -p "/home/$username/Pictures"



