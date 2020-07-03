#!/bin/bash -x

random1=${RANDOM:0:2}
random2=${RANDOM:0:2}
random3=${RANDOM:0:2}
random4=${RANDOM:0:2}
random5=${RANDOM:0:2}

sum=$(($random1+$random2+$random3+$random4+$random5));
avg=$(( sum/5 ));

echo Sum is: $sum;
echo Average is: $avg;
