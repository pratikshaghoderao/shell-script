#!/bin/bash -x

random1=${RANDOM:0:3}
random2=${RANDOM:0:3}
random3=${RANDOM:0:3}
random4=${RANDOM:0:3}
random5=${RANDOM:0:3}

if [ $random1 -gt $random2 ] && [ $random1 -gt $random3 ] && [ $random1 -gt $random4 ] && [ $random1 -gt $random5 ]
then
	echo "Maximum number: $random1";
elif [ $random2 -gt $random1 ] && [ $random2 -gt $random3 ] && [ $random2 -gt $random4 ] && [ $random2 -gt $random5 ]
then
	echo "Maximum number: $random2";
elif [ $random3 -gt $random1 ] && [ $random3 -gt $random2 ] && [ $random3 -gt $random4 ] && [ $random3 -gt $random5 ]
then
        echo "Maximum number: $random3";
elif [ $random4 -gt $random1 ] && [ $random4 -gt $random2 ] && [ $random4 -gt $random3 ] && [ $random4 -gt $random5 ]
then
        echo "Maximum number: $random4";
elif [ $random5 -gt $random1 ] && [ $random5 -gt $random2 ] && [ $random5 -gt $random3 ] && [ $random5 -gt $random4 ]
then
        echo "Maximum number: $random5";

fi
