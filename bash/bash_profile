#!/bin/sh
# ~/.bash_profile

# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start xorg without display manager
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
