FROM debian:buster

WORKDIR /

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/nginx/bchelste.key -out /etc/nginx/bchelste.crt \
-subj "/C=RU/ST=MoscowRegion/L=Moscow/O=bchelste/CN=bchelste"
COPY /conf/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/html
RUN chmod -R 777 /var/www/html
VOLUME ["/var/www/html"]
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
