#!/bin/bash

setNginx=0;
setSrc=0
setDb=0

while test $# -gt 0; do
    case "$1" in
        --nginx) setNginx=1
        ;;
        --src) setSrc=1
        ;;
        --db) setDb=1
        ;;
        --all) setNginx=1 setDb=1 setSrc=1
        ;;
    esac
    shift
done


if [ "$setNginx" -eq 0 ] && [ "$setSrc" -eq 0 ] && [ "$setDb" -eq 0 ]
then
    echo "Use parameter(s) to do something:"
    echo "./make.sh [--nginx] [--db] [--src] [--all]"
    exit
fi


if [ "$setNginx" -eq ]
then
    echo
    echo "ADD VIRTUAL SERVER TO NGINX"
    sudo cp nginx.cfg /etc/nginx/sites-enabled/yomayka.loc
    sudo sed -i "2i127.0.0.1	yomayka.loc" /etc/hosts
    sudo service nginx restart
    echo "-----------------------"
fi


if [ "$setSrc" -eq 1 ]
then
    echo
    echo "SET PERMISSIONS TO PROJECT SOURCES"
    sudo chmod 0775 -R ./src
    sudo chown andrey:www-data -R ./src
    echo "-----------------------"
fi


if [ "$setDb" -eq 1 ]
then
    echo
    echo "CREATE DB AND USER"
    mysql -uroot -p7117407 < mysql.script
    echo "-----------------------"
    echo
    echo "RESTORE DB FROM DUMP"
    mysql -uroot -p7117407 < db/current.sql
    echo "-----------------------"
fi
