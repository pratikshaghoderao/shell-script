#!/bin/bash -x

random1=$((( RANDOM % 6 ) +1))
random2=$((( RANDOM % 6 ) +1))

echo $(( $random1+$random2 ));


