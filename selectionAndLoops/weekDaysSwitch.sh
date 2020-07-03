#!/bin/bash -x

read -p "Enter weekday number::" weekday;

case $weekday in
	1)
		echo "Sunday";;
	2)
		echo "Monday";;
	3)
		echo "Tuesday";;
	4)
		echo "Wednesday";;
	5)
		echo "Thursday";;
	6)
		echo "Friday";;
	7)
		echo "Saturday";;
	8)
		echo "This is not weekday";;
esac
