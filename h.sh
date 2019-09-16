#!/bin/bash
ip_input="192.168"
for ((i=190;i<=195;i++))

do
    ip_array[$i]=$ip_input.$i.'1'
    
done

    #生成数组
user="root"
a=0

for ip in ${ip_array[*]}

do
    
        
    
    ssh -t -p 22 $user@$ip 'ifconfig' >/home/feiyi/$a.txt
    let a++
    
done
