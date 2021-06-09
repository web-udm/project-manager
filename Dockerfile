FROM php:7.4-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
	libpq-dev \
	wget \
	git

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

RUN wget https://get.symfony.com/cli/installer -O - | bash \
    &&  mv /root/.symfony/bin/symfony /usr/local/bin/symfony

RUN docker-php-ext-install pgsql \
    && docker-php-ext-install pdo_pgsql

COPY ./ ./