#!/bin/bash
#Function for System Information
function Distro(){
echo " ***********************Linux Box Info***************************"
echo "Hostname : $HOSTNAME"
echo "Username : $USERNAME"
Distros=$(hostnamectl | grep Operating)
echo "OS : " $Distros
IP=$( ip addr show | grep inet | grep 192 | awk '{print $2}')
echo "IP : " $IP
MAC=$( ip addr show | grep ether | awk '{print $2}')
echo "MAC : " $MAC
DNS=$( nmcli | grep servers | awk '{print $2}')
echo "DNS : " $DNS
SUB=$( ip route | grep 192 | tail -1 | awk '{print $1}')
echo "Subnet : " $SUB
GW=$( ip route | grep default | awk '{print $3}')
echo "G.W : " $GW
echo "Back to Menu in 5 seconds...."
sleep 5
}

#Prompt for Username
read -p "Enter Username: " User
if [ $User = "philip" ]; then
	read -p "Enter Password: " Pass
	if [ $Pass = "linux" ]; then
#If user and pass are correct, initiate script
		echo "**********************WELCOME***********************"
		while true; do
		read -p "OS (I)nfo , (P)rocess , (D)ate , (C)lear , inode (F)inder , IP (S)canner , P(W)D , Who (A)m I , (Q)uit :" INPUT
		case $INPUT in
			I|i)
			Distro
			;;
			P|p)
			top
			;;
			D|d)
			date
			echo "Back to menu in 5 seconds...."
			sleep 5
			;;
			C|c)
			clear
			;;
			#Prompt user for file path, if real, uses stat command and greps for inode
			F|f)
			read -p "Enter the path name of a file or directory: " path
			if [ -e "$path" ]; then
				node=$( stat $path | grep Inode | awk '{print $4}')
				echo " The inode number for this file is: $node"
			else
				echo "Invalid path"
			fi
			;;
			#Uses nmap command to search for matching IP addresses
			S|s)
			read -p "Enter the IP address you wish to scan: (192.168.1.0/24 format)" Gret
			nmap -sP $Gret
			;;
			W|w)
			pwd
			echo "Back to menu in 5 seconds...."
			sleep 5
			;;
			A|a)
			whoami
			echo "Back to menu in 5 seconds...."
			sleep 5
			;;
			Q|q)
			echo "Quitting..."
			break
			;;
			*)
			echo "Wrong Input, Try again"
				read KEY
			;;
			esac
			done
	#else statement if password is incorrect. Ends loop		
	else
		echo "Incorrect Password" 
	fi
#else statement if user is incorrect. Ends loop
else 
	echo "Warning, Incorrect Username"
fi

