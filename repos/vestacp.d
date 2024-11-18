###### INSTALL VESTACP on Ubuntu 16.04 via DOCKER AND START #######
docker pull ji4a/vestacp

docker run -d --restart=always \
  -p 3322:22 -p 80:80 -p 443:443 -p 8083:8083 \
  --name vesta-CP \
  ji4a/vestacp

sleep 2

sudo docker exec vesta-CP /usr/local/vesta/bin/v-change-user-password admin Money22
sudo docker exec vesta-CP sh -c "echo 'FILEMANAGER_KEY=ILOVEREO' >> /usr/local/vesta/conf/vesta.conf"

echo "VestaCP is now installed, activated, and configured with the custom FILEMANAGER_KEY."
