#!/bin/bash

WORKDIR=$PWD

#cd /opt/gopath/src/github.com/hyperledger/fabric
cd $WORKDIR/workdir

export set PATH=$PATH:/$WORKDIR/bin/
export set ORDERER_GENERAL_MAXWINDOWSIZE=1000 
export set ORDERER_GENERAL_MAXMESSAGECOUNT=10 
export set ORDERER_GENERAL_BATCHTIMEOUT=10s 
export set ORDERER_GENERAL_LISTENPORT=7050 
export set ORDERER_RAMLEDGER_HISTORY_SIZE=100 
export set ORDERER_GENERAL_LEDGERTYPE=file
export set ORDERER_GENERAL_LOGLEVEL=debug
export set ORDERER_GENERAL_LISTENADDRESS=0.0.0.0
export set ORDERER_GENERAL_GENESISMETHOD=file
export set ORDERER_GENERAL_GENESISFILE=$WORKDIR/msp/crypto-config/ordererOrganizations/orderer.block
export set ORDERER_GENERAL_LOCALMSPID=OrdererOrg1
export set ORDERER_GENERAL_LOCALMSPDIR=$WORKDIR/msp/crypto-config/ordererOrganizations/ordererOrg1/orderers/ordererOrg1Orderer1
export set ORDERER_CFG_PATH=$WORKDIR/cfg_path
#orderer >&orderer.log 2>&1 
orderer
