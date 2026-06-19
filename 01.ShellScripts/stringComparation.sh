#!/bin/bash
 
str1="Hello"
str2="World"
str3=""
 
# Check if strings are equal
if [ "$str1" = "$str2" ]; then
    echo "$str1 is equal to $str2"
else
    echo "$str1 is not equal to $str2"
fi
 
# Check if strings are not equal
if [ "$str1" != "$str2" ]; then
    echo "$str1 is not equal to $str2"
fi
 
# Check if one string is less than another
if [[ "$str1" < "$str2" ]]; then
    echo "$str1 is less than $str2"
fi
 
# Check if one string is greater than another
if [[ "$str1" > "$str2" ]]; then
    echo "$str1 is greater than $str2"
fi
 
# Check if a string is of zero length
if [ -z "$str3" ]; then
    echo "str3 is empty."
fi
 
# Check if a string is of non-zero length
if [ -n "$str1" ]; then
    echo "str1 is not empty."
fi

