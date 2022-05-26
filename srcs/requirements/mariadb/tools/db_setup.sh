#!/bin/bash

service mysql start
if [ ! -d /var/lib/mysql/wordpress ]; then
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MARIA_DB_NAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$MARIA_DB_USER'@'%' IDENTIFIED BY '$MARIA_DB_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MARIA_DB_NAME.* TO '$MARIA_DB_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $MARIA_DB_ROOT_PASSWORD
mysql -u root --password=$MARIA_DB_ROOT $MARIA_DB_NAME < /wp_dump.sql
fi
mysqladmin -u root --password=$MARIA_DB_ROOT_PASSWORD shutdown

/usr/sbin/mysqld

