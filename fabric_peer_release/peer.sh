#!/bin/bash

WORKDIR=$PWD

function printHelp {

   echo "Usage: "
   echo " ./peer.sh [opt] [value] "
   echo "    -p: peer id, default=peer0"
   echo "    -l: listen address, default=0.0.0.0:7051"
   echo "    -g: gossip externalendpoint, default=0.0.0.0:7051"
   echo "    -o: order ip address, default=0.0.0.0:7050"
   echo "    -m: msp path, default=$WORKDIR/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1"
   echo "    -O: Organization, default=PeerOrg1"
   echo " "
   echo " example: "
   echo " ./peer.sh -p peer0  -l 172.16.10.81:7051 -g 172.16.10.81:7051 -o 172.16.10.82:7050 -m $WORKDIR/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1 -O PeerOrg1 "
   exit
}

#defaults
PEER_ID="peer0"
LISTEN_IP="0.0.0.0:7051"
GOSSIP="0.0.0.0:7051"
ORDER="0.0.0.0:7050"
MSP_PATH="$WORKDIR/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1"
ORG="PeerOrg1"

while getopts ":p:l:g:o:m:O:" opt; do
  case $opt in
    # peer environment options
    p)
      PEER_ID=$OPTARG
      echo "Peer Id: $PEER_ID"
      ;;

    l)
      LISTEN_IP=$OPTARG
      echo "Listen Ip: $LISTEN_IP"
      ;;

    g)
      GOSSIP=$OPTARG
      echo "GOSSIP: $GOSSIP"
      ;;

    o)
      ORDER=$OPTARG
      echo "order : $ORDER"
      ;;

    m)
      MSP_PATH=$OPTARG
      echo "msp path: $MSP_PATH"
      ;;

    O)
      ORG=$OPTARG
      echo "msp id: $ORG"
      ;;

    # else
    \?)
      echo "Invalid option: -$OPTARG" >&2
      printHelp
      ;;

    :)
      echo "Option -$OPTARG requires an argument." >&2
      printHelp
      ;;

  esac
done

cd $WORKDIR/workdir
export set PATH=$PATH:$WORKDIR/bin/
export set CORE_VM_ENDPOINT=http://0.0.0.0:2375
#export set CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
export set CORE_PEER_ADDRESSAUTODETECT=true
export set CORE_LOGGING_LEVEL=DEBUG
export set CORE_NEXT=true
export set CORE_PEER_ENDORSER_ENABLED=true
export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true
export set CORE_PEER_GOSSIP_ORGLEADER=true
export set CORE_PEER_ID=$PEER_ID
export set CORE_PEER_ADDRESS=$LISTEN_IP 
export set CORE_PEER_GOSSIP_EXTERNALENDPOINT=$GOSSIP 
export set CORE_PEER_COMMITTER_LEDGER_ORDERER=$ORDER
export set CORE_PEER_MSPCONFIGPATH=$MSP_PATH
export set CORE_PEER_FILESYSTEMPATH=$WORKDIR/production
export set CORE_PEER_LOCALMSPID=$ORG
export set PEER_CFG_PATH=$WORKDIR/cfg_path


#env
cat > $WORKDIR/peer/env.sh << EOF
export set PATH=$PATH:$WORKDIR/bin/
export set CORE_PEER_ADDRESSAUTODETECT=true
export set CORE_LOGGING_LEVEL=DEBUG
export set CORE_NEXT=true
export set CORE_PEER_ENDORSER_ENABLED=true
export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true
export set CORE_PEER_GOSSIP_ORGLEADER=true
export set CORE_PEER_ID=$PEER_ID
export set CORE_PEER_ADDRESS=$LISTEN_IP
export set CORE_PEER_GOSSIP_EXTERNALENDPOINT=$GOSSIP
export set CORE_PEER_COMMITTER_LEDGER_ORDERER=$ORDER
export set CORE_PEER_MSPCONFIGPATH=$MSP_PATH
export set CORE_PEER_FILESYSTEMPATH=$WORKDIR/production
export set CORE_PEER_LOCALMSPID=$ORG
export set PEER_CFG_PATH=$WORKDIR/cfg_path
EOF

#create
cat > $WORKDIR/peer/create.sh << EOF
#!/bin/bash

WORKDIR=$PWD/../

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
export set CORE_PEER_COMMITTER_LEDGER_ORDERER=$ORDER
export set CORE_PEER_MSPCONFIGPATH=$MSP_PATH
export set CORE_PEER_LOCALMSPID=$ORG
export set PEER_CFG_PATH=$WORKDIR/cfg_path
peer channel create -o $ORDER -c testChannel1 -f $WORKDIR/msp/crypto-config/ordererOrganizations/testChannel1.tx
EOF



peer node start --peer-defaultchain=false >log.log 2>&1 &
