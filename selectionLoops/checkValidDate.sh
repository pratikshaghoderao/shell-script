#!/bin/bash -x

flag=0;

read day;
read month;

echo $day=24;
echo $month=3

if [ $day -ge 1 -a $day -le 31 ]
then
	if [ $month -ge 3 -a $month -le 6 ]
	then
		if [ $month == 3 ]
		then
			if [ $day -lt 20 ]
			then
				flag=0
			fi
		fi

		if [ $month==6 ]
		then
			if [ $day -gt 20 ]
			then
				flag=0
			fi
		fi
		flag=1
	fi
fi

if [ $flag == 1 ]
then
	echo true
else
	echo false
fi
