#!/bin/sh

export NGINXPROXY

envsubst '${NGINXPROXY}' < /config.template > /etc/nginx/nginx.conf

exec "$@"
