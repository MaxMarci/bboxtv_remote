#!/bin/bash

# Check if SNMP is installed

snmp_check=false
echo "Check if SNMP is installed"

if [ -d "/etc/snmp" ];then
snmp_check=true
echo "OK, SNMP is installed, scipt will continue..."
else
echo "SNMP is missing, do you want install it ? (y=yes,n=no)"
read choice
	if [ $choice = "y" ];then
	apt-get update
	sudo apt-get install snmp
	fi
fi

# Link between menu and end of snmp cmd
button[1]=0
button[2]=50
button[3]=51
button[4]=52
button[5]=53
button[6]=54
button[7]=55
button[8]=56
button[9]=57
button[10]=58
button[11]=59
button[12]=25
button[13]=26
button[14]=27
button[15]=28
button[16]=7
button[17]=5
button[18]=6
button[19]=9
button[20]=8
button[21]=32
button[22]=13
button[23]=16
button[24]=30
button[25]=46
button[26]=15
button[27]=12
button[28]=45
button[29]=31
button[30]=18
button[31]=23
button[32]=20
button[33]=24
button[34]=19

cmd="snmpset -v1 -c public 192.168.1.74 1.3.6.1.4.1.8711.101.13.1.3.28.0 s "

# Menu

until [ ! $answer -ne 0 ];do
	# Heading

	clear
	echo "********************************************"
	echo "************** BBOX TV MENU ****************"
	echo "********************************************"

	echo "1 - ON/OFF	12 - P+		23 - Quit	34 - Fast-Forward"
	echo "2 - Button 1	13 - P-		24 - VOD	0 - Close the Script"
	echo "3 - Button 2	14 - V+		25 - M@TV"
	echo "4 - Button 3	15 - V-		26 - Infos"
	echo "5 - Button 4	16 - OK		27 - Home"
	echo "6 - Button 5	17 - Up		28 - List"
	echo "7 - Button 6	18 - Left	29 - Guide"
	echo "8 - Button 7	19 - Down	30 - Rewind"
	echo "9 - Button 8	20 - Right	31 - Play/Pause"
	echo "10 - Button 9	21 - Mute	32 - Stop"
	echo "11 - Button 0	22 - Return	33 - Rec"
	echo ""
	echo ""

	# User Choice

	read -p "Please enter your choice and press Enter: " answer

	if [ "$answer" = 0 ];
	then break
	fi

	eval $cmd${button[$answer]}

done

# End of Script

