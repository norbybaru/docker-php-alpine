#!/bin/bash

set -ex

for tag in $(docker images norby/php-alpine --format "{{.Tag}}");
do
    docker push "norby/php-alpine:${tag}"
done