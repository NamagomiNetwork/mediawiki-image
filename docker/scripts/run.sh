#!/bin/sh

set -e

sh /scripts/download_mediawiki.sh
apache2ctl start

# ログを表示

tail -f /var/log/apache2/access.log