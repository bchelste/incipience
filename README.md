# incipience
____
It was necessary to deploy an infrastructure that included several services: Nginx, WordPress + php-fpm, MariaDB, Adminer. Each service must reside in Docker containers and be able to communicate with other containers. Container images must be written by hand.
____
+ this project had to be done on a virtual machine (i used VirtualBox).
+ Makefile sets up entire application (builds the Docker images using docker-compose.yml).
____

:large_blue_diamond: A Docker container that contains NGINX with TLSv1.3

:large_blue_diamond: A Docker container that contains WordPress + php-fpm (it must be installed and configured) only 
without nginx.

:large_blue_diamond: A Docker container that contains MariaDB only without nginx.

:large_blue_diamond: A volume that contains your WordPress database.

:large_blue_diamond: A second volume that contains your WordPress website files.

:large_blue_diamond: A docker-network that establishes the connection between your containers.
____

![screenshot](https://github.com/bchelste/incipience/blob/main/result.png)
