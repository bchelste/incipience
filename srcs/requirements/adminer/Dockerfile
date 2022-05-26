FROM debian:buster

RUN apt-get update

RUN apt-get install -y nginx openssl
RUN apt-get install -y php php7.3-mysql php7.3-fpm php-gd php-cli php-curl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt \
-subj "/C=RU/ST=MoscowRegion/L=Moscow/O=bchelste/CN=bchelste"

COPY /conf/default.conf /etc/nginx/conf.d/default.conf
COPY /tools/adminer.sh /
RUN chmod 777 /adminer.sh
RUN mkdir -p /var/www/adminer
COPY tools/adminer.php /var/www/adminer
RUN chmod -R 777 /var/www/adminer
COPY /conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN service php7.3-fpm start
RUN service php7.3-fpm stop
EXPOSE 9000

CMD ["/adminer.sh"]
