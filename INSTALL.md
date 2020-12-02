# Installation Steps

## Prerequisites

- Machine or VM running a recent version of Ubuntu or Debian,
  - with [Docker](https://docs.docker.com/engine/install/ubuntu/) installed
  - with [Docker Compose](https://docs.docker.com/compose/install/) installed
  - with [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed

## Steps

1. Clone this repo: `git clone https://github.com/hyperqube-io/distribution.git hq-dist`
2. Change directory and initialize a .env file: `cd hq-dist && ./manage setup`
3. Edit the `.env` file, follow its instructions
4. Run `docker login -u <your username> ghcr.io`, using a personal access token with `read:packages` permission only. If you're doing this for a client, you probably want to use the username `hyperqubebot`.
   - To create a PAT, go to [Github's developer settings](https://github.com/settings/tokens).
5. Run `./manage setup` again
6. Set up SSL certificates:
   - If you want to use your own certificates (recommended), place them in:
     - Private key: `./nginx/certs/main.key`
     - Public key: `./nginx/certs/main.pub`
   - Or, use self-signed certificates: `./manage generate-ssl-certificate`
7. Run `./manage start`
