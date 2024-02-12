#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

directory_path="$1"

# Check if the specified directory exists
if [ ! -d "$directory_path" ]; then
    echo "Error: Directory '$directory_path' not found."
    exit 1
fi

# Function to remove old files
remove_old_files() {
    local dir="$1"
    local days="$2"
    
    echo "Removing files older than $days days in '$dir'..."

    # Find and delete files older than specified days
    find "$dir" -type f -mtime +$days -exec rm -v {} \;
}

# Function to remove empty directories recursively
remove_empty_directories() {
    local dir="$1"
    
    echo "Removing empty directories in '$dir'..."

    # Find and remove empty directories
    find "$dir" -type d -empty -exec rmdir -v {} \;
}

# Run cleanup tasks
remove_old_files "$directory_path" 30
remove_empty_directories "$directory_path"

echo "Cleanup process completed."
