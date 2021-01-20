ARG VERSION
ARG BASE_IMAGE

FROM php:$VERSION-$BASE_IMAGE

ARG VERSION
ARG DIRECTORY="tags/${VERSION}"
ARG EXECUTABLE="extentions.sh"
ARG TAG_FILE="${DIRECTORY}/${EXECUTABLE}"

LABEL maintainer="Norby Baruani <norbybaru@gmail.com/>"

RUN apk add --no-cache --upgrade bash

COPY tags tags

RUN chmod +x $TAG_FILE
RUN ./${TAG_FILE}

RUN rm -rf tags

# DIR
WORKDIR /var/www/app

CMD ["php-fpm"]