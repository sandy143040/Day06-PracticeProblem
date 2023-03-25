#/bin/bash -x

# Q.Write a program that computes a factorial of a number taken as input.

echo "Enter a number: "
read num

factorial=1

if [ $num -lt 0 ]; then
    echo "Error: factorial of a negative number does not exist."
    exit
elif [ $num -eq 0 ]; then
    echo "Factorial of 0 is 1."
    exit
else
    for (( i=1; i<=num; i++ ))
    do
        factorial=$((factorial*i))
    done
fi

echo "Factorial of $num is $factorial."
