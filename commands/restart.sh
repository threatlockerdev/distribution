#!/bin/bash
set -e

echo "Stopping service(s)..."
docker-compose down $*

echo "Starting service(s)..."
docker-compose up $*
