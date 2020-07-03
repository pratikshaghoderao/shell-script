#!/bin/bash

function palindrome()
{
read -p "Enter number::" number

single=0

rev=""

original=$number

while [ $number -gt 0 ]
do
	single=$(($number%10))
	number=$(($number/10))
	rev=$(echo ${rev}${single})
done

if [ $original -eq $rev ]
then
	echo "Palindrome"
else
	echo "Not palindrome"
fi
}

palindrome
