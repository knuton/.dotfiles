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
if command -v nix-shell >/dev/null; then
  NIX_SHELL_CMD=$(command -v nix-shell)
  function nix-shell() {
    $NIX_SHELL_CMD --command "declare -x PS1='\[\033[G\]\033[38;5;214m\]\u \[\033[1;36m\]\w \$(git rev-parse --abbrev-ref HEAD | echo \"git:\$(cat -) \")nix:\${name:-❖}\n\[\033[1;32m\]❖ \[\033[00m\]'; return" "$@"
  }
fi
if command -v xclip >/dev/null; then
  alias to-clipboard="xclip -selection clipboard"
fi



#
# ENV
#

export EDITOR="vim"

export HISTCONTROL=ignorespace

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
