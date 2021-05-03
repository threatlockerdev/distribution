# Update Procedure

## Prerequisites

Install the HyperQube platform, per the instructions in [INSTALL.md](./INSTALL.md).

## Steps

1. Enter the distribution repo's directory: `cd hq-dist`
2. Update your local copies of the Docker images: `./manage update`
3. Start the updated HyperQube services: `./manage start`
4. Run migrations: `./manage run-migrations`
