#!/bin/bash

# Define the list of folders to set up
folders=("tmux" "folder2" "folder3")


# Run the setup_folders.sh script with the defined folders
bash "$(dirname "$0")/setup_folders.sh" "${folders[@]}"
