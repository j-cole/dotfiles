#!/bin/sh

# Load urxvt settings
#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load custom keymap
#[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
#setxkbmap -variant dvp -option caps:escape,compose:ralt
setxkbmap -option caps:escape,compose:ralt

# Load xprofile (mouse settings)
#[[ -f ~/.xprofile ]] && . ~/.xprofile

# set environment for fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# show intellij correctly in dwm
export _JAVA_AWT_WM_NONREPARENTING=1

# Run systemd as user instance
/usr/lib/systemd/systemd --user &

systemctl --user import-environment DISPLAY
# Not sure if XAUTHORITY is required here
#systemctl --user import-environment DISPLAY XAUTHORITY

# copied from /etc/X11/xinit/xinitrd (fixes slow opening of GUI apps)
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#~/bin/dwm_status &
slstatus &
exec dwm 2> /tmp/dwm.log
