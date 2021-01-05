#!/usr/bin/env zsh

CONFIG_FILE="$HOME/".zshrc

# shellcheck disable=SC2129
echo >>"$CONFIG_FILE"
echo \# Added by helper-scripts project >>"$CONFIG_FILE"
echo export SCRIPTS_PATH="$(pwd)" >>"$CONFIG_FILE"
echo export PATH="$(pwd)"/symlinks:"$(pwd)"/scripts:\$PATH >>"$CONFIG_FILE"