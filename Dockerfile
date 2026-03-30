FROM php:8.2-apache

# mysqli extension for php
RUN docker-php-ext-install mysqli