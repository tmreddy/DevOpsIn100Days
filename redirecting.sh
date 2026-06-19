#!/bin/bash
 
# Redirect errors to an error log
mkdir tmp/mydir 2>/tmp/error_log.txt
 
# Check if the command failed and log the error
if [ $? -ne 0 ]; then
  echo "Command failed. Check /tmp/error_log.txt for details."
fi

