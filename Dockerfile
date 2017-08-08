FROM php:5.6-apache

RUN apt-get update && apt-get install -y libpq-dev --no-install-recommends && rm -r /var/lib/apt/lists/*
RUN curl -L https://www.adminer.org/latest.php > /var/www/html/index.php
RUN chmod 755 /var/www/html && chmod 644 /var/www/html/index.php
RUN docker-php-ext-install pgsql mysqli
ADD uploads.ini /usr/local/etc/php/conf.d/uploads.ini

EXPOSE 80