#!/bin/bash

read -p "Enter last name:: " lastName
pattern='^[[:upper:]][[:lower:]]{3,}'

if [[ $lastName =~ $pattern ]]
then
        echo "Your first name is $lastName"
else
        echo "You have entered wrong last name"
fi
