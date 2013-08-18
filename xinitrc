#!/bin/sh

# Load urxvt settings
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load custom keymap
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Load xprofile (mouse settings)
[[ -f ~/.xprofile ]] && . ~/.xprofile

# Run systemd as user instance
/usr/lib/systemd/systemd --user &

# Start awesome
exec awesome
