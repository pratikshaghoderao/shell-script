#!/bin/bash -x

feet=`echo | awk '{printf "%0.02f\n",(42/12);}'`
echo "42 meters in feets: $feet ft";

area=`echo | awk '{printf "%0.02f\n",((60/3.28)*(40/3.28));}'`
echo "Area of plot is:: $area meters";

plots=`echo | awk '{printf "%0.02f\n",(25*2200);}'`
echo "25 plots: $plots feet";

total=`echo | awk '{printf "%0.02f\n",(25000/4047);}'`
echo "Total 25 plots in acers: $total acers";
