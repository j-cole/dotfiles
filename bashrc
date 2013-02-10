#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load ~/.bash_aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

PS1='[\u@\h \W]\$ '
