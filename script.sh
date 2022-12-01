#!/bin/sh
# sum shell script

read -p "Enter first number: " a
read -p "Enter second number: " b

sum=$(($a + $b))
 
echo "Sum is: $sum"  
