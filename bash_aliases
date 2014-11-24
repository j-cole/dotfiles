# ~/.bash_aliases

# android
alias android-connect='mkdir ~/mtp && jmtpfs ~/mtp'
alias android-disconnect='fusermount -u ~/mtp && rmdir ~/mtp'

# arch
alias po='sudo systemctl poweroff'
alias rb='sudo systemctl reboot'

# git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git difftool'
alias gdc='git difftool --cached'
alias gf='git fetch'
alias gst='git status -sb'

# grep
alias grep='grep --color'

# ls
alias l='ls -al'
alias ls='ls --color=auto'

# skype
alias skype='xhost +local: && su skype -c skype'

# system
alias cp='cp -i'

# tmux
alias t='tmux -2'

# vim
alias g='gvim --remote-silent'
