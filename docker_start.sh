sudo docker run \
    -i -t \
    -p 80:80 \
    -p 222:22 \
    -p 3306:3306 \
    -p 9000:9000 \
    -v /home/tim/proj/docker/symfony/htdocs:/var/www \
    -v /home/tim/proj/docker/symfony/shared/mysql_databases:/var/lib/mysql \
    dev
