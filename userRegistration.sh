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

emailValidator () {
	email_patt="^[a-z0-9]+([.|_|+|-]?[a-z0-9]+)+?@[a-z0-9]+(\.[a-z]{2,}){1,2}$"
	if [[ $1 =~ $email_patt ]]
	then
		echo 1
	else
		echo 0
	fi
}

mobileValidator () {
	mobile_patt="^[0-9]{2} [1-9][0-9]{9}$"
	if [[ $* =~ $mobile_patt ]]
	then
			echo 1
	else
			echo 0
	fi
}

passwordValidator () {
	passwordLengthPat="^[a-zA-Z0-9@#$%&=*_-]{8,}"
	passwordCasePat="[a-zA-Z0-9]*[A-Z][a-zA-Z0-9]*"
	passwordNumPat="[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*"
	passwordSpecialPat="[a-zA-Z0-9]*[@#$%&=_*-][a-zA-Z0-9]*"
	if [[ $1 =~ $passwordLengthPat && $1 =~ $passwordCasePat && $1 =~ $passwordNumPat && $1 =~ $passwordSpecialPat ]]
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
read -p "Enter last name (with Capital first letter) " lastName

isCorrect=`nameValidator $lastName`
if [ $isCorrect -eq 1 ]
then
	echo "Valid Last Name"
else
	echo "Invalid Last Name"
fi
read -p "Enter Email ID " email

isCorrect=`emailValidator $email`
if [ $isCorrect -eq 1 ]
then
	echo "Valid Email"
else
	echo "Invalid Email"
fi

read -p "Enter Mobile Number " mobileNo
isCorrect=`mobileValidator $mobileNo`
if [ $isCorrect -eq 1 ]
then
	echo "Valid Mobile Number"
else
	echo "Invalid Mobile Number"
fi

read -p "Enter password " password
isCorrect=`passwordValidator $password`
if [ $isCorrect -eq 1 ]
then
	echo "Valid Password"
else
	echo "Invalid Password"
fi
