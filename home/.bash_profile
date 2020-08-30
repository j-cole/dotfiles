#!/bin/sh
# ~/.bash_profile

# XDG clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start xorg without display manager
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
