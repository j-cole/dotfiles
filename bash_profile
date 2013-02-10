# Source .bashrc for login shells too
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Prevent RVM from always loading in tmux (as tmux always opens login shells)
if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  # Load RVM into a shell session *as a function*
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi
