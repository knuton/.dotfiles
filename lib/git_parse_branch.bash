function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d'  -e 's/* \(.*\)/git:\1 /'
}
