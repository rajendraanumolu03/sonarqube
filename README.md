# sonarqube

![Version: 1.2.0-bb.0](https://img.shields.io/badge/Version-1.2.0--bb.0-informational?style=flat-square) ![AppVersion: 9.2-community](https://img.shields.io/badge/AppVersion-9.2--community-informational?style=flat-square)

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
| deploymentStrategy.type | string | `"Recreate"` |  |
| OpenShift.enabled | bool | `false` |  |
| OpenShift.createSCC | bool | `true` |  |
| image.repository | string | `"registry1.dso.mil/ironbank/big-bang/sonarqube"` |  |
| image.tag | string | `"8.9.8-community"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecret | string | `"private-registry"` |  |
| securityContext.fsGroup | int | `1000` |  |
| containerSecurityContext.runAsUser | int | `1000` |  |
| containerSecurityContext.runAsGroup | int | `1000` |  |
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
| initContainers.resources.limits.memory | string | `"300Mi"` |  |
| initContainers.resources.limits.cpu | string | `"50m"` |  |
| initContainers.resources.requests.memory | string | `"300Mi"` |  |
| initContainers.resources.requests.cpu | string | `"50m"` |  |
| extraInitContainers | object | `{}` |  |
| waitForDb.image | string | `"registry1.dso.mil/ironbank/opensource/postgres/postgresql12:12.10"` |  |
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
| sonarProperties."sonar.ce.javaAdditionalOpts" | string | `"-Dcom.redhat.fips=false"` |  |
| sonarProperties."sonar.search.javaAdditionalOpts" | string | `"-Dcom.redhat.fips=false"` |  |
| sonarProperties."sonar.web.javaAdditionalOpts" | string | `"-Dcom.redhat.fips=false"` |  |
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
| postgresql.image.registry | string | `"registry1.dso.mil"` |  |
| postgresql.image.repository | string | `"ironbank/opensource/postgres/postgresql12"` |  |
| postgresql.image.tag | string | `"12.10"` |  |
| postgresql.image.pullSecrets[0] | string | `"private-registry"` |  |
| postgresql.postgresqlConfiguration.listen_addresses | string | `"*"` |  |
| postgresql.pgHbaConfiguration | string | `"local all all md5\nhost all all all md5"` |  |
| postgresql.persistence.enabled | bool | `true` |  |
| postgresql.persistence.accessMode | string | `"ReadWriteOnce"` |  |
| postgresql.persistence.size | string | `"20Gi"` |  |
| postgresql.persistence.storageClass | string | `nil` |  |
| postgresql.persistence.mountPath | string | `"/var/lib/postgresql"` |  |
| postgresql.postgresqlDataDir | string | `"/var/lib/postgresql/data"` |  |
| postgresql.securityContext.enabled | bool | `true` |  |
| postgresql.securityContext.fsGroup | int | `26` |  |
| postgresql.securityContext.runAsUser | int | `26` |  |
| postgresql.securityContext.runAsGroup | int | `26` |  |
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
| domain | string | `"bigbang.dev"` |  |
| istio.enabled | bool | `false` |  |
| istio.mtls | object | `{"mode":"STRICT"}` | Default argocd peer authentication |
| istio.mtls.mode | string | `"STRICT"` | STRICT = Allow only mutual TLS traffic, PERMISSIVE = Allow both plain text and mutual TLS traffic |
| istio.sonarqube.enabled | bool | `true` |  |
| istio.sonarqube.annotations | object | `{}` |  |
| istio.sonarqube.labels | object | `{}` |  |
| istio.sonarqube.gateways[0] | string | `"istio-system/main"` |  |
| istio.sonarqube.hosts[0] | string | `"sonarqube.{{ .Values.domain }}"` |  |
| istio.injection | string | `"disabled"` |  |
| monitoring.enabled | bool | `false` |  |
| networkPolicies.enabled | bool | `false` |  |
| networkPolicies.ingressLabels.app | string | `"istio-ingressgateway"` |  |
| networkPolicies.ingressLabels.istio | string | `"ingressgateway"` |  |
| networkPolicies.egressHttps.enabled | bool | `true` |  |
| bbtests.enabled | bool | `false` |  |
| bbtests.cypress.artifacts | bool | `true` |  |
| bbtests.cypress.envs.cypress_url | string | `"http://sonarqube-sonarqube:9000"` |  |
| bbtests.cypress.envs.cypress_url_setup | string | `"http://sonarqube-sonarqube:9000/setup"` |  |
| bbtests.cypress.envs.cypress_user | string | `"admin"` |  |
| bbtests.cypress.envs.cypress_password | string | `"new_admin_password"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.
