#!/bin/bash

sudo apt update -y

sudo apt install curl -y

sudo apt install net-tools -y

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --node-ip=192.168.56.110 --advertise-address=192.168.56.110 --tls-san 192.168.56.110" sh -

cp /var/lib/rancher/k3s/server/node-token /vagrant/conf

cp /etc/rancher/k3s/k3s.yaml /vagrant/conf

su vagrant

echo "alias k='sudo k3s kubectl'" >> ~/.bashrc
echo 'export PATH=$PATH:/sbin' >> ~/.bashrc

source ~/.bashrc
