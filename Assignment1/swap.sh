#! /bin/sh
echo "Enter First Number : "
read a
echo "Enter second Number : "
read b
b=$((a+b))
a=$((b-a))
b=$((b-a))
echo "THe swapped numbers are :"
echo $a
echo $b