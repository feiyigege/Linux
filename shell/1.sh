#!/bin/bash
echo "输入IP："
read ip
echo "输入端口："
read p
for i in $ip
do
nc $i $p
done

