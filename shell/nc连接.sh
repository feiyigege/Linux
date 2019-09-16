#!/bin/bash
while true
do
	echo 'ip'
	read ip
	echo 'port'
	read port
	for ip_add in $ip
	do
		nc $ip_add $port
	done
done

