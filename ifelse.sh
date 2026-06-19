#!/bin/bash
a=5
b=10
if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
fi
if [ "$a" -eq "$b" ]; then
    echo "$a is equal to $b"
else
    echo "$a is not equal to $b"
fi

