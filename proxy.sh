#!/bin/bash
#ÐÞ¸ÄPROXY_IP
#step 1 °ü
apt-get install -y swift-proxy memcached python-keystoneclient  python-webob 
apt-get install -y python-pip python-dev build-essential
pip install --upgrade pip
pip install  python-swiftclient
# step 2
cd /etc/swift
#openssl req -new -x509 -nodes -out cert.crt -keyout cert.key
# need expect script

#step 3
perl -p -i -e  's/127.0.0.1/PROXY_IP/' /etc/memcached.conf
#step 4
service memcached restart

#step 5
cat >> /etc/swift/proxy-server.conf <<EOF
[DEFAULT]
cert_file = /etc/swift/cert.crt
key_file = /etc/swift/cert.key
bind_port = 8081
bind_ip = PROXY_IP
user = swift
workers = 8

[pipeline:main]
pipeline = healthcheck cache tempauth proxy-server 

[app:proxy-server]
use = egg:swift#proxy
allow_account_management = true
account_autocreate = true

[filter:tempauth]
use = egg:swift#tempauth
user_system_root = testpass .admin https://PROXY_IP:8081/v1/AUTH_system
user_admin_admin = admin .admin .reseller_admin
user_test_tester = testing .admin

[filter:healthcheck]
use = egg:swift#healthcheck

[filter:cache]
use = egg:swift#memcache
memcache_servers = PROXY_IP:11211

EOF

#step 6
cd /etc/swift
rm -f *.builder *.ring.gz backups/*.builder backups/*.ring.gz
swift-ring-builder account.builder create 18 3 1
swift-ring-builder container.builder create 18 3 1
swift-ring-builder object.builder create 18 3 1   

bash ring.sh

#step 7

swift-ring-builder account.builder 
swift-ring-builder container.builder 
swift-ring-builder object.builder 
swift-ring-builder account.builder rebalance 
swift-ring-builder container.builder rebalance
swift-ring-builder object.builder rebalance 
chown -R swift:swift /etc/swift/*

#step 8
scp /etc/swift/*.gz root@10.0.33.240:/etc/swift/ 
scp /etc/swift/*.gz root@10.0.33.241:/etc/swift/ 
scp /etc/swift/*.gz root@10.0.33.242:/etc/swift/ 


