FROM php:8.0-fpm

ARG uid=1001
ARG login="appuser"

#COPY "./xdebug.ini" "/usr/local/etc/php/conf.d/xdebug.ini"

RUN apt-get update \
&&  apt-get upgrade -y \
&&  apt-get install -y \
    wget \
    zip \
    git \
    libicu-dev \
    zlib1g-dev \
    libpng-dev \
&&  docker-php-ext-install \
    mysqli \
    intl \
    gd \
&&  pecl install \
&&  docker-php-ext-enable \
    mysqli \
    intl \
    gd \
&&  wget -O "/usr/local/bin/composer" "https://getcomposer.org/composer-stable.phar" \
&&  chmod -R 755 "/usr/local/bin" \
&&  useradd --create-home --user-group --uid=$uid $login

RUN mkdir -p /var/www/app && chown -R appuser:appuser /var/www/app

WORKDIR /var/www/app
