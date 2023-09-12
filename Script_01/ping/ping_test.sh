#!/bin/bash

SUB_REDE="192.168.0"
touch scan.log
echo "" > scan.log

for i in ${SUB_REDE}.{1..254}; do
	ping -c 1 ${i} # > /dev/null

	if [[ "${?}" -lt 1 ]]; then
 		echo "UP - ${i}" >> scan.log
	else
		echo "DOWN - ${i}" >> scan.log	
	fi
done
