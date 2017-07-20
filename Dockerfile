FROM php:5.6-apache
#add php extensions to connect Mysql
RUN docker-php-source extract \
&& apt-get update \
&& apt-get install php5-mysql vim libmcrypt-dev -y \
&& docker-php-ext-install mysqli pdo pdo_mysql mcrypt

