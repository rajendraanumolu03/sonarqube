# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---
## [1.2.0-bb.0] - 2022-06-*
### Changed
- Updating to test `9.2-community` images and associated plugins

## [1.0.26-bb.1] - 2022-05-19
### Changed
- Added JVM args to handle issues with FIPS clusters

## [1.0.26-bb.0] - 2022-05-05
### Changed
- Updated chart to sync with upstream sonarqube-lts chart 
- Updated SonarQube image to `8.9.8-community`
- Updated PostgreSQL image to `12.10`
- Updated Big Bang Base image to `1.2.0`

## [9.6.3-bb.25] - 2022-04-18
### Changed
- Updated `waitForDb` image to match postgresql dependency

## [9.6.3-bb.24] - 2022-04-15
### Added
- Added runAsGroup 1000 to Sonarqube container

## [9.6.3-bb.23] - 2022-04-04
### Added
- Added sidecar and sidecar termination to change password hook

## [9.6.3-bb.22] - 2022-03-30
### Added
- Add default PeerAuthentication to enable STRICT mTLS

## [9.6.3-bb.21] - 2022-03-18
### Added
- Add default PeerAuthentication to enable STRICT mTLS
- Add `wait-for-db` initContainer compatibility check

## [9.6.3-bb.20] - 2022-3-17
### Changed
- Added value for the previously hardcoded `wait-for-db` initContainer image

## [9.6.3-bb.19] - 2022-3-9
### Changed
- Updated change password hook deletion policy

## [9.6.3-bb.18] - 2022-3-9
### Changed
- Updated postgres exporter image to 0.10.1

## [9.6.3-bb.17] - 2022-2-25
### Changed
- Updated `deploymentStrategy` in `values.yaml` to explicitly define the `Recreate` strategy

## [9.6.3-bb.16] - 2022-2-15
### Changed
- Updated default-deny-all network policy to deny all. 

## [9.6.3-bb.15] - 2022-1-02
### Added
- Added renovate check to track postgresql and big-bang/base container images

### Changed
- Dev/CI Posgresql sub-chart version bump to `12.7.0` from `11.7.0`
- CI big-bang/base image bump to version `1.0.0`

## [9.6.3-bb.14] - 2022-1-31
### Changed
- Update Chart.yaml to follow new standardization for release automation
- Added renovate check to update new standardization

## [9.6.3-bb.13] - 2022-1-24
### Changed
- Moved bbtest default values into chart's values.yaml instead of test-values.yaml

## [9.6.3-bb.12] - 2021-12-20
### Changed
- Changed Values.hostname to Values.domain for proper naming

## [9.6.3-bb.11] - 2021-11-30
### Changed
- Changes to allow command and args on ca-certs init container to be set through value parameters

## [9.6.3-bb.10] - 2021-11-18
### Added
- Added image pull policy for admin password hook job

## [9.6.3-bb.9] - 2021-10-27
### Added
- Added networkpolicy for https egress with ability to enable/disable

## [9.6.3-bb.8] - 2021-10-18
### Changed
- Modified change-admin-password-hook job sidecar connection timeout

## [9.6.3-bb.7] - 2021-10-15
### Changed
- Modified change-admin-password-hook job sidecar termination

## [9.6.3-bb.6] - 2021-10-14
### Changed
- Modified conditional around change-admin-password-hook job sidecar termination

## [9.6.3-bb.5] - 2021-10-04
### Changed
- Reverted to use `until` in change-admin-password-hook job script.

## [9.6.3-bb.4] - 2021-09-29
### Added
- NetworkPolicy template to allow istiod communication when istio-injection is enabled.
### Changed
- Updated change-admin-password-hook job to complete when istio-injection is enabled.

## [9.6.3-bb.3] - 2021-09-28
### Added
- Added renovate support for the Sonarqube Iron Bank image

## [9.6.3-bb.2] - 2021-09-22
### Changed
- Removed duplicate regions of pod spec in deployment.

## [9.6.3-bb.1] - 2021-09-15
### Changed
- Moved to Ironbank image with plugins

## [9.6.3-bb.0] - 2021-09-07
### Changed
- KPT'd latest tagged version from upstream

## [9.2.6-bb.17] - 2021-09-06
### Changed
- Updated requests/limits based on nightly CI findings

## [9.2.6-bb.16] - 2021-08-30
### Changed
- Update init containers resource limits and requests.

## [9.2.6-bb.15] - 2021-08-19
### Changed
- Update resource limits and requests to guaranteed QoS

## [9.2.6-bb.14] - 2021-08-19
### Added
- Resource limit and request for the deployment

## [9.2.6-bb.13] - 2021-06-07
### Upgrade
- Upgraded Sonarqube to ironbank version 8.9.
- Bigbang plugins have been upgraded to the latest versions:
  - dependency-check-sonar-plugin version 2.0.8
  - sonar-c-plugin version 1.3.3.2051
  - sonar-cxx-plugin version 2.0.2.2734
  - sonar-zap-plugin version 2.2.0

## [9.2.6-bb.12] - 2021-06-02
### Modified
- Modified helm-test network policy to be more restrictive.

## [9.2.6-bb.11] - 2021-05-27
### Modified
- Modified the bigbang monitoring network policy to be more restrictive.

## [9.2.6-bb.10] - 2021-05-24
### Added
- Adding network policies.

## [9.2.6-bb.9] - 2021-05-10
### Changed
- Moved cypress testing to the new helm test structure.

## [9.2.6-bb.8] - 2021-04-06
### Update
- Updated sonarqube image version to 8.7.1-community

## [9.2.6-bb.7] - 2021-03-31
### Added
- Adding Affinity documentation

## [9.2.6-bb.6] - 2021-03-30
### Changed
- Modified initContainer logic

## [9.2.6-bb.5] - 2021-03-22
### Changed
- Fixed initContainer logic

## [9.2.6-bb.4] - 2021-03-22
### Added
- Adding ability to specify istio gateways and hosts in values file

## [9.2.6-bb.3] - 2021-03-16
### Added
- Plugins have been preinstalled into the container and made available at registry.dso.mil.
- InitContainers have also been pushed into registry.dso.mil until ironbank equivalents can be found.

## [0.0.0-bb.2] - 2021-01-22
### Added
- Added SAML sso integration
- Added istio virtual service
### Changed
- Modified images to use ironbank and repo1

## [0.0.0-bb.1] - 2020-08-01
### Added
- Added enforced login/authentication

## [0.0.0-bb.0] - 2020-06-15
### Added
- Initial release
- upstream version 8.3-community [Version 8.3.1 (build 34397)]
- Added logging instructions to docs 7/22/2020
- Added auth-oidc plugin version 2.0.0
- Added plugins for scanning C/C++ code 10/01/2020
