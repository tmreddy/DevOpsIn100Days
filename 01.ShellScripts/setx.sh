#!/bin/bash
set -x  # Start debugging
echo "This will be printed"
touch tmp/myfile.txt
set +x  # Stop debugging
mkdir tmp/mydir

