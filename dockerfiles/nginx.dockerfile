FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY dockerfiles/conf/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/dolibarr/htdocs

ADD htdocs .