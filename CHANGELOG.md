# HyperQube Changelog

This changelog is for versions of our entire platform. Individual services in the platform (v1-web, v2-api, etc) do not have their own independent versions.

We use [semver](https://semver.org/) for versioning.

## v2.0.0

Released 2021-07-01

- Redesigned/rewrote the entire frontend for usability and performance
- Rewrote most of the backend to improve performance

Changes since 1.1.18:

- Added current username to navbar
- Added "save as machine template" button [ch-431](https://app.clubhouse.io/hyperqube/story/431)
- Improved performance of several VMware operations [ch-439](https://app.clubhouse.io/hyperqube/story/439)
- Improved notifications for publishing/deploying designs [ch-306](https://app.clubhouse.io/hyperqube/story/306), [ch-395](https://app.clubhouse.io/hyperqube/story/395)
- Improved machine template admin page's UI [ch-400](https://app.clubhouse.io/hyperqube/story/400)
- Improved design canvas UI [ch-432](https://app.clubhouse.io/hyperqube/story/432), [ch-434](https://app.clubhouse.io/hyperqube/story/434)
- Improved admin table UI [ch-421](https://app.clubhouse.io/hyperqube/story/421)
- Improved and fixed VNC page [ch-433](https://app.clubhouse.io/hyperqube/story/433)
- Fixed editing shared designs [ch-404](https://app.clubhouse.io/hyperqube/story/404)
- Fixed unsharing designs [ch-442](https://app.clubhouse.io/hyperqube/story/442)
- Fixed loading design canvas with network interfaces
- Fixed creating networks in v2 [ch-415](https://app.clubhouse.io/hyperqube/story/415)
- Fixed several bugs in design canvas [ch-160](https://app.clubhouse.io/hyperqube/story/160)
- Fixed deleting shared designs [ch-397](https://app.clubhouse.io/hyperqube/story/397)
- Fixed resource usage page & improved its UI [ch-395](https://app.clubhouse.io/hyperqube/story/395)
- Fixed design admin page not showing all designs

## v1.1.18

Released 2021-06-10

- Fixed several unintended design permission checks [ch-378](https://app.clubhouse.io/hyperqube/story/378)
- Fixed a UI bug in user management page [ch-405](https://app.clubhouse.io/hyperqube/story/405)

The following changes only affect the v2 beta:

- Added start-all button to canvas [ch-311](https://app.clubhouse.io/hyperqube/story/311)
- Added delete button to canvas network nodes [ch-338](https://app.clubhouse.io/hyperqube/story/338)
- Improved display of long design names [ch-403](https://app.clubhouse.io/hyperqube/story/403)
- Added support for published designs in most design mutations [ch-401](https://app.clubhouse.io/hyperqube/story/401)
- Added titles to all pages [ch-399](https://app.clubhouse.io/hyperqube/story/399)
- Added VLAN range fields in tenancy configuration [ch-396](https://app.clubhouse.io/hyperqube/story/396)
- Current page is now highlighted in sidebar [ch-406](https://app.clubhouse.io/hyperqube/story/406)
- Design card titles are now displayed correctly when longer than the card [ch-419](https://app.clubhouse.io/hyperqube/story/419)

## v1.1.17

Released 2021-05-21

- Added new machine template management page for admins [ch-e255](https://app.clubhouse.io/hyperqube/epic/255/v2-machine-template-management)
- Improved performance of VM network interface creation/deletion [ch-363](https://app.clubhouse.io/hyperqube/story/363)
- Updated v2 API endpoints to use `DesignId` input type consistently
- Improved user creation error messages
- Fixed a refresh bug in user management page [ch-377](https://app.clubhouse.io/hyperqube/story/377)
- Fixed a logout bug related to v2 pages [ch-375](https://app.clubhouse.io/hyperqube/story/375)
- Fixed a visual bug when editing networks [ch-362](https://app.clubhouse.io/hyperqube/story/362)

The following changes only affect the v2 beta:

- Added VMware resource selection to tenancy management page [ch-345](https://app.clubhouse.io/hyperqube/story/345)

## v1.1.16

Released 2021-05-13

- Pressing ENTER now submits modals instead of cancelling them! [ch-49](https://app.clubhouse.io/hyperqube/story/49)
- Added new user management page for all admins to use [ch-e254](https://app.clubhouse.io/hyperqube/epic/254/v2-user-management), [ch-329](https://app.clubhouse.io/hyperqube/story/329), [ch-330](https://app.clubhouse.io/hyperqube/story/330)
- Added VLAN range fields in tenancy configuration [ch-334](https://app.clubhouse.io/hyperqube/story/334)
- Improved performance of some API endpoints [ch-363](https://app.clubhouse.io/hyperqube/story/363), [ch-346](https://app.clubhouse.io/hyperqube/story/346)

The following changes only affect the v2 beta:

- Added tenancy management page (WIP) [ch-168](https://app.clubhouse.io/hyperqube/story/168)
- Added machine template management page (WIP) [ch-358](https://app.clubhouse.io/hyperqube/story/358)
- Added design settings button to canvas [ch-315](https://app.clubhouse.io/hyperqube/story/315)
- Added machine deletion button to canvas [ch-317](https://app.clubhouse.io/hyperqube/story/317)

## v1.1.15

Released 2021-04-19

- Improved start/stop design performance [ch-346](https://app.clubhouse.io/hyperqube/story/346)

The following change only affects the v2 beta:

- Added machine deletion endpoint to API [ch-318](https://app.clubhouse.io/hyperqube/story/318)
- Added user management page [ch-328](https://app.clubhouse.io/hyperqube/story/328/implement-user-table), [ch-332](https://app.clubhouse.io/hyperqube/story/332/implement-user-creation), [ch-331](https://app.clubhouse.io/hyperqube/story/331/implement-user-admin-toggle)

## v1.1.14

Released 2021-04-15

- Added a favicon! [ch-319](https://app.clubhouse.io/hyperqube/story/319)
- Implemented start order & delays for designs [ch-e55](https://app.clubhouse.io/hyperqube/epic/55/set-vm-start-order)
- Added footer, including link to About page [ch-293](https://app.clubhouse.io/hyperqube/story/293/add-link-to-about)
- Improved About page UI [ch-291](https://app.clubhouse.io/hyperqube/story/291/remove-dropdown-on-about)
- Improved image creation [ch-294](https://app.clubhouse.io/hyperqube/story/294/image-table-doesn-t-refresh-after-create-delete), [ch-283](https://app.clubhouse.io/hyperqube/story/283/v2-improve-image-creation-ux)
- Images are now uploaded to / deleted from vSphere [ch-98](https://app.clubhouse.io/hyperqube/story/98)
- Improved "Manage Images" page UI [ch-273](https://app.clubhouse.io/hyperqube/story/273)

The following changes only affect the v2 beta:

- Added user settings page [ch-286](https://app.clubhouse.io/hyperqube/story/286)
- Added checkout button to design list [ch-278](https://app.clubhouse.io/hyperqube/story/278/v2-add-checkout-button-to-design-list)
- Replaced modal "cancel" buttons with close buttons [ch-275](https://app.clubhouse.io/hyperqube/story/275/v2-modals-should-have-close-buttons)
- Fixed deleting deployed designs [ch-287](https://app.clubhouse.io/hyperqube/story/287/v2-implement-deployed-design-deletion)
- Improved performance of power state fetching
- Removed an extraneous error message from the "stop machine" button [ch-316](https://app.clubhouse.io/hyperqube/story/316)
- Removed sidebar from design editor page [ch-314](https://app.clubhouse.io/hyperqube/story/314)

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
