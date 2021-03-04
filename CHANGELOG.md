# HyperQube Changelog

This changelog is for versions of our entire platform. Individual services in the platform (v1-web, v2-api, etc) do not have their own independent versions.

We use [semver](https://semver.org/) for versioning.

## v1.1.13

Released 2021-03-04

All changes in this release are for the v2 beta.

- Implemented "About" page [ch-215](https://app.clubhouse.io/hyperqube/story/215)
- Moved design property inputs to modals [ch-277](https://app.clubhouse.io/hyperqube/story/277)

## v1.1.12

Released 2021-02-16

- Added "Manage Images" page [ch-282](https://app.clubhouse.io/hyperqube/story/282/implement-smooth-transition-between-v1-v2)

The following changes only affect the v2 beta:

- Added max height to all modals [ch-272](https://app.clubhouse.io/hyperqube/story/272)

## v1.1.11

Released 2021-02-09

- New machines / networks now appear in the top-left of canvas (was top-right) [ch-57](https://app.clubhouse.io/hyperqube/story/57)

The following changes only affect the v2 beta:

- Changed image naming scheme [ch-279](https://app.clubhouse.io/hyperqube/story/279)
- Improved styling of modals [ch-274](https://app.clubhouse.io/hyperqube/story/274)
- Improved modal button names [ch-271](https://app.clubhouse.io/hyperqube/story/271/v2-make-all-modal-button-labels-descriptive)
- Added accordion for normal designs [ch-276](https://app.clubhouse.io/hyperqube/story/276)
- Changed background color to match v1

## v1.1.10

Released 2021-02-02

All changes in this release are for the v2 beta.

- Implemented version endpoints in v1 [ch-216](https://app.clubhouse.io/hyperqube/story/216/v1-implement-product-version-endpoint) and v2 [ch-212](https://app.clubhouse.io/hyperqube/story/212/v2-implement-product-version-endpoint)
- Users can now upload OVAs in addition to ISOs [ch-209](https://app.clubhouse.io/hyperqube/story/209)
- Fixed design card accordions at small widths [ch-205](https://app.clubhouse.io/hyperqube/story/205/v2-design-card-pops-outside-of-accordion-under-certain-page-widths)
- Sidebar is hidden when only one link would be visible [ch-203](https://app.clubhouse.io/hyperqube/story/203/v2-hide-sidebar-when-only-one-link-would-be-visible)
- Tokens are now signed more securely [ch-244](https://app.clubhouse.io/hyperqube/story/244/v2-add-signer-metadata-to-jwts)
- Fixed direct login [ch-245](https://app.clubhouse.io/hyperqube/story/245/v2-logging-in-directly-throws-an-error)
- Stopped caching tenancy connections [ch-250](https://app.clubhouse.io/hyperqube/story/250/v2-vsphere-connections-lose-auth-randomly)

## v1.1.9

Released 2021-01-20 (hotfix)

- Fixed changing design name [ch-249](https://app.clubhouse.io/hyperqube/story/249/changing-design-name-throws-an-error)

## v1.1.8

Released 2021-01-19

- The user creation modal now resets correctly when an error occurs. [ch-140](https://app.clubhouse.io/hyperqube/story/140)

The following changes only affect the v2 beta:

- Fixed design card refreshing on change [ch-197](https://app.clubhouse.io/hyperqube/story/197/v2-deleted-design-cards-are-not-automatically-removed)
- Implemented WYSIWIG editor for design descriptions [ch-185](https://app.clubhouse.io/hyperqube/story/185/v2-edit-design-descriptions-with-wysiwig-html)
- Improved styling of designs list [ch-192](https://app.clubhouse.io/hyperqube/story/192/v2-design-card-s-edit-description-button-should-have-larger-hover-background)

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
