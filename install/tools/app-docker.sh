#!/bin/bash

# https://docs.docker.com/engine/install/ubuntu/
# install all the dependencies for docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y

# add docker official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker-engine
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# runnind docker with my correct user
sudo usermod -aG docker $USER
