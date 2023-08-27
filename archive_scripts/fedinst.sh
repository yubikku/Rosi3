#!/bin/sh
# Fedora install

# dnf fastest mirrors and parallel dl
echo "max_parallel_downloads=10
fastestmirror=true
deltarpm=true" >> /etc/dnf/dnf.conf

# i3-gaps and xorg stuffs
sudo dnf install i3-gaps polybar rofi pip zsh zsh-syntax-highlighting zsh-autosuggestions arandr 

# minimal media utils
sudo dnf install zathura zathura-djvu zathura-cb zathura-pdf-mupdf zathura-ps zathura-zsh-completion feh flameshot

# System Utilities
sudo dnf install bleachbit 

# add rpmfusion free & non-free
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Pip installation
sudo pip install pywal i3-swallow

# flatpak FlatHub Repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

