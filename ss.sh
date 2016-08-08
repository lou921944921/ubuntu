#!/bin/bash
touch /etc/ss-config.json  
echo '{
    "server": "0.0.0.0",
    "local_port": 1080,
    {
    "137":"123456",
    "138":"123456",
    "139":"123456",
    },
    "timeout": 600,
    "method": "aes-256-cfb"
}' > /etc/ss-config.json
chmod 755 /etc/ss-config.json
apt-get update
apt-get -y install python-gevent python-pip 
pip install shadowsocks
apt-get install python-m2crypto
ssserver -c /etc/ss-config.json -d start
sed -i '2a ssserver -c /etc/ss-config.json -d start' /etc/rc.local
