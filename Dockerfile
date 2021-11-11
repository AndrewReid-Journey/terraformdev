# Set args for PHP version
ARG PHP_VERSION
ARG PHP_VERSION=7.2

# Set base image
FROM php:${PHP_VERSION}-fpm-buster as php-fpm-base

# Set composer args
ARG COMPOSER_VERSION=2.1.7

# Install OS packages
RUN apt-get update && apt-get install -y curl \
                                         zip \
                                         git
# Install PHP mySQL extension
RUN docker-php-ext-install mysqli

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer \
    --version=${COMPOSER_VERSION}

# Create known hosts file
WORKDIR /root
RUN mkdir .ssh && \
    ssh-keyscan -H github.com > /root/.ssh/known_hosts

# Set working directory to web root
WORKDIR /var/www/html
COPY . .
# Composer install
RUN composer install
