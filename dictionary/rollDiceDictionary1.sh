#!/bin/bash

declare -A dice

dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

while [ ${dice[1]} != 10 ] && [ ${dice[2]} != 10 ] && [ ${dice[3]} != 10 ] && [ ${dice[4]} != 10 ] && [ ${dice[5]} != 10 ] && [ ${dice[6]} != 10 ]
do
	roll=$((RANDOM%6+1))
	case $roll in
	1)
		dice[1]=$((${dice[1]}+1));;
    	2)
    		dice[2]=$((${dice[2]}+1));;
    	3)
    		dice[3]=$((${dice[3]}+1));;
    	4)
    		dice[4]=$((${dice[4]}+1));;
    	5)
    		dice[5]=$((${dice[5]}+1));;
    	6)
    		dice[6]=$((${dice[6]}+1));;
    esac
done

for i in ${!dice[@]}
do
	echo $i" : "${dice[$i]}
done

max=${dice[1]}
min=${dice[1]}

for i in ${!dice[@]}
do
	if [ ${dice[$i]} -ge $max ]
    	then
    		max=${dice[$i]}

    	fi

    	if [ ${dice[$i]} -le $min ]
    	then
    		min=${dice[$i]}
    	fi
done

echo "Maximum "$max
echo "Minimum "$min
