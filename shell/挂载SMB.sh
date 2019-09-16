#!/bin/bash

echo 'IP ：'

read iip

echo 'user : '

read user

echo 'pwd : '

read passd

echo 'dir : '

read ddir

echo '生成IP .....'
for((i=1;i<=100;i++))

do
	ip_array[$i]=$iip.$i.'1'
	
done

for mount_ip in ${ip_array[*]}
do
	mount -t cifs -o username=$user,passdword=$passd//$mount_ip/$ddir
	if [ $? -eq=0 ];then
		echo '666'
	else
		echo 'next....'
		continue
	fi
done	


