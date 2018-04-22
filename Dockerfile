FROM php:7-alpine3.7

RUN apk add --no-cache rsync openssh nodejs nodejs-npm curl
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer global require laravel/envoy --no-progress --no-suggest

