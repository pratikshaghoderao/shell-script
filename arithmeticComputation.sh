#!/bin/bash

declare -A arithmetic
read -p "Enter value of a:: " a
read -p "Enter value of b:: " b
read -p "Enter value of c:: " c

exp1=$(($a+$b*$c))
arithmetic[1]=$exp1
#echo ${arithmetic[1]}

exp2=$(($a*$b+$c))
arithmetic[2]=$exp2

exp3=$(($c+$a/$b))
arithmetic[3]=$exp3

exp4=$(($a%$b+$c))
arithmetic[4]=$exp4

echo ${arithmetic[@]}

descSort=($(echo ${arithmetic[*]} | tr " " "\n" | sort -nr))
echo "Sorted array in descending order::"
printf "%s\n" "${descSort[@]}"

ascSort=($(echo ${arithmetic[*]} | tr " " "\n" | sort -r))
echo "Sorted array in ascending order::"
printf "%s\n" "${ascSort[@]}"
