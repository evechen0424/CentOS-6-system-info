#!/bin/bash

CPU_model=`cat /proc/cpuinfo |grep "model name"|awk 'BEGIN {FS=":"}; {print $2}'|head -1`
CPU_cores=`cat /proc/cpuinfo|grep "model name"|wc -l`
partition=`df -h`
mem=`free -m`
system_bit=`uname -a |awk '{print $(NF-1)}'`
realese=`cat /etc/redhat-release`
network=`ifconfig`

echo "	

CPU model name :$CPU_model
CPU cores : $CPU_cores
memory : 
$mem

partition :
$partition

network info :
$network

OS : $realese
OS bit : $system_bit

" >> system_info.txt

echo -e "
CPU model name :\e[35m$CPU_model\e[m 
CPU cores : \e[35m$CPU_cores\e[m
memory : 
\e[35m$mem\e[m

partition :
\e[35m$partition\e[m

network info : 
\e[35m$network\e[m

OS : \e[35m$realese\e[m
OS bit : \e[35m$system_bit\e[m



