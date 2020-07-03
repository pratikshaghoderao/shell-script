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

function prime()
{
	read -p "Enter number to check prime::" number;
half=$(($number/2))

flag=0

for ((i=2; i<=$half; i++))
do
        rem=$(($number%$i))
        if [ $rem -eq 0 ]
        then
                flag=1
        fi

i=$(($i+1))
done

if [ $flag -eq 1 ]
then
        echo "$number is not prime number"
else
        echo "$number is prime number"
fi
}

if [ palindrome -eq 1 ]
then
	prime
	echo number is palindrome and prime
fi




