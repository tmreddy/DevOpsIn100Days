#!/bin/bash
 
file="example.txt"
directory="example_dir"
 
if [ -e "$file" ]; then
    echo "$file exists."
fi
 
if [ -f "$file" ]; then
    echo "$file is a regular file."
fi
 
if [ -d "$directory" ]; then
    echo "$directory is a directory."
fi
 
if [ -r "$file" ]; then
    echo "$file is readable."
fi
 
if [ -w "$file" ]; then
    echo "$file is writable."
fi
 
if [ -x "$file" ]; then
    echo "$file is executable."
fi

