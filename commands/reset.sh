#!/bin/bash

if [ "$1" != "-y" ]; then
  echo "WARNING: This will completely erase your installation."
  echo "Manual intervention will probably be required by HyperQube."
  echo "If you're sure you want to continue, please run ./manage reset -y to confirm."
  exit 1
fi

echo "Resetting all services..."

docker-compose down -v
