#!/bin/bash
greet() {
  local name="$1" # Local variable, $1 is the first argument
  echo "Hello, $name!"
}
 
greet "Alice"
greet "Bob"
 
function learn() {
  subject="$1" 
  echo "Learning, $subject!"
}
 
learn "shell Scripting"
 
get_username() {
  username=$(whoami)
  echo "$username"
}
    
current_user=$(get_username)
echo "The current user is: $current_user"
    
check_file() {
  if [ -f "$1" ]; then
     return 0 # Success
  else
     return 1 # Failure
  fi
}
    
if check_file "until.sh"; then
  echo "until.sh exists."
else
  echo "until.sh does not exist."
fi

