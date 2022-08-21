#!/bin/sh

# ArchLinux Installation script for a Minimal i3 Setup
# Installs a Minimal base for a Desktop/Window Manager Environement
# Based on Ermanno Ferrari's Base Script
ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime
hwclock --systohc
sudo sed -i '172s/^#//' /etc/locale.gen #PH UTF-8
sudo sed -i '177s/^#//' /etc/locale.gen #US UTF-8
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=us" >> /etc/vconsole.conf
echo "Arch" >> /etc/hostname

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm
sudo pacman -S --noconfirm base-devel alsa-utils zsh zsh-autosuggestions zsh-syntax-highlighting terminator xdg-user-dirs

grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pulseaudio bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font

# Uncomment (1) for MBR; (2) for UEFI
#grub-install --target=i386-pc /dev/sdX # replace sdx with your disk name, not the partition
#grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi is you mounted the EFI partition at /boot/efi
grub-mkconfig -o /boot/grub/grub.cfg

# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings


# create user
useradd -m -g wheel biku
echo biku:password | chpasswd # change 'password'
sudo sed '88s/^#//' /etc/sudoers # Sudoer in general
usermod -aG libvirt biku
echo "biku ALL=(ALL) ALL" >> /etc/sudoers.d/biku # Sudoer in Person

# install zsh
chsh -s /bin/zsh
homectl update --shell=/bin/zsh biku

# install pipewire

