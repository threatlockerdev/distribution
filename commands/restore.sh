#!/bin/bash
set -e

BACKUP_DIR="$1"
if [ "$BACKUP_DIR" == "" ]; then
  echo "Usage: ./manage restore <backup-dir>"
  exit 1
fi

V1_BACKUP="$BACKUP_DIR/v1.sql"
V2_BACKUP="$BACKUP_DIR/v2.sql"
if [ ! -f "$V1_BACKUP" ] || [ ! -f "$V2_BACKUP" ]; then
  echo "Backup files do not exist ($V1_BACKUP and $V2_BACKUP)."
  exit 1
fi

cat "$V1_BACKUP" | docker exec -i hq-v1-db psql -U postgres
cat "$V2_BACKUP" | docker exec -i hq-v2-db psql -U postgres

echo "Finished restoring backup."
