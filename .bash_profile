#
# BASH SETUP
#

# \033[G: ANSI code moving cursor to first column
export PS1='\[\033[G\]\033[38;5;214m\]\u \[\033[1;36m\]\w $(parse_git_branch)\n\[\033[1;32m\]> \[\033[00m\]'

#
# ALIASES
#

alias coolio="echo ':)'"
alias okay="cd && clear"
if [ -d $HOME/Development ]; then
  alias dev="cd ~/Development"
fi


#
# ENV
#

export EDITOR="vim"

# user binaries
if [ -d $HOME/bin ]; then
  export PATH="$HOME/bin:$PATH"
fi

#
# EXTENSIONS
#

# git
source ~/.dotfiles/lib/git_completion.bash
source ~/.dotfiles/lib/git_parse_branch.bash

# rbenv
if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# todo.txt
if which -s todo.sh; then
  source ~/.dotfiles/lib/todo.bash
fi
