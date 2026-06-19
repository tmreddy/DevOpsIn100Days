#!/bin/bash
 
# Check if a file exists before proceeding
file="/tmp/myfile.txt"
 
if [ ! -f "$file" ]; then
  echo "Error: $file not found!"
  exit 1  # Exit the script with an error code
else
  echo "File exists. Proceeding with the script."
fi

