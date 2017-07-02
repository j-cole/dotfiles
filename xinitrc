#!/bin/sh

# Load urxvt settings
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load custom keymap
#[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
setxkbmap -variant dvp -option caps:escape,compose:ralt

# Load xprofile (mouse settings)
[[ -f ~/.xprofile ]] && . ~/.xprofile

# set environment for fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Run systemd as user instance
/usr/lib/systemd/systemd --user &

# Start awesome
exec awesome
#exec dwm
#exec i3
# For awesome logging:
#exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
