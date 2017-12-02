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

# show intellij correctly in dwm
export _JAVA_AWT_WM_NONREPARENTING=1

# Run systemd as user instance
/usr/lib/systemd/systemd --user &

systemctl --user import-environment DISPLAY

#~/bin/dwm_status &
slstatus &
exec dwm 2> /tmp/dwm.log
