#!/bin/bash
 
# Define a cleanup function
cleanup() {
  echo "Cleaning up before exit..."
  # Add any necessary clean-up commands here, like removing temporary files
  exit 1  # Exit with status 1 (indicating error)
}
 
# Trap Ctrl+C (SIGINT) signal and call the cleanup function
trap cleanup SIGINT
 
# Simulate a long-running process
echo "Script is running... Press Ctrl+C to stop."
while true; do
  sleep 1  # Simulating a task
done

