#!/bin/bash
set -e

docker-compose run --rm v1-web pipenv run python manage.py migrate
