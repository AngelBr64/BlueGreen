#!/bin/bash
echo "Deploying GREEN..."

docker compose up -d --build green

echo "GREEN deployed!"
