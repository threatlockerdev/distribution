#!/bin/bash
set -e

function set_dotenv() {
  name="$1"
  value="$2"
  sed -i "s/$name=.*/$name=$value/" .env
}

echo "Cloning repositories..."

git clone git@github.com:hyperqube-io/v2-api ../v2-api
git clone git@github.com:hyperqube-io/v2-web ../v2-web
git clone git@github.com:hyperqube-io/website ../website

if [ ! -f ".env" ]; then
  cp .env.defaults .env
fi
set_dotenv DEV_V1_DIR "../website"
set_dotenv DEV_V2_API_DIR "../v2-api"
set_dotenv HQ_VERSION "dev"
set_dotenv V2_NODE_ENV "dev"

cp ../web/.env.example ../web/.env

echo "To start your dev environment:"
echo "  Run `./manage dev up` in this directory."
echo "  Run `yarn start` in ../web."
echo "IMPORTANT: Make sure to edit .env as needed before starting anything!"
echo "  In particular, *_DATABASE_URL and V1_ENCRYPTION_KEY"
