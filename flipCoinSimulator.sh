#!/bin/bash

declare -A arr1
declare -A arr2
i=1
while [ $i -le 21 ]
do
        coin=$(($(($RANDOM%10))%2))
	if [ $coin -eq 1 ];then
                #echo "heads"
		arr1[i]=$coin
        else
                #echo "tails"
		arr2[i]=$coin
        fi
        i=$(($i+1))
	#arr[i]=$i
	#printf "%s\n" "${arr[@]}"
done
	printf "%s\n" "${arr1[@]}"
        printf "%s\n" "${arr2[@]}"
        printf "${#arr1[@]}"

