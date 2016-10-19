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

# Load RVM into a shell session *as a function* and load completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"
# Add current ruby to prompt
PS1="\$($HOME/.rvm/bin/rvm-prompt) $PS1"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /usr/share/nvm/init-nvm.sh
