#!/bin/bash

set -eux \
    && apk update \
    && apk upgrade \
    && apk add --no-cache --virtual .build_deps \
        $PHPIZE_DEPS \
        curl-dev \
        freetype-dev \
        imagemagick-dev \
        libtool \
        libxml2-dev \
        libpng-dev \
        libwebp-dev \
        libjpeg-turbo-dev \
        make \
        oniguruma-dev \
        gcc > /dev/null \
    && apk add --no-cache \
        zlib-dev \
        libzip-dev \
        libgomp \
        curl \
        imagemagick \
        mysql-client \
        libintl \
        libpng \
        libjpeg-turbo \
        icu-dev \
        icu \
        freetype \
        vim \
        unzip \
        composer \
        nodejs \
        bash > /dev/null \
    && docker-php-ext-configure \
        gd --with-freetype=/usr/include/freetype2/ --with-jpeg=/usr/include/ --with-webp=/usr/include/webp > /dev/null \
    && docker-php-ext-install \
        mbstring \
        pdo \
        pdo_mysql \
        mysqli \
        pcntl \
        tokenizer \
        xml \
        zip \
        intl \
        ctype \
        bcmath \
        -j$(nproc) gd > /dev/null \
    && pecl install \
        -o -f imagick > /dev/null \
    && docker-php-ext-enable \
        gd \
        imagick \
        mysqli > /dev/null \
    && apk del --no-cache -f .build_deps \
    && rm -f /var/cache/apk/*