#!/bin/bash
set -e

docker-compose up -d

bash ./commands/run-migrations.sh

docker-compose exec v1-web sh ./scripts/setup.sh
