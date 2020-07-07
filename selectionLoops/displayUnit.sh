#!/bin/bash -x

#number=10;
read -p "Enter number::" number;
length=`echo ${#number}`

if [ $length -eq 1 ]
then
	echo "Unit";

elif [ $length -eq 2 ]
then
	echo "Ten";

elif [ $length -eq 3 ]
then
	echo "Hundred";

elif [ $length -eq 4 ]
then
	echo "Thousand";

elif [ $length -eq 5 ]
then
	echo "Ten thousand";
fi
