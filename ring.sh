#!/bin/bash
cd /etc/swift
IP1="20.20.20.1"
IP2="20.20.20.2"
IP3="20.20.20.3"

swift-ring-builder account.builder add z1-${IP1}:6002/sdb1 100
swift-ring-builder account.builder add z1-${IP1}:6002/sdc1 100
swift-ring-builder account.builder add z1-${IP1}:6002/sdd1 100
swift-ring-builder account.builder add z1-${IP1}:6002/sde1 100
swift-ring-builder account.builder add z1-${IP1}:6002/sdf1 100
swift-ring-builder account.builder add z1-${IP1}:6002/sdg1 100
swift-ring-builder account.builder add z2-${IP1}:6002/sdh1 100
swift-ring-builder account.builder add z2-${IP1}:6002/sdi1 100
swift-ring-builder account.builder add z2-${IP1}:6002/sdj1 100
swift-ring-builder account.builder add z2-${IP1}:6002/sdk1 100
swift-ring-builder account.builder add z2-${IP1}:6002/sdl1 100
swift-ring-builder account.builder add z2-${IP1}:6002/sdm1 100
 
swift-ring-builder container.builder add z1-${IP1}:6001/sdb1 100
swift-ring-builder container.builder add z1-${IP1}:6001/sdc1 100
swift-ring-builder container.builder add z1-${IP1}:6001/sdd1 100
swift-ring-builder container.builder add z1-${IP1}:6001/sde1 100
swift-ring-builder container.builder add z1-${IP1}:6001/sdf1 100
swift-ring-builder container.builder add z1-${IP1}:6001/sdg1 100
swift-ring-builder container.builder add z2-${IP1}:6001/sdh1 100
swift-ring-builder container.builder add z2-${IP1}:6001/sdi1 100
swift-ring-builder container.builder add z2-${IP1}:6001/sdj1 100
swift-ring-builder container.builder add z2-${IP1}:6001/sdk1 100
swift-ring-builder container.builder add z2-${IP1}:6001/sdl1 100
swift-ring-builder container.builder add z2-${IP1}:6001/sdm1 100

swift-ring-builder object.builder add z1-${IP1}:6000/sdc1 100
swift-ring-builder object.builder add z1-${IP1}:6000/sdb1 100
swift-ring-builder object.builder add z1-${IP1}:6000/sdd1 100
swift-ring-builder object.builder add z1-${IP1}:6000/sde1 100
swift-ring-builder object.builder add z1-${IP1}:6000/sdf1 100
swift-ring-builder object.builder add z1-${IP1}:6000/sdg1 100
swift-ring-builder object.builder add z2-${IP1}:6000/sdh1 100
swift-ring-builder object.builder add z2-${IP1}:6000/sdi1 100
swift-ring-builder object.builder add z2-${IP1}:6000/sdj1 100
swift-ring-builder object.builder add z2-${IP1}:6000/sdk1 100
swift-ring-builder object.builder add z2-${IP1}:6000/sdl1 100
swift-ring-builder object.builder add z2-${IP1}:6000/sdm1 100


swift-ring-builder account.builder add z3-${IP2}:6002/sdb1 100
swift-ring-builder account.builder add z3-${IP2}:6002/sdc1 100
swift-ring-builder account.builder add z3-${IP2}:6002/sdd1 100
swift-ring-builder account.builder add z3-${IP2}:6002/sde1 100
swift-ring-builder account.builder add z3-${IP2}:6002/sdf1 100
swift-ring-builder account.builder add z3-${IP2}:6002/sdg1 100
swift-ring-builder account.builder add z4-${IP2}:6002/sdh1 100
swift-ring-builder account.builder add z4-${IP2}:6002/sdi1 100
swift-ring-builder account.builder add z4-${IP2}:6002/sdj1 100
swift-ring-builder account.builder add z4-${IP2}:6002/sdk1 100
swift-ring-builder account.builder add z4-${IP2}:6002/sdl1 100
swift-ring-builder account.builder add z4-${IP2}:6002/sdm1 100
 
swift-ring-builder container.builder add z3-${IP2}:6001/sdb1 100
swift-ring-builder container.builder add z3-${IP2}:6001/sdc1 100
swift-ring-builder container.builder add z3-${IP2}:6001/sdd1 100
swift-ring-builder container.builder add z3-${IP2}:6001/sde1 100
swift-ring-builder container.builder add z3-${IP2}:6001/sdf1 100
swift-ring-builder container.builder add z3-${IP2}:6001/sdg1 100
swift-ring-builder container.builder add z4-${IP2}:6001/sdh1 100
swift-ring-builder container.builder add z4-${IP2}:6001/sdi1 100
swift-ring-builder container.builder add z4-${IP2}:6001/sdj1 100
swift-ring-builder container.builder add z4-${IP2}:6001/sdk1 100
swift-ring-builder container.builder add z4-${IP2}:6001/sdl1 100
swift-ring-builder container.builder add z4-${IP2}:6001/sdm1 100

