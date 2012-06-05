#
# BASH SETUP
#

# \033[G: ANSI code moving cursos to first column
export PS1='\[\033[G\]\033[38;5;214m\]\u \[\033[1;36m\]\w $(parse_git_branch)\n\[\033[1;32m\]> \[\033[00m\]'

#
# ALIASES
#

alias coolio="echo ':)'"
alias okay="cd && clear"

#
# ENV
#

export EDITOR="vim"

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
