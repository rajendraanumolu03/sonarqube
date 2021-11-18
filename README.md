# sonarqube

![Version: 9.6.3-bb.10](https://img.shields.io/badge/Version-9.6.3--bb.10-informational?style=flat-square) ![AppVersion: 8.9-community](https://img.shields.io/badge/AppVersion-8.9--community-informational?style=flat-square)

SonarQube is an open sourced code quality scanning tool

## Upstream References
* <https://www.sonarqube.org/>

* <https://github.com/SonarSource/docker-sonarqube>

## Learn More
* [Application Overview](docs/overview.md)
* [Other Documentation](docs/)

## Pre-Requisites

* Kubernetes Cluster deployed
* Kubernetes config installed in `~/.kube/config`
* Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

* Clone down the repository
* cd into directory
```bash
helm install sonarqube chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| replicaCount | int | `1` |  |
| deploymentStrategy | object | `{}` |  |
| OpenShift.enabled | bool | `false` |  |
| OpenShift.createSCC | bool | `true` |  |
| image.repository | string | `"registry1.dso.mil/ironbank/big-bang/sonarqube"` |  |
| image.tag | string | `"8.9-community"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecret | string | `"private-registry"` |  |
| securityContext.fsGroup | int | `1000` |  |
| containerSecurityContext.runAsUser | int | `1000` |  |
| elasticsearch.configureNode | bool | `false` |  |
| elasticsearch.bootstrapChecks | bool | `true` |  |
| service.type | string | `"ClusterIP"` |  |
| service.externalPort | int | `9000` |  |
| service.internalPort | int | `9000` |  |
| service.labels | string | `nil` |  |
| service.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].name | string | `"sonar.organization.com"` |  |
| ingress.hosts[0].path | string | `"/"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.tls | list | `[]` |  |
| affinity | object | `{}` |  |
| tolerations | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| hostAliases | list | `[]` |  |
| readinessProbe.initialDelaySeconds | int | `60` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.failureThreshold | int | `6` |  |
| readinessProbe.sonarWebContext | string | `"/"` |  |
| livenessProbe.initialDelaySeconds | int | `60` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.sonarWebContext | string | `"/"` |  |
| initContainers.resources.limits.memory | string | `"8Mi"` |  |
| initContainers.resources.limits.cpu | string | `"50m"` |  |
| initContainers.resources.requests.memory | string | `"8Mi"` |  |
| initContainers.resources.requests.cpu | string | `"50m"` |  |
| extraInitContainers | object | `{}` |  |
| initSysctl.enabled | bool | `false` |  |
| initSysctl.vmMaxMapCount | int | `524288` |  |
| initSysctl.fsFileMax | int | `131072` |  |
| initSysctl.nofile | int | `131072` |  |
| initSysctl.nproc | int | `8192` |  |
| initSysctl.securityContext.privileged | bool | `true` |  |
| plugins.install | list | `[]` |  |
| plugins.lib | list | `[]` |  |
| plugins.noCheckCertificate | bool | `false` |  |
| jvmOpts | string | `""` |  |
| annotations | object | `{}` |  |
| resources.limits.cpu | string | `"300m"` |  |
| resources.limits.memory | string | `"2.5Gi"` |  |
| resources.requests.cpu | string | `"300m"` |  |
| resources.requests.memory | string | `"2.5Gi"` |  |
| persistence.enabled | bool | `false` |  |
| persistence.annotations | object | `{}` |  |
| persistence.storageClass | string | `nil` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.size | string | `"10Gi"` |  |
| persistence.volumes | list | `[]` |  |
| persistence.mounts | list | `[]` |  |
| emptyDir | object | `{}` |  |
| sonarProperties."sonar.forceAuthentication" | bool | `true` |  |
| jdbcDatabaseType | string | `"postgresql"` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.postgresqlUsername | string | `"sonarUser"` |  |
| postgresql.postgresqlPassword | string | `"sonarPass"` |  |
| postgresql.postgresqlDatabase | string | `"sonarDB"` |  |
| postgresql.service.port | int | `5432` |  |
| postgresql.resources.limits.cpu | string | `"100m"` |  |
| postgresql.resources.limits.memory | string | `"200Mi"` |  |
| postgresql.resources.requests.cpu | string | `"100m"` |  |
| postgresql.resources.requests.memory | string | `"200Mi"` |  |
| postgresql.persistence.enabled | bool | `true` |  |
| postgresql.persistence.accessMode | string | `"ReadWriteOnce"` |  |
| postgresql.persistence.size | string | `"20Gi"` |  |
| postgresql.persistence.storageClass | string | `nil` |  |
| postgresql.securityContext.enabled | bool | `true` |  |
| postgresql.securityContext.fsGroup | int | `1001` |  |
| postgresql.securityContext.runAsUser | int | `1001` |  |
| postgresql.volumePermissions.enabled | bool | `false` |  |
| postgresql.volumePermissions.securityContext.runAsUser | int | `0` |  |
| postgresql.shmVolume.chmod.enabled | bool | `false` |  |
| postgresql.serviceAccount.enabled | bool | `false` |  |
| podLabels | object | `{}` |  |
| sonarqubeFolder | string | `"/opt/sonarqube"` |  |
| tests.enabled | bool | `false` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.annotations | object | `{}` |  |
| extraConfig.secrets | list | `[]` |  |
| extraConfig.configmaps | list | `[]` |  |
| terminationGracePeriodSeconds | int | `60` |  |
| hostname | string | `"bigbang.dev"` |  |
| istio.enabled | bool | `false` |  |
| istio.sonarqube.enabled | bool | `true` |  |
| istio.sonarqube.annotations | object | `{}` |  |
| istio.sonarqube.labels | object | `{}` |  |
| istio.sonarqube.gateways[0] | string | `"istio-system/main"` |  |
| istio.sonarqube.hosts[0] | string | `"sonarqube.{{ .Values.hostname }}"` |  |
| istio.injection | string | `"disabled"` |  |
| monitoring.enabled | bool | `false` |  |
| networkPolicies.enabled | bool | `false` |  |
| networkPolicies.ingressLabels.app | string | `"istio-ingressgateway"` |  |
| networkPolicies.ingressLabels.istio | string | `"ingressgateway"` |  |
| networkPolicies.egressHttps.enabled | bool | `true` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.
