#!/bin/bash -x

read -p "Enter 1st number::" a;
read -p "Enter 2nd number::" b;
read -p "Enter 3rd number::" c;

eq1=$(($a+$b*$c));
eq2=$(($a%$b+$c));
eq3=$(($c+$a/$b));
eq4=$(($a*$b+$c));

if [[ $eq1 -gt $eq2 && $eq1 -gt $eq3n && $eq1 -gt $eq4 ]]
then
	echo "Maximum number:: $eq1";
elif [[ $eq2 -gt $eq1 && $eq2 -gt $eq3 && $eq2 -gt $eq4 ]]
then
	echo "Maximum number:: $eq2";
elif [[ $eq3 -gt $eq1 && $eq3 -gt $eq2 && $eq3 -gt $eq4 ]]
then
	echo "Maximum number:: $eq3";
elif [[ $eq4 -gt $eq1 && $eq4 -gt $eq2 && $eq4 -gt $eq3 ]]
then
	echo "Maximum number is:: $eq4";
fi

