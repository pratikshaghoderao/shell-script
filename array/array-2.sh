#!/bin/bash

function random()
{
	for i in {1..10}
	do
		num[i]=${RANDOM:0:3}
		#echo ${num[i]}
	done
	echo
	printf "%s\n" "${num[@]}"
	arr=($(echo ${num[*]} | tr " " "\n" | sort -n))
	echo "Sorted array::"
	printf "%s\n" "${arr[@]}"
	echo 2nd largest::
	printf "${arr[@]:8:1} \n"
	echo 2nd smallest::
	printf "${arr[@]:1:1} \n"
	#arr=$(($i+1))
	#a[$i]=arr
}

random
