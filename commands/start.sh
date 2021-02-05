#!/bin/bash
set -e

echo "Starting all services..."

docker-compose up -d

echo "All services started. Viewing output:"

docker-compose logs -f --tail=50
