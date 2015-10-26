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

# Add RVM to PATH for scripting and RVM bash completion
PATH=$PATH:$HOME/.rvm/bin
[[ -r ~/.rvm/scripts/completion ]] && . ~/.rvm/scripts/completion
PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin
