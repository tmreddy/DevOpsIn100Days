#!/bin/bash
set -e  # Exit immediately if any command fails
 
echo "Starting script..."
 
# This will fail if directory already exists
mkdir /tmp/mydir
 
# If the above command fails, the script will exit here
echo "This message will not be printed if the mkdir fails."

