FROM php:8.2-cli
RUN docker-php-ext-install curl
WORKDIR /app
COPY telegram_bridge.php /app/telegram_bridge.php
EXPOSE 10000
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/app"]
