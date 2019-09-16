#!/bin/bash
while true
do
	echo -n '对方的IP：'

	read u_ip

	echo -n '用户名：'

	read user

	echo -n '密码：'

	read passwd

	echo -n '对方的目录：'

	read u_dir


	for client in $u_ip
	do
		smbclient //$u_ip/$_udir -U $user%$passwd
	done
done
