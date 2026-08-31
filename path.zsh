# Command search path. `path` and `PATH` are linked Zsh variables.

path=(
  "$HOME/.local/bin"
  "$HOME/bin"
  /usr/local/bin
  $path
)
