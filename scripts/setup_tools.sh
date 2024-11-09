#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Check if arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: No tools specified. Usage: $0 tool1 tool2 ..."
    exit 1
fi

# Navigate to the parent directory of the script
cd "$(dirname "$0")"
echo "Current directory: $(pwd)"

# Go to the ../configs tool
cd ../configs

GREEN='\033[0;32m'
NC='\033[0m'

# Loop through each tool provided as an argument
for tool in "$@"; do
    if [ -d "$tool" ]; then
        echo "Found folder: $tool"
        if [ -f "$tool/setup.sh" ]; then
            echo "Running setup.sh in $tool"
            if ! bash "$tool/setup.sh"; then
                echo "Error: setup.sh in $tool failed. Stopping execution."
                exit 1
            fi
            echo -e "${GREEN}$tool setup complete${NC}"
        else
            echo "No setup.sh found in $tool"
        fi
    else
        echo "tool not found: $tool"

        if [ -f "$tool.sh" ]; then
            echo "Running $tool.sh"
            if ! bash "$tool.sh"; then
                echo "Error: $tool.sh failed. Stopping execution."
                exit 1
            fi
            echo -e "${GREEN}$tool setup complete${NC}"
        fi
    fi
done

echo "All setup scripts completed successfully."
