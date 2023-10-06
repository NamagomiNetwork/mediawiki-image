#!/bin/sh

set -e

cd /var/www/html

wget https://releases.wikimedia.org/mediawiki/1.40/mediawiki-1.40.1.tar.gz
tar -xvzf /var/www/html/mediawiki-1.40.1.tar.gz
mv mediawiki-1.40.1 w