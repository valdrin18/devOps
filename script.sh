#!/bin/bash
 
echo -n "enter the num1 ==> "
read num1
echo -n "enter the num2 ==> "
read num2
sum=$(( $num1 + $num2 ))
echo "the sum of $num1 and $num2 is ==> $sum"
