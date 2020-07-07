#!/bin/bash -x

read -p "Enter email address:: " email

pattern="^([A-Za-z]+[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"

if [[ $email =~ $pattern ]]
then
	echo "Valid email id"
else
	echo "Invalid email id"
fi

