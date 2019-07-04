
FROM php:7.1-fpm

RUN docker-php-ext-install pdo_mysql

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

COPY conf/php.ini /etc/php/7.1/fpm/conf.d/40-custom.ini

#RUN install zlib fontconfig freetype libX11 libXext libXrender
COPY conf/crontab /etc/crontab
