FROM php:7.4-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
COPY entrypoint.sh /var/www/
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www
ENTRYPOINT /var/www/entrypoint.sh
CMD ["start-apache"]
