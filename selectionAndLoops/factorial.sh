#!/bin/bash -x

read -p "Enter number::" number
factorial=1

for ((i=1; i<=$number; i++))
do
	factorial=$((factorial*i))
done

echo $factorial
