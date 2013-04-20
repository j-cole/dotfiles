#!/bin/sh
# ~/.bash_profile

# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Start xorg without display manager
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
