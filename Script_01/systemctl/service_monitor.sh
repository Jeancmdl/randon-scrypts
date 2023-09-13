#!/bin/bash
#
service="$1"
stats_service=`systemctl is-active ${service}`

if [[ ${stats_service} = inactive ]]; then
	echo "[ERROR] - Service ${service} is inactive, verify now!" > service.log
        systemctl status ${service} >> service.log
elif [[ ${stats_service} = active ]]; then
	echo "[LOG] - Serviçe ${service} Active!" > service.log
	systemctl status ${service} >> service.log
else
	echo "What happend here? =/" 
fi
