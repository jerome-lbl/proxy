#!/bin/bash

ip=`host messagerie.ac-versailles.fr|grep " has address "|cut -d" " -f4`

echo $ip

echo ${ip:0:6}

if [ "${ip:0:6}" = "172.31" ]
then
	echo "Réseau local"
	ssh -L ${HOSTNAME}:3128:proxyng.in.ac-versailles.fr:8080 -CfN ngmdev@groli3.in.ac-versailles.fr
	service stop squid
else
	echo "Réseau internet"
fi
