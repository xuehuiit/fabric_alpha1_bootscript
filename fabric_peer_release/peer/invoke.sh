#!/bin/bash

WORKDIR=$PWD/../

#cd /opt/gopath/src/github.com/hyperledger/fabric/peer
cd $WORKDIR/workdir
export set PATH=$PATH:$WORKDIR/bin/

export set CORE_PEER_ADDRESSAUTODETECT=true
export set CORE_LOGGING_LEVEL=DEBUG
export set CORE_NEXT=true
export set CORE_PEER_ENDORSER_ENABLED=true
export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true
export set CORE_PEER_GOSSIP_ORGLEADER=true
export set CORE_PEER_ID=peer0
export set CORE_PEER_ADDRESS=10.1.21.75:7051
export set CORE_PEER_GOSSIP_EXTERNALENDPOINT=10.1.21.75:7051
#export set CORE_PEER_COMMITTER_LEDGER_ORDERER=192.168.23.147:7050
export set CORE_PEER_MSPCONFIGPATH=$WORKDIR/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1
export set CORE_PEER_LOCALMSPID=PeerOrg1
export set PEER_CFG_PATH=$WORKDIR/cfg_path
#peer chaincode invoke -o 192.168.23.228:7050 -C testChannel1 -n marbles1 -c '{"Args":["transferMarble","marble2","jerry"]}'
peer chaincode invoke -o 10.1.21.75:7050 -C testChannel1 -n marbles1 -c '{"Args":["getHistoryForMarble","marble1"]}'
