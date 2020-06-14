#!/bin/bash

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

curl -k -O -L https://download.docker.com/linux/ubuntu/dists/eoan/pool/stable/amd64/containerd.io_1.2.13-1_amd64.deb
curl -k -O -L https://download.docker.com/linux/ubuntu/dists/eoan/pool/stable/amd64/docker-ce-cli_19.03.8~3-0~ubuntu-eoan_amd64.deb
curl -k -O -L https://download.docker.com/linux/ubuntu/dists/eoan/pool/stable/amd64/docker-ce_19.03.8~3-0~ubuntu-eoan_amd64.deb
sudo apt install ./containerd.io_1.2.13-1_amd64.deb
sudo apt install ./docker-ce-cli_19.03.8~3-0~ubuntu-eoan_amd64.deb
sudo apt install ./docker-ce_19.03.8~3-0~ubuntu-eoan_amd64.deb

sudo apt install containerd -y

sudo apt install docker.io -y

sudo apt install docker-compose -y

alias docker='sudo docker'
