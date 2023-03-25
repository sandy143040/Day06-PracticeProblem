#!/bin/bash

function is_palindrome {
    num1=$1
    num2=$2

    # Reverse num1
    reverse_num=0
    while [ $num1 -gt 0 ]
    do
        remainder=$(( $num1 % 10 ))
        reverse_num=$(( $reverse_num * 10 + $remainder ))
        num1=$(( $num1 / 10 ))
    done

    # Check if num2 is equal to the reversed num1
    if [ $num2 -eq $reverse_num ]
    then
        echo "The two numbers are palindromes."
    else
        echo "The two numbers are not palindromes."
    fi
}
is_palindrome 121 121
