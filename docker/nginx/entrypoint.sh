#!/usr/bin/env sh
cd /srv/api;
php bin/console cache:warmup
chmod 777 /srv/api/var -R
php-fpm -F &
nginx -g 'daemon off;' &
tail -f /dev/null