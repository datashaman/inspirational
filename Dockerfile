FROM php:7

RUN apt-get update -y && apt-get install -y openssl zip unzip git libonig-dev
RUN docker-php-ext-install pdo mbstring

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/app
COPY . /var/app

RUN composer install

CMD ["/usr/local/bin/php", "artisan", "serve"]
