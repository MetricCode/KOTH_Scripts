#!/bin/bash
# @ author:M3tr1c_r00t

Red=$'\e[1;31m'
Green=$'\e[1;32m'
#Blue=$'\e[1;34m'
#echo "$Blue I like chocolate cake "

echo " __  __ _____ _        _                ___   ___  _   "
echo "|  \/  |___ /| |_ _ __/ | ___     _ __ / _ \ / _ \| |_ "
echo "| |\/| | |_ \| __| '__| |/ __|   | '__| | | | | | | __|"
echo "| |  | |___) | |_| |  | | (__    | |  | |_| | |_| | |_ "
echo "|_|  |_|____/ \__|_|  |_|\___|___|_|   \___/ \___/ \__|"
echo "                            |_____|                    1.0.1 v"

echo " "
echo " "
who -u
echo " "
echo "$Red How many should we destroy? $Green"
read no

if [[ $no -eq 0 ]]
then
	$(exit)
else
	x=0
	rounds=$no
	while [[ $rounds -gt $x ]]
	do
		echo "$Green kill which?"
		read kill
		pkill  -9 -t pts/$kill
		echo "$Green  $kill Has been terminated!"
		rounds=$(($rounds - 1))
	done
fi
