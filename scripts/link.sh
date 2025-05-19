#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HOME_DIR="$HOME"

for file in "$DOTFILES_DIR"/dotfiles/.*; do
    filename="$(basename "$file")"
    # Skip . and ..
    [[ "$filename" == "." || "$filename" == ".." ]] && continue
    # Skip .git directory if present
    [[ "$filename" == ".git" ]] && continue
    ln -sf "$file" "$HOME_DIR/$filename"
    echo "Linked $file -> $HOME_DIR/$filename"
done