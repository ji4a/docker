#!/bin/bash

###### INSTALL DOCKER on ALMALINUX 8 ######
sudo dnf -y update
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2
sudo dnf remove -y podman podman-* runc
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io
sudo systemctl enable --now docker

sudo docker --version
