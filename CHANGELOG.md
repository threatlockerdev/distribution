# HyperQube Changelog

This changelog is for versions of our entire platform. Individual services in the platform (v1-web, v2-api, etc) do not have their own independent versions.

We use [semver](https://semver.org/) for versioning.

## v1.1.7

Released 2021-01-12

- Design names can now be changed [ch-188](https://app.clubhouse.io/hyperqube/story/188/v1-allow-user-to-change-design-name)

The following changes only affect the v2 beta:

- Redesigned the Designs page to better display different design types [ch-180](https://app.clubhouse.io/hyperqube/story/180/v2-show-all-design-types-on-designs-all), [ch-199](https://app.clubhouse.io/hyperqube/story/199/v2-remove-design-filter-pages)
- Clicking outside of design card headers now cancels editing the design name [ch-183](https://app.clubhouse.io/hyperqube/story/183/v2-clicking-outside-the-design-card-header-should-cancel-editing)
- Delete confirmation dialogs now close after confirmation [ch-196](https://app.clubhouse.io/hyperqube/story/196/v2-design-delete-confirmation-dialog-remains-visible-after-confirming)
- Cancelling a design deletion now unlocks the design card [ch-191](https://app.clubhouse.io/hyperqube/story/191/v2-cancelling-a-design-deletion-doesn-t-unlock-the-card)

## v1.1.6

Released 2020-12-15

- Added environment variable for worker queue handling (`V1_WORKERS_TYPE`) [ch-186](https://app.clubhouse.io/hyperqube/story/186/v1-add-setting-to-have-each-worker-handle-one-queue)

## v1.1.5

Released 2020-12-15

- Added environment variables to set v1-worker count
- Improved parallel deployment logic [ch-179](https://app.clubhouse.io/hyperqube/story/179)
- Improved v2 UI/UX

## v1.1.4

Released 2020-12-10

- Reimplemented new license logic in beta [ch-152](https://app.clubhouse.io/hyperqube/story/152/reimplement-fix-license-logic)
- Hid v2 sidebar links in production [ch-174](https://app.clubhouse.io/hyperqube/story/174/view-resource-usage-needs-to-be-removed-from-production)

## v1.1.3

Released 2020-12-07

- Fixed tenancy management page when no license exists [ch-158](https://app.clubhouse.io/hyperqube/story/158/tenancy-management-page-doesn-t-load-when-no-license-exists)

## v1.1.2

Released 2020-12-02

- Fixed some buggy license-checking logic that was causing login issues [ch-148](https://app.clubhouse.io/hyperqube/story/148/bug-licenses-are-not-being-detected)

## v1.1.1

Released 2020-11-25

- Fixed an overflow bug in v1 design list page [ch-142](https://app.clubhouse.io/hyperqube/story/142/design-cards-overflow-horizontally-without-scrollbar)

## v1.1.0

- Initial release on semver
- No changes from v1.0.0 but we had to start somewhere further because business reasons
