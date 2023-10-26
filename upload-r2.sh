#!/bin/bash

# Define the directory with your files
directory="/Users/ysnows/Documents/Project/distribution"

# Function that lists all files in a directory
file_list() {
    for file in "$1"/*
    do
        if [ -d "${file}" ] ; then
            file_list "${file}"
        elif [ -f "${file}" ]; then
            # get relative path withoud first /
            relative_path=${file#"$directory"}
            echo "Listing ${relative_path}"
            wrangler r2 object put enconvo$relative_path --file=./$relative_path
        fi
    done
}

# Call the function on your directory
file_list "${directory}"