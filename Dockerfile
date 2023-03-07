FROM php:8.0-fpm
#ENV DEBIAN_FRONTEND="noninteractive apt-get install -y --no-install-recommends tzdata nginx"
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions intl gd zip sodium sockets mysql

RUN mkdir /app
WORKDIR /app
COPY . .

# installing composer package
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer install








