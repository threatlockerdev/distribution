#!/bin/bash
set -e

if grep -q Microsoft /proc/version; then
  docker-compose \
    -f docker-compose.yml \
    -f docker-compose.dev.yml $*
else
  docker-compose \
    -f docker-compose.yml \
    -f docker-compose.dev.yml \
    -f docker-compose.dev.linux.yml $*
fi
