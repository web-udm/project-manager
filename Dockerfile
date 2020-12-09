FROM php:8.0-fpm-alpine

RUN apk update

RUN apk --update add composer

WORKDIR /var/www

COPY ./ ./