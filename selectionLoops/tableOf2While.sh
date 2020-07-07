#!/bin/bash -x

read -p "Enter number::" number
num=$((2^$number))

i=1
while [ $i -le $num ]
do
        table=$(($i*2))
	i=$(($i+1))
	echo $table
done

