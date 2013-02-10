#!/bin/sh

# Load urxvt settings
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load custom keymap
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Start awesome
exec awesome
