#!/bin/bash -x

read -p "Enter year::" year;

cond1=$(($year%4));
cond2=$(($year%100));
cond3=$(($year%400));

if [ $cond1 -eq 0 -a $cond2 -ne 0 -o $cond3 -eq 0 ]
then
	echo "$year is leap year";
else
	echo "$year is not leap";
fi
