#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set bash to vi mode
set -o vi

shopt -s histverify

# Load bash aliases
[[ -f ~/.config/bash/aliases ]] && . ~/.config/bash/aliases

# No arguments: 'git status'
# With arguments: acts like 'git'
function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

# Bash colours for prompt
   RED="\001$(tput setaf 1)\002"
 GREEN="\001$(tput setaf 2)\002"
YELLOW="\001$(tput setaf 3)\002"
  BLUE="\001$(tput setaf 4)\002"
 WHITE="\001$(tput setaf 7)\002"
 RESET="\001$(tput sgr0)\002"

function check_ssh() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo -e "[\u@\h] "
  else
    echo ""
  fi
}

function check_working_dir() {
  echo -e "$PWD" | sed "s|$HOME|~|"
}

source "/usr/share/git/completion/git-prompt.sh"
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "$(check_ssh)$(check_working_dir)" "\\\$ "'

# Load RVM into a shell session *as a function* and load completion
[[ -s "$rvm_path/scripts/rvm" ]] && source "$rvm_path/scripts/rvm"
#[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

[ -f $XDG_CONFIG_HOME/fzf/fzf.bash ] && source $XDG_CONFIG_HOME/fzf/fzf.bash
