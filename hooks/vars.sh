#!/bin/bash

export VARS='
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.1 EXTRA_TAGS="7.1-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.1 EXTRA_TAGS="7.1-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.2 EXTRA_TAGS="7.2-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.2 EXTRA_TAGS="7.2-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.3 EXTRA_TAGS="7.3-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.3 EXTRA_TAGS="7.3-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=7.4 EXTRA_TAGS="7.4-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=7.4 EXTRA_TAGS="7.4-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=8.0 EXTRA_TAGS="8.0-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=8.0 EXTRA_TAGS="8.0-cli"
REPO_NAME=norby/php-alpine BASE_IMAGE=fpm-alpine VERSION=8.1 EXTRA_TAGS="latest-fpm;8.1-fpm"
REPO_NAME=norby/php-alpine BASE_IMAGE=cli-alpine VERSION=8.1 EXTRA_TAGS="latest-cli;8.1-cli"
'