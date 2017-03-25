#!/bin/bash

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

clear
chmod 755 WiFi-Booster.sh
echo " "
echo " "
echo -ne "$White #############"
echo " "
echo -ne "$White # ""\e[1;33m$info WARNING""$White  #"
echo " "
echo -ne "$White #############"
echo " "
echo " "
echo -ne "\e[0;35m"
echo -e "$info  WiFi-Booster meningkatkan daya frequensi & TxPower menjadi 30dBm"
echo -e "$info  Script ini untuk usb-wifi AWUSO36H" #(AWUSO)
echo -e "$info  Mungkin ingin mencoba di WiFi anda ?"
while true

do

echo " "  
echo -e "$inp   $yel $White[${Cyan}y/Ya${White}]$Green $inp Lanjut...$txtrst"
echo -e "$inp   $yel $White[${Cyan}n/No${White}]$Green $inp Batal !!$txtrst" $White
		read CONFIRM
  		case $CONFIRM in
    		y|Ya) break ;;
   		n|No)
      		echo Aborting - batalkan $CONFIRM
      		exit
      		;;

	 	 esac


			done

clear
echo ""
echo ""
echo -ne "\e[1;31m"
echo "                                                                     /&&&&&&&&&&&&&&&&"                 
echo "/&&      / && /&& /&&&&&&& /&&      /&&&&&&&&&                       \_____  &&______/"       
echo "| &&     | &&    | &&____/	    | &&   |&&&   &&&&&    &&&&&  /&&&&&&& | &&       "
echo "| &&     | && /&&| &&      /&&      | &&   |&&& /&&__ && /&&__ &&| &&____/ | &&	    "
echo "| &&     | &&| &&| &&&&&&&| && |&&&&| &&&&&&&  | &&  |&&| &&  |&&| &&      | &&       "
echo "| &&  &&&  &&| &&| &&____/| && |___/| &&   |&&&| &&  |&&| &&  |&&| &&&&&&&&| &&       "
echo "| && && && &&| &&| &&     | &&      | &&   |&&&| &&  |&&| &&  |&&|       &&| &&       "
echo "| &&&& \ &&&&| &&| &&     | &&      | &&&&&&&& /\ &&&&& /\ &&&&& |/&&&&&&& | &&       "
echo " \___/  \___/\__/\__/     \__/       \________/  \_____/  \_____/ \_______/\__/       "

echo " "
echo -ne "\e[0;38;5;45m                                                        The Frequency Booster"
echo " "
echo " "
echo " " 
sleep 1

echo -ne "\e[1;33m Taking down wlan0"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
ifconfig wlan0 down
sleep 2

echo -ne "\e[1;33m Setting Region to Indonesia"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
iw reg set GY
sleep 1

echo -ne "\e[1;33m Starting wlan0"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
ifconfig wlan0 up
sleep 2

echo -ne "\e[1;33m Setting chanell to 13"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
iwconfig wlan0 channel 13
sleep 1

echo -ne "\e[1;33m Setting TxPower to 30"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
iwconfig wlan0 txpower 30
sleep 1

echo -ne "\e[1;33m Pulling wlan0 interface up"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
echo -ne "\e[0;37m"
iwconfig wlan0
sleep 2

echo -ne "\e[1;33m Now lets taking mode monitor"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
echo -ne "\e[0;37m"
airmon-ng check kill && airmon-ng start wlan0
sleep 1

echo -ne "\e[1;33m Taking down wlan0mon"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
ifconfig wlan0mon down
sleep 2

echo -ne "\e[1;33m Setting Region to Indonesia"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
iw reg set GY
sleep 1

echo -ne "\e[1;33m Starting wlan0mon"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
ifconfig wlan0mon up
sleep 2

echo -ne "\e[1;33m Setting chanell to 13"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
iwconfig wlan0mon channel 13
sleep 1

echo -ne "\e[1;33m Setting TxPower to 30"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
iwconfig wlan0mon txpower 30
sleep 1

echo -ne "\e[1;33m Now lets pulling wlan0mon interface up mode monitor"
echo " "
echo " "
echo -ne "\e[0;38;5;45m.................................................""$White[${Green} ok ${White}]$Green"
echo " "
echo " "
echo -ne "\e[0;37m"
iwconfig wlan0mon
sleep 2

echo " "
echo " "
echo -ne "\e[0;38;5;45m+-+-+ +-+-+-+-+-+ +-+-+ "
echo " "
echo -ne "\e[1;31m       By: AiNk~ "
echo " "
echo -ne "\e[0;38;5;45m+-+-+ +-+-+-+-+-+ +-+-+ "
echo " "
echo " "
sleep 1

echo -ne "\e[1;31m Hatur Nuhun"
echo " "
echo " "
sleep 2
echo -ne "\e[0;37m"

clear
exit