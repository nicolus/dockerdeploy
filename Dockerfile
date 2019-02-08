FROM php:7.3-alpine

RUN apk update && \
    apk upgrade &&\
    apk add --no-cache rsync openssh curl git && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    composer global require hirak/prestissimo &&\
    composer global require laravel/envoy --no-progress --no-suggest && \
    composer global require deployer/deployer --no-progress --no-suggest && \
    rm -rf /root/.composer/cache/*

