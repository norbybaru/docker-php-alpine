ARG VERSION
ARG BASE_IMAGE

FROM php:$VERSION-$BASE_IMAGE

LABEL maintainer="Norby Baruani <norbybaru@gmail.com/>"

# Install any custom system requirements here
RUN set -eux \
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
        libjpeg-turbo-dev \
        make \
        oniguruma-dev \
        gcc > /dev/null \
    # Installations that should be kept
    && apk add --no-cache \
        zlib-dev \
        libzip-dev \
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
        gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ > /dev/null \    
    && docker-php-ext-install \
        #curl \
        #iconv \
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
        -j$(nproc) gd > /dev/null \
    && pecl install \
        imagick > /dev/null \
    && docker-php-ext-enable \
        gd \
        imagick \
        mysqli > /dev/null \
    && apk del --no-cache -f .build_deps \
    && rm -f /var/cache/apk/*

# DIR
WORKDIR /var/www/app

CMD ["php-fpm"]