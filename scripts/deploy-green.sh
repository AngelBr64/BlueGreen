#!/bin/bash

echo "Deploying GREEN..."

docker compose -f /root/bluegreen_project/docker-compose.yml up -d --build green

echo 'map "" $active_upstream { default green; }' > /etc/nginx/conf.d/active.conf

nginx -t && systemctl reload nginx

echo "GREEN is now active!"
