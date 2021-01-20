#!/bin/bash

set -eux \
    && apk update \
    && apk upgrade \
    && apk add --no-cache --virtual .build_deps \
        $PHPIZE_DEPS \
        curl-dev \
        imagemagick-dev \
        libtool \
        libxml2-dev \
        make \
        gcc > /dev/null \
    && apk add --no-cache \
        zlib-dev \
        libzip-dev \
        curl \
        imagemagick \
        mysql-client \
        libintl > /dev/null \
    libpng-dev \
        icu-dev \
        icu \
        vim \
        unzip \
        composer \
        nodejs \
        bash > /dev/null \
    && docker-php-ext-configure \
        zip --with-libzip > /dev/null \
    && docker-php-ext-install \
        curl \
        iconv \
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
        json \
        gd > /dev/null \
    && pecl install \
        imagick > /dev/null \
    && docker-php-ext-enable \
        imagick \
        mysqli > /dev/null \
    && apk del --no-cache -f .build_deps \
    && rm -f /var/cache/apk/*