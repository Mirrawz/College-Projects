#!/bin/bash
read -p "Please Enter your electricity bill: " num
if [ $num -le 50 ]; then
bill=$(( 50 * 1 ))
echo "Your total bill is: $bill "
elif [[ $num -gt 50 && $num -lt 101 ]]; then
bill=$(( 50 + ( $num - 50 ) * 2 ))
echo "Your total bill is: $bill "
elif [[ $num -gt 100 && $num -lt 150 ]]; then
bill=$(( 150 + ( $num -100 ) * 3 ))
echo "Your total bill is: $bill "
else [ $num -gt 150 ]
bill=$(( 300 + ( $num - 150 ) *4 ))
echo " Your total bill is: $bill "
fi
