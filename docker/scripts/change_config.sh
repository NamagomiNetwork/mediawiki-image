#!/bin/sh

set -e

# apache config
rm /etc/apache2/apache2.conf
cp /config/apache2.conf /etc/apache2/apache2.conf

# php_ini
rm /etc/php/7.4/apache2/php.ini
cp /config/php.ini /etc/php/7.4/apache2/php.ini

# .htaccess
cp /config/.htaccess /var/www/html
mv /var/www/html/.htaccess /var/www/html/.sample-htaccess