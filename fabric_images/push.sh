#! /bin/bash

docker tag hyperledger/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c
docker tag hyperledger/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c
docker tag hyperledger/fabric-javaenv:x86_64-1.0.0-snapshot-2289034 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-2289034
docker tag hyperledger/fabric-ccenv:x86_64-1.0.0-snapshot-2289034 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-2289034
docker tag hyperledger/fabric-baseimage:x86_64-0.3.0 192.168.23.228:5000/fabric-baseimage:x86_64-0.3.0
docker tag hyperledger/fabric-baseos:x86_64-0.3.0 192.168.23.228:5000/fabric-baseos:x86_64-0.3.0



docker push 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-9e40c3c
docker push 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-9e40c3c
docker push 192.168.23.228:5000/fabric-javaenv:x86_64-1.0.0-snapshot-2289034
docker push 192.168.23.228:5000/fabric-ccenv:x86_64-1.0.0-snapshot-2289034
docker push 192.168.23.228:5000/fabric-baseimage:x86_64-0.3.0
docker push 192.168.23.228:5000/fabric-baseos:x86_64-0.3.0



