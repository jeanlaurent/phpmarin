# syntax=docker/dockerfile:1

FROM php:8.1-apache

# Copy app files from the app directory.
COPY ./src/ /var/www/html

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

USER www-data
