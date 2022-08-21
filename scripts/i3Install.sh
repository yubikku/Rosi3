#!/bin/sh
# i3 Install and configuration 

# Variables


# Options
aur_helper=true

sudo pacman -S i3-gaps i3-blocks dunst feh picom arandr pcmanfm xfce4-terminal

if [[ $aur_helper = true ]]; then
    cd /tmp
    git clone https://aur.archlinux.org/paru.git
    cd paru/;makepkg -si --noconfirm;cd
fi
