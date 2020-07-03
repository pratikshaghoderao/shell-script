#!/bin/bash

read -p "Enter n number::" num;
number=$((2^$num))

for ((i=0; i<=$number; i++))
do
	table=$(($i*2))
	echo $table
	printf "\n"
done
