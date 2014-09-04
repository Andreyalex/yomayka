#!/bin/bash

echo
echo "ADD VIRTUAL SERVER TO NGINX"
sudo cp nginx.cfg /etc/nginx/sites-enabled/yomayka.loc
sudo sed -i "2i127.0.0.1	yomayka.loc" /etc/hosts
sudo service nginx restart
echo "-----------------------"

echo
echo "SET PERMISSIONS TO PROJECT SOURCES"
sudo chmod 0775 -R ./src
sudo chown andrey:www-data -R ./src
echo "-----------------------"

echo
echo "CREATE DB AND USER"
mysql -uroot -p7117407 < mysql.script
echo "-----------------------"

echo
echo "RESTORE DB FROM DUMP"
mysql -uroot -p7117407 < db/current.sql
echo "-----------------------"
