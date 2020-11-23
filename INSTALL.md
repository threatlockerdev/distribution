# Installation Steps

## Prerequisites

- Machine or VM running a recent version of Ubuntu or Debian,
  - with [Docker](https://docs.docker.com/engine/install/ubuntu/) installed
  - with [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed

## Steps

1. Clone this repo: `git clone https://github.com/hyperqube/distribution hq-dist`
2. Change directory and initialize a .env file: `cd hq-dist && ./manage setup`
3. Edit the `.env` file, follow its instructions
4. Run `./manage setup` again
5. Run `./manage start`
