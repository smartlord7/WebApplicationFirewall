#!/bin/bash

systemctl stop NetworkManager
systemctl stop firewalld
systemctl disable firewalld

ifconfig enp0s9 23.214.219.254 netmask 255.255.255.128
ifconfig enp0s10 192.168.10.254 netmask 255.255.255.0

# Allows IP packet forwarding
sysctl -w net.ipv4.ip_forward=1
