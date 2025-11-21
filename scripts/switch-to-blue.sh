#!/bin/bash
SERVICE=blue envsubst < nginx/service.template > /etc/nginx/conf.d/default.conf
systemctl reload nginx
