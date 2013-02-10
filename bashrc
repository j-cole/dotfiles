#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set command line prompt
PS1='[\u@\h \W]\$ '

# Set bash to vi mode
set -o vi

# Load ~/.bash_aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Set environment variables
export EDITOR=vim
