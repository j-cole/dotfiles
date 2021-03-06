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
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# env variables
export PATH="$HOME/.local/bin:$PATH"
# set pulseaudio value for steam game
export PULSE_RUNTIME_PATH="$XDG_RUNTIME_DIR/pulse"

# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start xorg without display manager
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
