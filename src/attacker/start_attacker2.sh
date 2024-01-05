!/bin/bash

systemctl stop NetworkManager
systemctl stop firewalld
systemctl disable firewalld

ifconfig eth3 23.214.219.130 netmask 255.255.255.128
route add -net 192.168.10.0/24 gw 23.214.219.254

# Allows IP packet forwarding
sysctl -w net.ipv4.ip_forward=1
