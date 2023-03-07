FROM bitnami/php-fpm:8.2

COPY . .


RUN composer install

RUN chmod +x /app/start.sh

ENTRYPOINT [ "/app/start.sh" ]

