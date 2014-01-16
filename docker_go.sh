#!/bin/bash

vmname="dev_ubuntu"
port_http=80
port_ssh=222
port_mysql=3306
port_xdebug=9000

# just change above
pwd=`pwd`
dockerfile="$pwd/Dockerfile"

if [ ! -f $dockerfile ]
then
    echo "File '$dockerfile' doesnt exists."
    exit 1
fi

if [ ! `sudo docker images | grep $vmname` ]
then
    echo "Prepare to Build Docker VM"
    sudo docker build -t=$vmname .
fi

sudo docker run \
    -i -t \
    -p $port_http:80 \
    -p $port_ssh:22 \
    -p $port_mysql:3306 \
    -v $pwd/htdocs:/var/www \
    -v $pwd/shared/mysql_databases:/var/lib/mysql \
    $vmname

exit 0
