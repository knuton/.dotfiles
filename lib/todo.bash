todo () {
  if [ -n "$1" ]; then
    todo.sh $@
  else
    todo.sh ls
  fi
}
