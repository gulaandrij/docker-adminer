FROM php:5.6-apache
ADD ./adminer-4.3.1.php /var/www/html
WORKDIR /var/www/html
RUN mv adminer-4.3.1.php index.php
RUN pwd && ls
RUN docker-php-ext-install mysqli
ADD uploads.ini /usr/local/etc/php/conf.d/uploads.ini

EXPOSE 80