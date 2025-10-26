#!/bin/bash

service tor stop
#systemctl disable --now tor

iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

nano /etc/resolv.conf
echo "nameserver 8.8.8.8"
echo "nameserver 8.8.4.4"


