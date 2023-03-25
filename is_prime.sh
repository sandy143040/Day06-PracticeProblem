#!/bin/bash

echo "Enter a number:"
read num

if [ $num -lt 2 ]; then
    echo "$num is not a prime."
    exit
fi

is_prime=true
for (( i=2; i<$num; i++ )); do
    if [ $(($num % $i)) -eq 0 ]; then
        is_prime=false
        break
    fi
done

if [ "$is_prime" = true ]; then
    echo "$num is a prime."
else
    echo "$num is not a prime."
fi

