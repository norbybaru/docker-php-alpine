#!/bin/bash

export VARS='
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.1 EXTRA_TAGS="7.1-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.1 EXTRA_TAGS="7.1-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.2 EXTRA_TAGS="7.2-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.2 EXTRA_TAGS="7.2-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.3 EXTRA_TAGS="7.3-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.3 EXTRA_TAGS="7.3-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.4 EXTRA_TAGS="latest-fpm;7.4-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.4 EXTRA_TAGS="latest-cli;7.4-cli"
'