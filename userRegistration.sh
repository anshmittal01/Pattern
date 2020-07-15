#! /bin/bash
function nameValidator()
{
	firstname_patt="^[A-Z][a-z]{2,}$"
	if [[ $1 =~ $firstname_patt ]]
	then
		echo 1
	else
		echo 0
	fi


}

read -p "Enter first name (with Capital first letter) " firstName
isCorrect=`nameValidator $firstName`
if [ $isCorrect -eq 1 ]
then
	echo "Valid First Name"
else
	echo "Invalid First Name"
fi
read -p "Enter first name (with Capital first letter) " lastName
isCorrect=`nameValidator $lastName`
if [ $isCorrect -eq 1 ]
then
	echo "Valid Last Name"
else
	echo "Invalid Last Name"
fi
