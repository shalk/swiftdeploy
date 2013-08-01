#create user
#step 1
adduser swift 
echo swift | passwd swift --stdin
#update software 
#step 2
apt-get update
apt-get  -y install swift openssh-server rsync memcached python-netifaces python-xattr python-memcache
#create directory
#step 3
mkdir -p /etc/swift
chown -R swift:swift /etc/swift/
#create  configuration 
#step 4
cat >>/etc/swift/swift.conf  <<EOF
[swift-hash]
# random unique string that can never change (DO NOT LOSE)
swift_hash_path_suffix = `od -t x8 -N 8 -A n </dev/random`
EOF
