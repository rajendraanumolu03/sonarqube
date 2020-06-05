# Big Bang Sonarqube 

Upstream version - 8.3 community [Version 8.3.1 (build 34397)]

[Sonarqube](https://docs.sonarqube.org/latest/) is a tool for static code analysis

## Pre-requisites

* kubectl

## Getting Started


** Please note that appropriate secrets (listed below) should be defined before the sonarqube pod is able to connect to the postgres database and is able to function properly.
Sonarqube needs three environment variables to access the postgres database.

SONARQUBE_JDBC_URL - URL for the postgres database to use

SONARQUBE_JDBC_USERNAME - username to access the postgres database

SONARQUBE_JDBC_PASSWORD - password for the above user

These need to be added in as Kubernetes secrets and mounted into the sonarqube pod https://kubernetes.io/docs/concepts/configuration/secret/.

To run Sonarqube, clone this repository, add the secrets, volumes, volumeMounts and env to set values for the above variables. 
After the above secrets are incorporated into the sonarqube/ manifests, to deploy Sonarqube run:

```bash
$ kubectl apply -k sonarqube/
```


## Contributing

To contribute to Big Bang Sonarqube, see the [Contributing Guide](CONTRIBUTING.md).

