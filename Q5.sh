#!/bin/bash

# Ask the user to enter the directory name
echo "Please enter the directory name: "
read d_name

echo "You have entered $d_name"

# Check if the entered directory exists
if [ ! -d "$d_name" ]; then
    echo "Error: Directory '$d_name' doesn't exist"
    exit 1
fi

echo -e "\n $d_name directory exists"

# List all the files in the specified directory
echo "All the files in $d_name directory are: "
ls "$d_name"

# List the files in the specified directory in sorted order
echo -e "Sorted list of files are: "
ls -v "$d_name"

# Create a new directory named "sorted_files" within the specified directory
new_d="$d_name/sorted_files"
mkdir -p "$new_d"

# Move all the files from the specified directory to the new "sorted_files" directory
count=0
for file in "$d_name"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$new_d"
        ((count++))
    fi
done

# Print the number of files moved to the "sorted_files" directory
echo -e " $count files moved from $d_name to sorted_files directory"
