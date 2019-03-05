#!/bin/bash

# norby/php:7.1
TAG="${REPO_NAME}:${VERSION}"

set -x
docker build . \
    --no-cache \
    -t "$TAG" \
    --build-arg VERSION=$VERSION

image_id=$(docker images $TAG --format "{{.ID}}")

for extra_tag in ${EXTRA_TAGS//;/$'\n'}
do
    echo $TAG
    echo $extra_tag
    docker tag $TAG "${REPO_NAME}:${extra_tag}"
done

docker run --rm --entrypoint php $TAG --version
docker run --rm --entrypoint php $TAG -m