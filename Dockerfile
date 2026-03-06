FROM php:8.2-apache

COPY . /var/www/html/

RUN a2enmod rewrite

CMD sed -i "s/80/${PORT}/g" /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf \
 && apache2-foreground