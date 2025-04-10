# Biku's i3/Sway Setup


>Currently under working progress, Restructuring for Prebuilts/Existing Systems and Building from the ground up.

## Requirements:
Install the needed dependencies (usually these are installed by default):
```
curl wget git stow
```

## Core System Software:
- `dunst` - notification daemon
- `pipewire`/`wireplumber` - multimedia (audio and video) handler
- `xdg-desktop-portal` - for flatpak/snap integration
- `xdg-desktop-portal-gtk`- generic portal backend for xdg-desktop-portal
- `polkit`,`lxqt-policykit` - Polkit and Authentication agent (otherwise, use the default installed DE's polkit)
- `xwayland` - X11 backup compatibility
- `qt6-wayland` - Qt Wayland Support (install or/with `qt5-wayland`)
- `fuzzel` - application launcher
- `swaybg` - static wallpaper utility
- `thunar` - Graphical File Manager
- `wl-clipboard` - clipboard

### Sway Specific
> I primarily use sway for a much lighter and stable experience, otherwise I use hyprland for systems that doesn't need resource milking.
- `xdg-desktop-portal-wlr` -  wlroots portal implementation
- `yambar` - lightweight status bar, ***currently has no system tray***


## Tools Used
### CLI Utilities:
- `nvim` - text editor
- `lf` - file manager
- `tmux` - terminal multiplexer
- `zsh` - shell of choice
- `mpd`, `ncmpcpp`, `mpc` - music
- `ffmpeg` - media converter
- `tldr` - man for gen-z
- `yt-dlp` - uhmm, yeah
- `syncthing` - sync files P2P
- `vd` - VisiData terminal spreadsheet tool
- `slurp` - 
- `grim` - 

### Misc Means Aesthetics:
- `neofetch`

## Usage:
Clone this repo:
```
git clone <this repo> ~/.dotfiles
```
Install:
```
sudo ~/.dotfiles/install.sh
```

`cd` then use `stow` for the folder in need:
```
stow <folder>
```
### Roadmap:
- Currently Working on an installer for 2 Bases:
    - [ ] Debian/Ubuntu
    - [ ] Arch
- [ ] Replace i3status with i3blocks

> Notes:
> - Change the Battery according to `acpi -b` 
> - I'll try to make the system not be dependent on `stow` in the future. 