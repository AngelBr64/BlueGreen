#!/bin/bash

echo "Deploying BLUE..."

docker compose -f /root/bluegreen_project/docker-compose.yml up -d --build blue

# Cambiar active.conf
echo 'map "" $active_upstream { default blue; }' > /etc/nginx/conf.d/active.conf

# Recargar nginx
nginx -t && systemctl reload nginx

echo "BLUE is now active!"
