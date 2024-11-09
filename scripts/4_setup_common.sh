#!/bin/bash

tools=("tmux" "fzf" "zoxide")

bash "$(dirname "$0")/setup_tools.sh" "${tools[@]}"
