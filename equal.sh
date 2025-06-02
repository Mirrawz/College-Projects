#!/bin/bash
echo "Welcome to the Match Checker!"
sleep 1
read -p "Please write your first string: " first
read -p "Please write your second string " second
if [[ $first == $second ]]; then
echo "Match!"
else
echo "No Match!"
fi 
