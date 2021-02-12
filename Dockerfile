FROM php:7.4-fpm-alpine

RUN apk update

RUN add composer

WORKDIR /var/www

COPY ./ ./