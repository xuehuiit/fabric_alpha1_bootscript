#!/bin/bash


WORKDIR=$PWD/../

#cd /opt/gopath/src/github.com/hyperledger/fabric/peer
cd $WORKDIR/workdir

export set CORE_PEER_ADDRESSAUTODETECT=true
export set PATH=$PATH:$WORKDIR/bin
export set CORE_LOGGING_LEVEL=DEBUG
export set CORE_NEXT=true
export set CORE_PEER_ENDORSER_ENABLED=true
export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true
export set CORE_PEER_GOSSIP_ORGLEADER=true
export set CORE_PEER_ID=peer0
export set CORE_PEER_COMMITTER_LEDGER_ORDERER=10.1.24.241:7050
export set CORE_PEER_MSPCONFIGPATH=$WORKDIR/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1
export set CORE_PEER_LOCALMSPID=PeerOrg1
export set PEER_CFG_PATH=$WORKDIR/cfg_path
peer channel join -b $WORKDIR/workdir/testChannel1.block  
