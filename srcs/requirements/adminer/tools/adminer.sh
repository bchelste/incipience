#!/bin/bash
mv /var/www/adminer/adminer.php /var/www/adminer/index.php
service nginx start
/usr/sbin/php-fpm7.3 --nodaemonize

