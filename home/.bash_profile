#!/bin/sh
# ~/.bash_profile

# XDG clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start xorg without display manager
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
