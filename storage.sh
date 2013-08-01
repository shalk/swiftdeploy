#
#
# 需要将 STORAGE_IP替换成本机IP 

disklist="sdb sdc sdd sde sdf sdg sdh sdi sdj sdk sdl sdm"
#step 1
apt-get install -y swift-account swift-container swift-object xfsprogs
#step 2
for disk in $disklist
do
for 
fdisk /dev/$disk <<EOF
n
p
1


w
EOF
mkfs.xfs -i size=1024 /dev/${disk}1

uuid=`blkid | grep $disk |  perl   -lane ' print $1  if /UUID=\"(.*?)\"/'`
echo "UUID=$uuid /srv/node/$disk xfs noatime,nodiratime,nobarrier,logbufs=8 0
 0" >> /etc/fstab
mkdir -p /srv/node/${disk}1
mount UUID=$uuid /srv/node/${disk}1
done
chown -R swift:swift /srv/node

#step 3
cat  >>/etc/rsyncd.conf  <<EOF
uid = swift
gid = swift
log file = /var/log/rsyncd.log
pid file = /var/run/rsyncd.pid
address = STORAGE_IP 
[account]
max connections = 2
path = /srv/node/
read only = false
lock file = /var/lock/account.lock
[container]
max connections = 2
path = /srv/node/
read only = false
lock file = /var/lock/container.lock
[object]
max connections = 2
path = /srv/node/
read only = false
lock file = /var/lock/object.lock   
EOF


#step 4
perl -p -i -e 's/RSYNC_ENABLE=false/RSYNC_ENABLE=true/' /etc/default/rsync

#step 5
service rsync start
#step 6

mkdir -p /var/swift/recon 
chown -R swift:swift /var/swift/recon 

#step 7
cd /etc/swift

cat >> account-server.conf <<EOF
[DEFAULT] 
bind_ip = STORAGE_IP 
workers = 2 
 
[pipeline:main] 
pipeline = account-server 
 
[app:account-server] 
use = egg:swift#account 
 
[account-replicator] 
 
[account-auditor] 
 
[account-reaper] 

EOF

cat >> container-server.conf <<EOF

[DEFAULT] 
bind_ip = STROAGE_IP 
workers = 2 
 
[pipeline:main] 
pipeline = container-server 
 
[app:container-server] 
use = egg:swift#container 
 
[container-replicator] 
 
[container-updater] 
 
[container-auditor] 
 

EOF

 
cat >> object-server.conf  <<EOF
[DEFAULT] 
bind_ip = STORAGE_IP 
workers = 2 
 
[pipeline:main] 
pipeline = object-server 
 
[app:object-server] 
use = egg:swift#object 
 
[object-replicator] 
 
[object-updater] 
 
[object-auditor] 
 
 
EOF


 
 
 