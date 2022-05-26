#!/bin/bash
mkdir -p /var/www/html
chmod -R 777 /var/www/html
mkdir tmp_dir
cd tmp_dir
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz -C /
mv /wordpress/* /var/www/html/
rm -rf ./*
mv /wp-config.php /var/www/html/wp-config.php
mv /www.conf /etc/php/7.3/fpm/pool.d/www.conf
service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 --nodaemonize
