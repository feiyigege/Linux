#!/bin/bash

echo 'ip'
read ip
echo 'port'
read port
for ((i=1;i<=100;i++))
do
	ip_array[$i]=$ip.$i
	echo ${ip_array[$i]}

done
echo 'start.........'
#a=1
user="root"
for ip_address in ${ip_array[*]}
do
	ssh -t -p 22 $user@$ip_address "init 0" 
	#let a++
	if [ $? -eq 0 ];then
		let a++
		echo $a
	else
		echo 'next....'
		continue
	fi
done

