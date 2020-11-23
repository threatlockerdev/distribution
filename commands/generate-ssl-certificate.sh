#!/bin/bash
set -e

DAYS=${$1:-1024}

PUBLIC_KEY="./nginx/certs/main.pub"
PRIVATE_KEY="./nginx/certs/main.key"

echo "Warning: We don't recommend that you self-sign certificates."
echo "  This is a convenience only - you should use a valid, externally-signed SSL certificate."
echo "  To use your own certificate, name the file as follows:"
echo "    - Public key: ./nginx/certs/main.pub"
echo "    - Private key: ./nginx/certs/main.key"
echo "  The generated certificate can be safely overwritten if you choose to replace it."

echo "Generating self-signed certificate, good for $DAYS days..."
openssl req -x509 -nodes -newkey rsa:4096 \
  -days "$DAYS" \
  -keyout "$PRIVATE_KEY" \
  -out "$PUBLIC_KEY" \
  -subj "/C=US/ST=DC/L=DC/O=Hyperqube/OU=Deployment/CN=$APP_HOST"

echo "Self-signed certificate created. Please run `./manage restart nginx` to apply it."
