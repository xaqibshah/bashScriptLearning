#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory_path> <new_file_name_pattern>"
    exit 1
fi

directory_path="$1"
new_file_name_pattern="$2"

# Check if the specified directory exists
if [ ! -d "$directory_path" ]; then
    echo "Error: Directory '$directory_path' not found."
    exit 1
fi

# Get the list of files in the directory
files=$(ls "$directory_path")

# Initialize a counter for sequential numbering
counter=1

# Loop through each file in the directory
for file in $files; do
    # Extract the file extension
    extension="${file##*.}"

    # Construct the new file name
    new_file_name="${new_file_name_pattern}${counter}.${extension}"

    # Rename the file
    mv "${directory_path}/${file}" "${directory_path}/${new_file_name}"
    
    # Check if renaming was successful
    if [ "$?" -eq 0 ]; then
        echo "Renamed '$file' to '$new_file_name'"
    else
        echo "Error: Failed to rename '$file'"
    fi

    # Increment the counter for the next file
    ((counter++))
done
