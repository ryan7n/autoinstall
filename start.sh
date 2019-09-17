#!/bin/sh
apt remove LibreOffice* -y
apt install gnome-tweak-tool 

    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
    sudo apt-get update
    sudo apt-get install google-chrome-stable

    # 如果你过去安装过 docker，先删掉
sudo apt-get remove docker docker-engine docker.io
# 安装依赖
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
# 信任 Docker 的 GPG 公钥
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 对于 amd64 架构的计算机，添加软件仓库:
sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce



apt install php php-cli php-fpm php-xdebug php-redis php-curl net-tools redis-tools mariadb-client-core-10.1


sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   stretch \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo groupadd docker
sudo usermod -aG docker $USER



wget http://kdl.cc.ksosoft.com/wps-community/download/8865/wps-office_11.1.0.8865_amd64.deb

dpkg -i wps-office_11.1.0.8865_amd64.deb;rm wps-office_11.1.0.8865_amd64.deb
