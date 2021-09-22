# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---
## [9.2.6-bb.13-1] - 2021-09-22
### Modified
- Patch for deployment.yaml to remove duplicate keys (nodeSelector, affinity, tolerations).

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

Modified initContainer logic

## [9.2.6-bb.5] - 2021-03-22

Fixed initContainer logic

## [9.2.6-bb.4] - 2021-03-22

Adding ability to specify istio gateways and hosts in values file

## [9.2.6-bb.3] - 2021-03-16
Plugins have been preinstalled into the container and made available at registry.dso.mil.

InitContainers have also been pushed into registry.dso.mil until ironbank equivalents can be found.

## Initial Helm Chart Release - 2021-01-22
Added SAML sso integration

Added istio virtual service

Modified images to use ironbank and repo1

## TechPreview0801 - 2020-08-01
Added enforced login/authentication

## TechPreview0615 - 2020-06-15
Initial release
upstream version 8.3-community [Version 8.3.1 (build 34397)]

Added logging instructions to docs 7/22/2020

Added auth-oidc plugin version 2.0.0

Added plugins for scanning C/C++ code 10/01/2020
