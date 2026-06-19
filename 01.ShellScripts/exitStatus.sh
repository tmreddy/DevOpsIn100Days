#!/bin/bash
 
# Try to create a directory
mkdir /tmp/mydir
 
# Check if the mkdir command was successful
if [ $? -eq 0 ]; then
  echo "Directory created successfully."
else
  echo "Error: Directory creation failed."
fi

