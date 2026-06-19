#!/bin/bash
echo "Script name: $0"
echo "Number of arguments: $#"
echo "First argument: $1"
echo "All arguments ($*): $*"
echo "All arguments ($@): $@"    
ls -l non_existent_file
echo "Exit status of previous command: $?"

