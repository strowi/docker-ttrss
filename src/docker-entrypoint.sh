#!/bin/sh


# replace variables in ttrss-config
envsubst < /var/www/ttrss/config.php-dist > /var/www/ttrss/config.php
chown nginx:nginx /var/www/ttrss/config.php

# Start supervisord
echo "Starting supervisord"
exec /usr/bin/supervisord -n -c /etc/supervisord.conf
