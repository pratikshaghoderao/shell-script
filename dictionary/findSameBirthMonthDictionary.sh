#!/bin/bash
#initializing empty array
declare -A birthDate
#using counter to store value based on index
janCount=0
febCount=0
for ((i=0; i<50; i++))
do
    randomMonth=$((RANDOM%12+1))
    case $randomMonth in
    1)
        #at first jan count is 0 so it will store in 0th index
        #storing value in another array
        #if u like to see what is inside this array in each itration plz print and check it out
        janArray[$janCount]="person$i"
        #incrementing counter
        janCount=$(($janCount+1))
        #creating key as jan and storing the values in birthDate array
        birthDate["jan"]=${janArray[@]};;
    2)
        febArray[$febCount]="person$i"
        febCount=$(($febCount+1))
        birthDate["feb"]=${febArray[@]};;
    esac
done
#for displaying data
read -p "which month data do you need from 1-12 : " userMonth
case $userMonth in
1)
    echo "Jan ${birthDate["jan"]}" ;;
2)
    echo "feb ${birthDate["feb"]}" ;;
*)
echo ${birthDate["jan"]}
echo ${birthDate["feb"]} ;;
esac
#one more way is there
#put the key in one array
months=("jan" "feb")
for month in ${months[@]}
do
    #displaing all the data
    echo "$month : ${birthDate[$month]}"
done
