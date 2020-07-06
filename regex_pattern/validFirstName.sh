#!/bin/bash

read -p "Enter first name:: " firstName
pattern='^[[:upper:]][[:lower:]]{3,}'

if [[ $firstName =~ $pattern ]]
then
	echo "Your first name is $firstName"
else
	echo "You have entered wrong first name"
fi

