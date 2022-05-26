FROM debian:buster
RUN apt-get update
RUN apt-get install -y php php7.3-mysql php7.3-fpm wget
COPY tools/wp_start.sh /
RUN chmod +x /wp_start.sh
COPY /conf/wp-config.php /
COPY /conf/www.conf /
VOLUME ["/var/www/html"]
EXPOSE 9000
CMD ["/wp_start.sh"]
