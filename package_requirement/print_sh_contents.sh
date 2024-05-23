#!/bin/bash

# Find all .sh files in the specified directory
sh_files=$(find /home/vsts/work/_temp/ -name "*.sh")

# Iterate over each .sh file
for file in $sh_files; do
    echo "Content of $file:"
    cat "$file"
    echo "--------------------------------------------------"
done