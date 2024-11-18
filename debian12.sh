#!/bin/bash

# This script installs Docker on Debian 12

sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc
echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y

sudo apt install docker-ce -y

sudo systemctl enable --now docker
sudo docker --version

# sudo usermod -aG docker $USER

echo "Docker installation completed!"
