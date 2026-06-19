#!/bin/bash
attempts=0
until [ "$attempts" -ge 3 ]; do
    echo "Attempting connection... ($attempts)"
    sleep 2
    attempts=$((attempts + 1))
done
echo "Failed to connect after $attempts attempts."

