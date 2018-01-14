# bboxtv_remote
Script Project for Remote control BBOX TV Decoder

Help for bboxtv_remote.sh

BBOX TV use snmp instructions, all functions are listed in script menu.

***********************
Important : 
***********************

Before using the script, please modify ip address (192.168.1.74) on line 56 after public by your own BBOX TV decoder ip address.

like this :
cmd="snmpset -v1 -c public [ip_address] 1.3.6.1.4.1.8711.101.13.1.3.28.0 s "

Script was tested on "BBox Sensation" model only.

