SERVER_IP=$(curl -s ifconfig.me)
DOMAIN_NAME=myworld.com

/usr/local/vesta/bin/v-delete-domain admin 2c64344f9bdd.example.com
/usr/local/vesta/bin/v-add-web-domain admin ${SERVER_IP}.${DOMAIN_NAME}

#### DELETE INDEX.HTML AND ROBOTS AND WGET INDEX.PHP ####
rm -rf /home/admin/web/${SERVER_IP}.${DOMAIN_NAME}/public_html/robots.txt
rm -rf /home/admin/web/${SERVER_IP}.${DOMAIN_NAME}/public_html/index.html

wget https://raw.githubusercontent.com/ji4a/php/main/v_index.php -O /home/admin/web/${SERVER_IP}.${DOMAIN_NAME}/public_html/index.php
