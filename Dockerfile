FROM php:8.1-apache

# yum でinsall
# RUN apt install yum
# RUN yum update -y && \
#     yum -y install unzip

#gitインストール
RUN apt-get update && apt-get install -y \
    libonig-dev git vim unzip locate \
  && docker-php-ext-install pdo_mysql mysqli

#pdoインストール
RUN docker-php-ext-install pdo_mysql

#composerインストール
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer



#xdebugインストール
# RUN pecl install xdebug && \
#     docker-php-ext-enable xdebug

WORKDIR /var/www/html

COPY ./config/php/php.ini /usr/local/etc/php/
