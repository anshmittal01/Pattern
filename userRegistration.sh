#! /bin/bash

read -p "Enter first name (with Capital first letter) " name
firstname_patt="^[A-Z][a-z]{2,}$"
if [[ $name =~ $firstname_patt ]]
then
	echo "Valid First Name"
else
	echo "Invalid First Name"
fi