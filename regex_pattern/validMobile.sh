#!/bin/bash -x

shopt -s extglob

read -p "Enter mobile number:: " mobile
pattern='^([91])+([ ])+([1-9]{1}[0-9]{9})'

if [[ $mobile =~ $pattern ]]
then
	echo "You have entered valid mobile number"
else
	echo "You have entered wrong mobile number.Please check it."
fi
