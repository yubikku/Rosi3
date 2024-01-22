#!/bin/sh
# Arch with Hyperland with other Stuffs

yay -S hyprland xdg-desktop-portal-hyprland 

# System
yay -S pipewire wireplumber grim slurp polkit-kde-agent nwg-look

# Games and optimizations
yay -S gamemode lib32-gamemode gamescope

# Useful Media and utils
yay -S mpv imv firefox brave-bin syncthing thunar 

# Install font (WIP)
# wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip

## Virtual Machines
# KVM/QEMU machine
sudo pacman -S qemu-full virt-manager virt-viewer dnsmasq bridge-utils libguestfs ebtables vde2 openbsd-netcat

sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
sudo usermod -aG libvirt $USER