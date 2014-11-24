#!/bin/sh

# Load urxvt settings
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load custom keymap
#[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
setxkbmap -option caps:escape

# Load xprofile (mouse settings)
[[ -f ~/.xprofile ]] && . ~/.xprofile

# Run systemd as user instance
/usr/lib/systemd/systemd --user &

# Start awesome
exec cinnamon-session
#exec awesome
# For awesome logging:
#exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
