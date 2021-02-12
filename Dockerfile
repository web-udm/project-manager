FROM php:7.4-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
	libpq-dev

RUN docker-php-ext-install pgsql \
    && docker-php-ext-install pdo_pgsql

COPY ./ ./