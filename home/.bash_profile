#!/bin/sh

export EDITOR=vim

# set XDG locations
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# clean up home directory using XDG
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CONAN_USER_HOME="$XDG_CONFIG_HOME/conan"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GOPATH="$XDG_DATA_HOME/go"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export IRBRC="$XDG_CONFIG_HOME/irb/irbrc"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export rvm_path="$XDG_DATA_HOME/rvm"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# set pulseaudio value for steam game
export PULSE_RUNTIME_PATH="$XDG_RUNTIME_DIR/pulse"

# env variables
export PATH="$rvm_path/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start xorg without display manager
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
