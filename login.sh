#!/bin/bash
read -p "Enter Username: " USERNAME
if [ $USERNAME = "bob" ]
	then
	echo "Username OK"
	read -p "Enter Password: " PASSWORD
	if  [ $PASSWORD = "P@ssw0rd" ]
		then
		echo "User Authenticated"
	else
		echo "Password is Incorrect"
	fi
else
	echo "Incorrect Username"
fi
