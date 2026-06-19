#!/bin/bash
    
# Looping through a list of items
for item in apple banana cherry; do
    echo "I like $item."
done
    
# Looping through a range of numbers
for i in {1..5}; do
   echo "Number: $i"
done
    
# Looping through command output
for file in $(ls *.sh); do
   echo "Processing file: $file"
   # Add commands to process the file here
done

