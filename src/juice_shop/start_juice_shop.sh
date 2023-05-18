#!/bin/bash

systemctl stop NetworkManager
systemctl stop firewalld
systemctl disable firewalld

ifconfig enp0s10 192.168.10.1 netmask 255.255.255.0
route add -net 23.214.219.128/25 gw 192.168.10.254

# Allows IP packet forwarding
sysctl -w net.ipv4.ip_forward=1
