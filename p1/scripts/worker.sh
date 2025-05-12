#!/bin/bash

sudo apt update -y

sudo apt install curl -y

sudo apt install net-tools -y


curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=$(cat /vagrant/conf/node-token) INSTALL_K3S_EXEC="agent --node-ip=192.168.56.111" sh -

su vagrant
echo "alias k='sudo k3s kubectl'" >>  ~/.bashrc
echo "export PATH=$PATH:/sbin" >>  ~/.bashrc
source ~/.bashrc

