#!/bin/bash

read -p "Enter range1: " x
read -p "Enter range2: " y
for (( i=$x; i<=$y; i++ ))
do
	any=0
	for(( j=2; j<=$i/2;j++ ))
	do
		rem=$(($i%$j))
		if [ $rem -eq 0 ]
		then
			any=$(($any+1))
		fi

	done
if [ $any -eq 0 ]
then
	echo $i is prime
fi
done
printf "\n"
