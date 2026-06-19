#!/bin/bash
 
#Declaration
 
my_array=("apple" "banana" "cherry")
echo "${my_array[@]}"
my_array[0]="grape"
my_array[1]="kiwi"
echo "${my_array[@]}"
 
#Accessing Elements
 
echo "${my_array[0]}"   # Access the first element (grape)
echo "${my_array[1]}"   # Access the second element (kiwi)
echo "${my_array[@]}"   # Access all elements
echo "${my_array[*]}"   # Access all elements as a single string
 
#Array Length
 
echo "${#my_array[@]}"  # Get the number of elements in the array
 
#Iterating Through Arrays
 
for item in "${my_array[@]}"; do
    echo "Fruit: $item"
done

