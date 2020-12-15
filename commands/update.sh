#!/bin/bash
set -e

if ! command -v git &> /dev/null; then
  echo "Please install git!"
  exit 1
fi

echo "Checking updates for hq-dist..."

git fetch
local_sha=$(git rev-parse "@")
remote_sha=$(git rev-parse "@{u}")
base_sha=$(git merge-base "@" "@{u}")

if [ "$local_sha" != "$remote_sha" ] && [ "$local_sha" = "$base_sha" ]; then
  echo "Updating hq-dist..."
  git pull
  echo "Please make sure to check that your .env is still up-to-date,"
  echo "  by examining .env.example for any changes."
fi

echo "Updating all services..."

docker-compose pull

echo "All updates successfully completed."
