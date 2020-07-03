#!/bin/bash

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
