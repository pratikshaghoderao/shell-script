#!/bin/bash -x

read -p "Enter number::" number;
length=`echo ${#number}`

case $length in
	1)
		echo "Unit";;
	2)
		echo "Ten";;
	3)
		echo "Hundred";;
	4)
		echo "Thousand";;
	5)
		echo "Ten thousand";;
	6)
		echo "One lakh";;
	7)
		echo "Ten lakh";;
	*)
		echo "Not defined";;
esac
