#!/bin/bash
set -e

APP_HOST=$(echo "$APP_URL" | awk -F/ '{print $3}')
DAYS=${1:-1024}

echo "Warning: We don't recommend that you self-sign certificates."
echo "  This is a convenience only - you should use a valid, externally-signed SSL certificate."
echo "  To use your own certificate, name the file as follows:"
echo "    - Public key: ./nginx/certs/main.pub"
echo "    - Private key: ./nginx/certs/main.key"
echo "  The generated certificate can be safely overwritten if you choose to replace it."

echo "Generating self-signed certificate, good for $DAYS days..."
docker run --rm -it \
  -v "$(pwd)/nginx/certs:/certs" \
  frapsoft/openssl req \
    -x509 -nodes -newkey rsa:4096 \
    -days "$DAYS" \
    -keyout "/certs/main.key" \
    -out "/certs/main.pub" \
    -subj "/C=US/ST=DC/L=DC/O=Hyperqube/OU=Deployment/CN=$APP_HOST"

echo "Self-signed certificate created. Please run \`./manage restart nginx\` to apply it."
