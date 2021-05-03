#!/bin/bash
set -e

BACKUP_DIR="$1"
if [ "$BACKUP_DIR" == "" ]; then
  echo "Usage: ./manage backup <backup-dir>"
  exit 1
fi

echo "Backing up databases..."

mkdir -p "$BACKUP_DIR"
docker exec -t hq-v1-db pg_dumpall -c -U postgres > "$BACKUP_DIR/v1.sql"
docker exec -t hq-v2-db pg_dumpall -c -U postgres > "$BACKUP_DIR/v2.sql"

echo "Backup complete."
