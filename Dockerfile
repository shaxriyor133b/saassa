FROM php:8.2-cli

# mysqli extension o‘rnatish
RUN docker-php-ext-install mysqli

WORKDIR /app
COPY . .

EXPOSE 8080

CMD php -S 0.0.0.0:$PORT
