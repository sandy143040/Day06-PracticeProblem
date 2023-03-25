#!/bin/bash

head_count=0
tail_count=0

while [[ $head_count -lt 11 && $tail_count -lt 11 ]]; do
    flip=$(( RANDOM % 2 ))
    if [ $flip -eq 0 ]; then
        echo "Heads"
        ((head_count++))
    else
        echo "Tails"
        ((tail_count++))
    fi
done

if [ $head_count -eq 11 ]; then
    echo "Heads wins!"
else
    echo "Tails wins!"
fi
