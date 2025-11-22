#!/bin/bash
echo "Deploying BLUE..."

docker compose -f docker-compose-blue.yml up -d --build

echo "active_env blue;" > /etc/nginx/active_env
nginx -s reload

echo "BLUE deployed! x"
