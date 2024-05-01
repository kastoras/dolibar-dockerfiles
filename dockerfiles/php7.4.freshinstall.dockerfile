FROM php:7.4-fpm

WORKDIR /var/www/dolibarr

RUN apt-get update

RUN apt-get install -y libkrb5-dev libc-client-dev libicu-dev libpq-dev libzip-dev libpng-dev nano && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-configure intl
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql 

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl && docker-php-ext-install imap

RUN docker-php-ext-install intl &&\
    docker-php-ext-install mysqli &&\ 
    docker-php-ext-install pgsql &&\ 
    docker-php-ext-install pdo &&\
    docker-php-ext-install pdo_mysql &&\
    docker-php-ext-install pdo_pgsql &&\
    docker-php-ext-install zip &&\
    docker-php-ext-install gd &&\
    docker-php-ext-install calendar

RUN docker-php-ext-enable pdo_mysql pdo_pgsql

RUN mkdir /var/www/dolibarr/documents

COPY htdocs .

RUN chown -R 1000:1000 /var/www/dolibarr    

USER 1000