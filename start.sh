#!/bin/bash
env > .env

echo "start PHP FPM"
php-fpm -F --pid /opt/bitnami/php/tmp/php-fpm.pid -y /opt/bitnami/php/etc/php-fpm.conf
