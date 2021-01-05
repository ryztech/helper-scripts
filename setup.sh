#!/usr/bin/env zsh

CONFIG_FILE="$HOME/".zshrc

if test -f "$CONFIG_FILE"; then
  # shellcheck disable=SC2129
  echo >>"$CONFIG_FILE"
  echo \# Added by helper-scripts project >>"$CONFIG_FILE"
  echo export SCRIPTS_PATH="$(pwd)" >>"$CONFIG_FILE"
  echo export PATH="$(pwd)"/symlinks:"$(pwd)"/scripts:\$PATH >>"$CONFIG_FILE"
else
  echo no .zshrc file! maybe you need to create one or maybe you\'re using bash!
fi