#!/bin/bash
touch /etc/ssr-config.json  
echo '{
    "server": "0.0.0.0",
    "server_ipv6": "::",
    "server_port": 8388,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "123456",
    "timeout": 120,
    "method": "aes-256-cfb",
    "protocol": "origin",
    "protocol_param": "",
    "obfs": "plain",
    "obfs_param": "",
    "redirect": "",
    "dns_ipv6": false,
    "fast_open": false,
    "workers": 1
}' > /etc/ssr-config.json
sudo chmod 755 /etc/ssr-config.json
sudo apt-get update
apt-get -y install m2crypto git
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
python /shadowsocks/shadowsocks/server.py -c /etc/ssr-config.json  -d start
sed -i '2a python /shadowsocks/shadowsocks/server.py -c /etc/ssr-config.json  -d start' /etc/rc.local
