# Dotfiles

## Currently underworking progress
>Restructuring for Prebuilts and Existing Systems


## Usage:
Clone this repo:
```
git clone <this repo> ~/.dotfiles
```

Install and use GNU `stow`
```
stow <folder>
```

> These are for old archive_scripts that I'm gonna use for bspwm and hyprland bootstraping environments (removing soon)
# Currently Working on an installer for 3 Bases:
- [ ] Debian/Ubuntu
- [ ] Fedora
- [ ] Arch
- [ ] Minimal (Terminal Utils Only)

# My personal dotfiles with:
- [ ] i3 + i3blocks
- [ ] Sway
- [ ] Terminator
- [ ] Zsh
- [ ] X
- [ ] 

Installation method uses `stow`

# Ubuntu
My University Widely Accepts and supports the use of Ubuntu LTS, Hence I'll be mainly developing under the Distribution's Package Handling, with a bit of personal modifications.

- Removing and disabling Snap
- Adding Flatpak
- Adding Basic Functionality

*personally, I'm avoiding PPAs since they might conflict with system dependencies. One could add Nix OS env.*

`curl -L https://nixos.org/nix/install | sh`

# Philosophy
Stability is Numero Uno, that is why I tend to find and install packages in this order:

`Distro's Repository` -> `Community Repo` -> `Flatpak` -> `Appimages/Nix` -> `Source`

*I tend to avoid PPAs for stability and dependecy iissues*


