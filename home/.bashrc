#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set bash to vi mode
set -o vi

shopt -s histverify

# Load bash config stuff
[[ -f ~/.bash/configs/aliases ]] && . ~/.bash/configs/aliases
[[ -f ~/.bash/configs/config ]] && . ~/.bash/configs/config
[[ -f ~/.bash/configs/env ]] && . ~/.bash/configs/env

# Set environment variables
export EDITOR=vim

# Bash colours
   RED="\001$(tput setaf 1)\002"
 GREEN="\001$(tput setaf 2)\002"
YELLOW="\001$(tput setaf 3)\002"
  BLUE="\001$(tput setaf 4)\002"
 WHITE="\001$(tput setaf 7)\002"
 RESET="\001$(tput sgr0)\002"

# Git helper functions (modified from zsh core git plugin)
function git_current_branch() {
  local REF="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
  if [[ -n $REF ]]; then
    echo -e "${GREEN}$REF "
  else
    echo ""
  fi
}

function git_prompt_short_sha() {
  local SHA="$(git rev-parse --short HEAD 2> /dev/null)"
  if [[ -n $SHA ]]; then
    echo -e "${WHITE}[${YELLOW}$SHA${WHITE}] "
  else
    echo ""
  fi
}

function parse_git_dirty() {
  local STATUS="$(git status --porcelain --ignore-submodules --untracked-files 2> /dev/null | tail -n1)"
  if [[ -n $STATUS ]]; then
    echo -e "${RED}(*) "
  else
    echo ""
  fi
}

# Other helper functions
function check_ssh() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo -e "${GREEN}\u@\h "
  else
    echo ""
  fi
}

function check_working_dir() {
  echo -e "${YELLOW}$PWD " | sed "s|$HOME|~|"
}

# Set command line prompt
# [\u@\h \W]\
export PS1="\
\$(check_ssh)\
\$(check_working_dir)\
\$(git_current_branch)\
\$(git_prompt_short_sha)\
\$(parse_git_dirty)${RESET}"

# Load RVM into a shell session *as a function* and load completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"
# Add current ruby to prompt
#PS1="\$($HOME/.rvm/bin/rvm-prompt) $PS1"

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#source /usr/share/nvm/init-nvm.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# set pulseaudio value for steam game
export PULSE_RUNTIME_PATH=$XDG_RUNTIME_DIR/pulse
export PATH=$HOME/.local/bin:$PATH
