#!/bin/bash
echo "Deploying BLUE..."

docker compose up -d --build blue

echo "BLUE deployed! xd"
