#!/bin/bash
sudo apt-get update
sudo apt-get install python-gevent python-pip &&y
pip install shadowsocks
touch /etc/ss-config.json  
cat '{"server":"0.0.0.0" "server_port":8388 "local_port":1080 "password":"123456" "timeout":600 "method":"aes-256-cfb"}' > /etc/ss-config.json
/usr/local/bin/ssserver -c /etc/ss-config.json
sed -i '1a /usr/local/bin/ssserver -c /etc/ss-config.json' /etc/rc.local
