#!/bin/sh

echo 'Setting static IP(161.100.6.10) address for Hyper-V'

cat << EOF > /etc/sysconfig/network-scripts/ifcfg-eth0
DEVICE=eth0
BOOTPROTO=none
ONBOOT=yes
PREFIX=24
IPADDR=161.100.6.10
GATEWAY=161.100.6.1
DNS1=8.8.8.8
EOF