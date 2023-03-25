#!/bin/bash

echo "Enter a range of numbers:"
read start_num end_num

if [ $start_num -lt 2 ]; then
    start_num=2
fi

echo "Prime numbers between $start_num and $end_num are:"

for (( num=start_num; num<=end_num; num++ )); do
    is_prime=true
    for (( i=2; i<$num; i++ )); do
        if [ $(($num % $i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done
    if [ "$is_prime" = true ]; then
        echo $num
    fi
done




