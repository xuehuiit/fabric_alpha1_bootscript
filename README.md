# fabric v alpha 1.0 编译

以下是fabric alpha 1.0 编译过程，因为每个人环境不一样，执行过程可能会有错误，如果有错误请大家到公司Q&A 论坛上贴出问题，我们会抽出时间统一回答。

### 安装其他必须的组件

* Ubuntu 安装

```
apt-get install libltdl-dev
```

* CentOS 安装

```
yum install   -y gcc libtool libltdl-dev libtool-ltdl-devel openssl
```

* Mac 安装
```
brew install libtool openssl
```


1. 下载fabric 源码

git clone https://github.com/hyperledger/fabric.git

2. 进入fabric 目录

3. 执行 make peer orderer 命令

# fabric v alpha 1.0 部署

如果上一步骤没有编译成功，接下来的操作也可以完成，我把编译成功的order，peer 二进制文件 copy到以下目录中：
![Alt text](./images/pic1.png)

在部署节点之前首先做以下操作
1. 拉取镜像
执行fabric_images下pull.sh脚本


### 部署peer

执行fabric_peer_release下peer.sh
```
root@robertrfeng-All-Series:/home/fabric_alpha1_bootscript/fabric_peer_release# ./peer.sh -?
Invalid option: -?
Usage: 
 ./peer.sh [opt] [value] 
    -p: peer id, default=peer0
    -l: listen address, default=0.0.0.0:7051
    -g: gossip externalendpoint, default=0.0.0.0:7051
    -o: order ip address, default=0.0.0.0:7050
    -m: msp path, default=/home/fabric_alpha1_bootscript/fabric_peer_release/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1
    -O: Organization, default=PeerOrg1
 
 example: 
 ./peer.sh -p peer0  -l 172.16.10.81:7051 -g 172.16.10.81:7051 -o 172.16.10.82:7050 -m /home/fabric_alpha1_bootscript/fabric_peer_release/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1 -O PeerOrg1 
 ```

### 部署order

执行fabric_orderer_release下order.sh


### fabrci ca 的部署和运行 





