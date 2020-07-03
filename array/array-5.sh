#!/bin/bash

for((i=1; i<100; i++))
do
	res=$(($i%11))
		if [ $res -eq 0 ]
		then
			echo $i
		fi
done

