#!/bin/sh
a=1
b=1
d=0
sum=$((a+b))

echo "Enter range: "
read n
echo "The Fibonacci series is:"
echo "$a"
echo "$b"

c=2  # Initialize counter
while [ $c -lt $n ]
do
    d=$((a + b))
    echo "$d"
    sum=$((sum + d))
    a=$b
    b=$d
    c=$((c + 1))  # Increment counter
done

echo "Sum of first $n numbers in the Fibonacci series is $sum"