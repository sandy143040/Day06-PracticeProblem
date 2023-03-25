#!/bin/bash

# Check if a command-line argument is provided
if [ $# -eq 0 ]
then
    echo "Please provide a command-line argument."
    exit 1
fi

n=$1

# Calculate and print the powers of 2 less than or equal to 2^n
i=0
while [ $i -le $n ]
do
    result=$(( 2 ** i ))
    echo "2^$i = $result"
    i=$(( i + 1 ))
done
