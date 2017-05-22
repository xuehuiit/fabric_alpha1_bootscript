#!/bin/bash

WORKDIR=/home/fabric_peer_release/workdir/../

cd /home/fabric_peer_release/workdir
export set PATH=/usr/local/jdk1.8.0_131//bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/fabric_peer_release/bin/:/home/fabric_peer_release/bin/:/home/fabric_peer_release/bin/:/home/fabric_peer_release/bin/:/home/fabric_peer_release/bin/:/home/fabric_peer_release/bin/:/snap/bin:/usr/local/go/bin:/home/shouhewu/goWorkspace/bin:/home/fabric_peer_release/bin/:/home/fabric_peer_release/bin/
export set CORE_PEER_ADDRESSAUTODETECT=true
export set CORE_LOGGING_LEVEL=DEBUG
export set CORE_NEXT=true
export set CORE_PEER_ENDORSER_ENABLED=true
export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true
export set CORE_PEER_GOSSIP_ORGLEADER=true
export set CORE_PEER_ID=peer0
export set CORE_PEER_COMMITTER_LEDGER_ORDERER=10.1.24.241:7050
export set CORE_PEER_MSPCONFIGPATH=/home/fabric_peer_release/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1
export set CORE_PEER_LOCALMSPID=PeerOrg1
export set PEER_CFG_PATH=/home/fabric_peer_release/cfg_path
peer channel create -o 10.1.24.241:7050 -c testChannel1 -f /home/fabric_peer_release/msp/crypto-config/ordererOrganizations/testChannel1.tx
