#!/bin/bash -x

read -p "Enter a number":: number;
echo "1.Feet to Inch";
echo "2.Feet to meter";
echo "3.Inch to feet";
echo "4.Meter to feet";
read -p "Enter case number between 1 to 4::" caseNum;

case $caseNum in
	1)
		result=$(( $number*12 ));
		echo "Result:: $result";;
	2)
		result=$(($number/3));
		echo "Result:: $result";;
	3)
		result=$(($number/12));
		echo "Result:: $result";;
	4)
		result=$(($number*3));
		echo "Result:: $result";;
	*)
		echo "Not defined";
esac
