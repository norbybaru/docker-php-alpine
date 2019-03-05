#!/bin/bash

# norby/php:7.1
TAG="${REPO_NAME}:${VERSION}"

set -x
docker build . \
    --no-cache \
    -t "$TAG" \
    --build-arg VERSION=$VERSION

image_id=$(docker images $TAG --format "{{.ID}}")

for tag in ${EXTRA_TAGS//;/$'\n'}
do
    echo $tag
    docker tag $image_id "${REPO_NAME}:${tag}"
done

docker run --rm --entrypoint php "${REPO_NAME}:${VERSION}" --version
docker run --rm --entrypoint php "${REPO_NAME}:${VERSION}" -m