#!/bin/bash
set -e

TARGET="$1"

docker-compose exec "$TARGET-db" psql -U postgres
