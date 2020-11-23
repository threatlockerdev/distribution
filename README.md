# HyperQube On-Premise Distribution

This repository contains scripts supporting on-premise installations of the HyperQube platform.

All interactions should go through `./manage` - for instance, `./manage help`

## Development

(If you're a user, this isn't relevant - but might be interesting 🤷‍♀️)

See [INSTALL.md](./INSTALL.md) for new deployment instructions.

See [RELEASE_TEMPLATE.md](./.github/RELEASE_TEMPLATE.md) for the template for release PRs.

Set the appropriate environment variables in `.env`, and you can then use `./manage dev` to run docker-compose commands against a local dev stack.
