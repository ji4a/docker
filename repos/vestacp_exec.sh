SERVER_IP=$(hostname -I | awk '{print $1}')
DOMAIN_NAME=myworld.com

/usr/local/vesta/bin/v-change-user-password admin Money22
"echo 'FILEMANAGER_KEY=ILOVEREO' >> /usr/local/vesta/conf/vesta.conf"
/usr/local/vesta/bin/v-add-web-domain admin ${SERVER_IP}.${DOMAIN_NAME}

#### DELETE INDEX.HTML AND ROBOTS AND WGET INDEX.PHP ####
rm -rf /home/admin/web/${SERVER_IP}.${DOMAIN_NAME}/public_html/robots.txt
rm -rf /home/admin/web/${SERVER_IP}.${DOMAIN_NAME}/public_html/index.html

wget https://raw.githubusercontent.com/ji4a/php/main/v_index.php -O /home/admin/web/${SERVER_IP}.${DOMAIN_NAME}/public_html/index.php