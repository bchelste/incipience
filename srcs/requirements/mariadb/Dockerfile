FROM debian:buster
RUN apt-get update
RUN apt install -y mariadb-server default-mysql-server
COPY tools/db_setup.sh /
RUN chmod 777 /db_setup.sh
COPY tools/wp_dump.sql /
RUN chmod 777 /wp_dump.sql
EXPOSE 3306
VOLUME ["/var/lib/mysql"]
COPY conf/my.cnf /etc/mysql/my.cnf
ENTRYPOINT ["/db_setup.sh"]
