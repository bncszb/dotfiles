#!/bin/bash

folders=("tmux" "fzf" "zoxide")

bash "$(dirname "$0")/setup_folders.sh" "${folders[@]}"
