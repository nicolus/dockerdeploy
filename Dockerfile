FROM php:7.2-alpine3.8

RUN apk add --no-cache rsync openssh curl && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    composer global require laravel/envoy --no-progress --no-suggest && \
    rm -rf /root/.composer/cache/*

