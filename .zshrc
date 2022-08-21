# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Jovic's config for Zhy shell
# Loosely based from Luke Smith's config:
# https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[green]%}[%{$fg[blue]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[green]%}]%{$reset_color%}$%b "

# Aliasses
alias ls='ls --color=auto'
alias cmatrix='cmatrix -s -C blue'

# History in Cache Directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Custom Bindings
bindkey -e

# Basic auto/tab complete:
zstyle ':completion:*' menu select
autoload -Uz compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Load; Should be last
# Arch
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Debian
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
