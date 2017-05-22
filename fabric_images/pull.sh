#! /bin/bash

docker pull 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c
docker pull 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c
docker pull 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-2289034
docker pull 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-2289034
docker pull 192.168.23.228:5000/fabric-baseimage:x86_64-0.3.0
docker pull 192.168.23.228:5000/fabric-baseos:x86_64-0.3.0

docker tag 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c hyperledger/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c 
docker tag 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c hyperledger/fabric-javaenv:latest
docker tag 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c hyperledger/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c 
docker tag 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c hyperledger/fabric-ccenv:latest
docker tag 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-2289034 hyperledger/fabric-javaenv:x86_64-1.0.0-snapshot-2289034 
docker tag 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-2289034 hyperledger/fabric-ccenv:x86_64-1.0.0-snapshot-2289034 
docker tag 192.168.23.228:5000/fabric-baseimage:x86_64-0.3.0 hyperledger/fabric-baseimage:x86_64-0.3.0 
docker tag 192.168.23.228:5000/fabric-baseos:x86_64-0.3.0 hyperledger/fabric-baseos:x86_64-0.3.0 
