#!/bin/bash

# Use fzf to interactively select a file
selected_file=$(fzf)

# Check if a file was selected
if [ -n "$selected_file" ]; then
    # Use cat to display the contents of the selected file
    lvim "$selected_file"
else
    echo "No file selected. Exiting."
fi

