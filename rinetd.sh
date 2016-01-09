#!/bin/bash
sudo apt-get update
apt-get install rinetd
sed -i '1a 0.0.0.0 443 192.184.12.180 443' /etc/rinetd.conf
pkill rinetd  
rinetd -c /etc/rinetd.conf
sed -i '1a /usr/sbin/rinetd -c /etc/rinetd.conf' /etc/rc.local
