#!/bin/sh

# Start supervisord
echo "Starting supervisord"
exec /usr/bin/supervisord -n -c /etc/supervisord.conf
