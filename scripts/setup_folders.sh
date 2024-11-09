#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Check if arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: No folders specified. Usage: $0 folder1 folder2 ..."
    exit 1
fi

# Navigate to the parent directory of the script
cd "$(dirname "$0")"
echo "Current directory: $(pwd)"

# Go to the ../configs folder
cd ../configs

# Loop through each folder provided as an argument
for folder in "$@"; do
    if [ -d "$folder" ]; then
        echo "Found folder: $folder"
        if [ -f "$folder/setup.sh" ]; then
            echo "Running setup.sh in $folder"
            if ! bash "$folder/setup.sh"; then
                echo "Error: setup.sh in $folder failed. Stopping execution."
                exit 1
            fi
        else
            echo "No setup.sh found in $folder"
        fi
    else
        echo "Folder not found: $folder"
    fi
done

echo "All setup scripts completed successfully."
