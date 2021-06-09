FROM php:7.4-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
	libpq-dev \
	wget \
	git

RUN wget https://get.symfony.com/cli/installer -O - | bash \
    &&  mv /root/.symfony/bin/symfony /usr/local/bin/symfony

RUN docker-php-ext-install pgsql \
    && docker-php-ext-install pdo_pgsql

COPY ./ ./