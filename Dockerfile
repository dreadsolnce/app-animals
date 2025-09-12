FROM php:8.3-apache

RUN apt-get update

RUN apt-get -y --no-install-recommends install vim libzip-dev zip unzip net-tools iputils-ping

RUN docker-php-ext-install zip pdo pdo_mysql mysqli

COPY ./site /var/www/html

