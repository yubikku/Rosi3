# default apps
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# cleaning up home folder
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME/.config/zsh"
if [ -e /home/biku/.nix-profile/etc/profile.d/nix.sh ]; then . /home/biku/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
