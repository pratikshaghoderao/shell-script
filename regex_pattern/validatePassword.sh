#!/bin/bash -x

read -p "Enter your password::" password
#length='${#password}'
#pattern='$length >= 8'
#pat="[[ ${#password} -ge 8 && "$password" == *[A-Z]* && "$password" == *[a-z]* && "$password" == *[0-9]* ]]"
#pat="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)\S{6,}$"
#pat="^[A-Za-z0-9#$+*]{8,}$"
#pat="[[:lower:]][[:upper:]][0-9]"
#pat="^(.*[a-z])(.*[0-9])(.*[A-Z])\w{6,}"
pat='((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,})'
if [[ $password =~ $pat ]]
then
	echo "Correct password"
else
	echo "Wrong password"
fi
