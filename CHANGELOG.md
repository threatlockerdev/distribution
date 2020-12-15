# HyperQube Changelog

This changelog is for versions of our entire platform. Individual services in the platform (v1-web, v2-api, etc) do not have their own independent versions.

We use [semver](https://semver.org/) for versioning.

## v1.1.5

- Added environment variables to set v1-worker count
- Improved parallel deployment logic [ch-179](https://app.clubhouse.io/hyperqube/story/179)
- Improved v2 UI/UX

## v1.1.4

- Reimplemented new license logic in beta [ch-152](https://app.clubhouse.io/hyperqube/story/152/reimplement-fix-license-logic)
- Hid v2 sidebar links in production [ch-174](https://app.clubhouse.io/hyperqube/story/174/view-resource-usage-needs-to-be-removed-from-production)

## v1.1.3

- Fixed tenancy management page when no license exists [ch-158](https://app.clubhouse.io/hyperqube/story/158/tenancy-management-page-doesn-t-load-when-no-license-exists)

## v1.1.2

- Fixed some buggy license-checking logic that was causing login issues [ch-148](https://app.clubhouse.io/hyperqube/story/148/bug-licenses-are-not-being-detected)

## v1.1.1

- Fixed an overflow bug in v1 design list page [ch-142](https://app.clubhouse.io/hyperqube/story/142/design-cards-overflow-horizontally-without-scrollbar)

## v1.1.0

- Initial release on semver
- No changes from v1.0.0 but we had to start somewhere further because business reasons
