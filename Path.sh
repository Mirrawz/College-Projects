#!/bin/bash
#Prompt user for a path
echo "Please enter a path to check if it exists:"
#Read a variable entered by the user
read path
#If statements to check if the path is valid (-e is Linux command to specifically check that. -f for a file and -d for a directory)
if [ -e "$path" ]; then
	echo "This path is valid, furthermore:"
	if [ -f "$path" ]; then
	echo "This path leads to a file"
	elif [ -d "$path" ]; then
	echo "This path leads to a directory"
	fi
else
#Else statement if the path was not valid
	echo "Oopsie, this path does not exist"
fi
