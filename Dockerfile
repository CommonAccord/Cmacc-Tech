FROM php:5.6-apache

RUN usermod -u 1000 www-data; groupmod -g 1000 www-data; chown www-data:www-data /var/www/html/

COPY . /var/www/html/

