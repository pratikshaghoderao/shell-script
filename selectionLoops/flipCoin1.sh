#!/bin/bash -x

i=1
while [ $i -le 11 ]
do
	coin=$(($(($RANDOM%10))%2))
	if [ $coin -eq 1 ];then
    		echo "heads"
	else
    		echo "tails"
	fi
	i=$(($i+1))
done

