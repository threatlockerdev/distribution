#!/bin/bash
set -e

docker-compose exec v1-web pipenv run python manage.py migrate
