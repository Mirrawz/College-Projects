#!/bin/bash
read -p "Enter your count: " b
for (( i=1 ; i <= $b ; i++ ))
do
echo "$i"
sleep 0.2
done
