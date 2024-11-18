#!/bin/bash

###### INSTALL DOCKER on ALMALINUX 8 ######
sudo dnf -y update
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2
sudo dnf remove -y podman podman-* runc
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io
sudo systemctl enable --now docker

sudo docker --version

###### INSTALL VESTACP on Ubuntu 16.04 via DOCKER AND START #######
docker pull ji4a/vestacp

docker run -d --restart=always \
  -p 3322:22 -p 80:80 -p 443:443 -p 8083:8083 \
  -v /opt/vestacp/vesta:/vesta -v /opt/vestacp/home:/home -v /opt/vestacp/backup:/backup \
  --name vesta-C7 \
  ji4a/vestacp

sleep 22

sudo docker exec vesta-C7 /usr/local/vesta/bin/v-change-user-password admin Money22
sudo docker exec vesta-C7 sh -c "echo 'FILEMANAGER_KEY=ILOVEREO' >> /usr/local/vesta/conf/vesta.conf"

echo "VestaCP is now installed, activated, and configured with the custom FILEMANAGER_KEY."
