#!/bin/bash

harmonic=1

read -p "Enter number: " number;
for (( i=1; i<=$number; i++ ))
do
	harmonic=$(echo | awk '{print one+1/two}' one=$harmonic two=$i)
done

echo $harmonic
