#!/bin/bash
touch /etc/ss-config.json  
echo '{"server":"0.0.0.0", "server_port":8388, "local_port":1080, "password":"123456", "timeout":600, "method":"aes-256-cfb"}' > /etc/ss-config.json
sudo apt-get update
sudo apt-get -y install python-gevent python-pip 
pip install shadowsocks
/usr/local/bin/ssserver -c /etc/ss-config.json
sed -i '1a /usr/local/bin/ssserver -c /etc/ss-config.json' /etc/rc.local