swift-ring-builder object.builder add z3-${IP2}:6000/sdc1 100
swift-ring-builder object.builder add z3-${IP2}:6000/sdb1 100
swift-ring-builder object.builder add z3-${IP2}:6000/sdd1 100
swift-ring-builder object.builder add z3-${IP2}:6000/sde1 100
swift-ring-builder object.builder add z3-${IP2}:6000/sdf1 100
swift-ring-builder object.builder add z3-${IP2}:6000/sdg1 100
swift-ring-builder object.builder add z4-${IP2}:6000/sdh1 100
swift-ring-builder object.builder add z4-${IP2}:6000/sdi1 100
swift-ring-builder object.builder add z4-${IP2}:6000/sdj1 100
swift-ring-builder object.builder add z4-${IP2}:6000/sdk1 100
swift-ring-builder object.builder add z4-${IP2}:6000/sdl1 100
swift-ring-builder object.builder add z4-${IP2}:6000/sdm1 100



swift-ring-builder account.builder add z5-${IP3}:6002/sdb1 100
swift-ring-builder account.builder add z5-${IP3}:6002/sdc1 100
swift-ring-builder account.builder add z5-${IP3}:6002/sdd1 100
swift-ring-builder account.builder add z5-${IP3}:6002/sde1 100
swift-ring-builder account.builder add z5-${IP3}:6002/sdf1 100
swift-ring-builder account.builder add z5-${IP3}:6002/sdg1 100
swift-ring-builder account.builder add z6-${IP3}:6002/sdh1 100
swift-ring-builder account.builder add z6-${IP3}:6002/sdi1 100
swift-ring-builder account.builder add z6-${IP3}:6002/sdj1 100
swift-ring-builder account.builder add z6-${IP3}:6002/sdk1 100
swift-ring-builder account.builder add z6-${IP3}:6002/sdl1 100
swift-ring-builder account.builder add z6-${IP3}:6002/sdm1 100
 
swift-ring-builder container.builder add z5-${IP3}:6001/sdb1 100
swift-ring-builder container.builder add z5-${IP3}:6001/sdc1 100
swift-ring-builder container.builder add z5-${IP3}:6001/sdd1 100
swift-ring-builder container.builder add z5-${IP3}:6001/sde1 100
swift-ring-builder container.builder add z5-${IP3}:6001/sdf1 100
swift-ring-builder container.builder add z5-${IP3}:6001/sdg1 100
swift-ring-builder container.builder add z6-${IP3}:6001/sdh1 100
swift-ring-builder container.builder add z6-${IP3}:6001/sdi1 100
swift-ring-builder container.builder add z6-${IP3}:6001/sdj1 100
swift-ring-builder container.builder add z6-${IP3}:6001/sdk1 100
swift-ring-builder container.builder add z6-${IP3}:6001/sdl1 100
swift-ring-builder container.builder add z6-${IP3}:6001/sdm1 100

swift-ring-builder object.builder add z5-${IP3}:6000/sdc1 100
swift-ring-builder object.builder add z5-${IP3}:6000/sdb1 100
swift-ring-builder object.builder add z5-${IP3}:6000/sdd1 100
swift-ring-builder object.builder add z5-${IP3}:6000/sde1 100
swift-ring-builder object.builder add z5-${IP3}:6000/sdf1 100
swift-ring-builder object.builder add z5-${IP3}:6000/sdg1 100
swift-ring-builder object.builder add z6-${IP3}:6000/sdh1 100
swift-ring-builder object.builder add z6-${IP3}:6000/sdi1 100
swift-ring-builder object.builder add z6-${IP3}:6000/sdj1 100
swift-ring-builder object.builder add z6-${IP3}:6000/sdk1 100
swift-ring-builder object.builder add z6-${IP3}:6000/sdl1 100
swift-ring-builder object.builder add z6-${IP3}:6000/sdm1 100

swift-ring-builder account.builder rebalance
swift-ring-builder container.builder rebalance
swift-ring-builder object.builder rebalance
scp /etc/swift/*.gz ${IP1}:/etc/swift/
scp /etc/swift/*.gz ${IP2}:/etc/swift/
