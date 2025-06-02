#!/bin/bash
echo "Enter 5 Numbers:"
read a
read b
read c
read d
read e
max=$a

if [ "$b" -gt "$max" ]; then
 max=$b
fi
if [ "$c" -gt "$max" ]; then
 max=$c
fi
if [ "$d" -gt "$max" ]; then
 max=$d
fi
if [ "$e" -gt "$max" ]; then
 max=$e
fi

echo "The maximum number is: $max"
