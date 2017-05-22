fabric v alpha 1.0 编译
以下是fabric alpha 1.0 编译过程，因为每个人环境不一样，执行过程可能会有错误，如果有错误请大家到公司Q&A 论坛上贴出问题，我们会抽出时间统一回答。

以下是Ubuntu 16.4 编译过程
首先安装
apt-get install libltdl-dev


1，下载fabric 源码
git clone https://github.com/hyperledger/fabric.git
2.进入fabric 目录
3.执行 make peer orderer 命令

fabric v alpha 1.0 部署
如果上一步骤没有编译成功，接下来的操作也可以完成，我把编译成功的order，peer 二进制文件 copy到以下目录中：


在部署节点之前首先做以下操作
1，拉取镜像
执行fabric_images下pull.sh脚本


部署peer
执行fabric_peer_release下peer.sh
部署order
执行fabric_orderer_release下order.sh