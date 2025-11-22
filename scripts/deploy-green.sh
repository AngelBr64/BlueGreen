#!/bin/bash
echo "Deploying GREEN..."

docker compose -f docker-compose-green.yml up -d --build

echo "active_env green;" > /etc/nginx/active_env
nginx -s reload

echo "GREEN deployed!"
