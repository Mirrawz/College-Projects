#!/bin/bash
function Distro(){
DISTROS=$(hostnamectl | grep Operating | awk '{print $3,$5}')
echo " OS Distros is:" $DISTROS
}
clear
while [ TRUE ]; do
read -p "OS (I)nfo , (C)lear , (D)ate , (Q)uit " INPUT
case $INPUT in
I|i)
echo "Info about OS"
Distro
;;
Q|q)
echo "Quitting..."
break
;;
C|c)
clear
;;
D|d)
echo "Today's date and time:"
date
;;
*)
echo "Wrong Input, Try Again"
read KEY
;;
esac
done
