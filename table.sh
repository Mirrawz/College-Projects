#!/bin/bash

read -p "Please enter the multiplication table you would like to see: " num
read -p "Please enter the length of the table: (Number) " len
i=1
echo "***************************************"
echo "This is the $num times table: "
echo "***************************************"
while [ $i -le $len ]; do
echo " $num x $i = $((num * i)) "
i=$((i + 1))
sleep 1
done

