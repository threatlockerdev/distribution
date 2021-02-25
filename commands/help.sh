#!/bin/bash
set -e

echo "Usage: ./manage <command> [args]
Commands:
  help                       Show this help text.
  start                      Start all services.
  stop                       Stop all services.
  restart [container]        Restarts all (or one) container(s).
  update                     Pull latest versions of all services.
  setup                      Creates initial user.
  reset                      Caution: resets all storage, including databases.
  run-migrations             Runs latest v1 database migrations.
  generate-encryption-key    Generates a random v1 encryption key.
  generate-ssl-certificate   Generates a self-signed SSL certificate for the web server.
  db <v1 | v2>               Enters a PostgreSQL shell for the given database
  minio                      Enters a shell with Minio client installed
  dev [args]                 Runs a docker-compose command against the dev configuration."
