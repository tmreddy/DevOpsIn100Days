#!/bin/bash
touch myfile.txt
chmod +rw myfile.txt # adding read write permission use - instead of + to remove permissions
ls -l > myfile.txt  # Overwrite content of myfile.txt
echo "Appended content" >> myfile.txt  # Append content to myfile.txt
cat < myfile.txt
echo firstLine
cat <<EOF
This is the first line of input.
This is the second line.
EOF
read name <<< "John Doe"
echo "Hello, $name!"

