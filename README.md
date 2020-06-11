# Sonarqube 8.3 Community version [Version 8.3.1 (build 34397)]

This repo contains manifests to deploy Sonarqube static code analysis tool into a Kubernetes cluster. 

Additional docs for using Sonarqube and its plugins can be found at https://docs.sonarqube.org/latest/ 

## Usage

### Pre-requisites

* Kubernetes cluster deployed
* kubectl configuration installed

Install kubectl

```bash
$ brew install kubectl
```
Install kustomize 

```bash
$ brew install kustomize
```

### Deployment

Clone repository
```bash
$ git clone https://repo1.dsop.io/platform-one/apps/sonarqube.git
$ cd sonarqube
```

** Please note that appropriate secrets (listed below) should be defined before the sonarqube pod is able to connect to the postgres database and is able to function properly.
Sonarqube needs three environment variables to access the postgres database.

SONARQUBE_JDBC_URL - URL for the postgres database to use

SONARQUBE_JDBC_USERNAME - username to access the postgres database

SONARQUBE_JDBC_PASSWORD - password for the above user

These need to be added in as Kubernetes secrets and mounted into the sonarqube pod https://kubernetes.io/docs/concepts/configuration/secret/.

To run Sonarqube, add the secrets, volumes, volumeMounts and env to set values for the above variables. 
After the above secrets are incorporated into the sonarqube/ manifests, to deploy Sonarqube apply the kustomized manifest:

```bash
$ kubectl apply -k sonarqube/
```

### IMPORTANT  Default Admin Credentials

When installing SonarQube, a default user with Administer System permission is created automatically:

Login: admin
Password: admin

You can change the administrator password from the SonarQube dashboard by following these steps:

1)Log in to the SonarQube dashboard.
2)Under the “User Name” dropdown menu in the upper right corner, click on “My Account”.
3)Select the “Security” tab.
4)Enter your old password and enter your new password twice to confirm the change.
5)Click the “Change password” button.

## Contributing

To contribute to Big Bang Sonarqube, see the [Contributing Guide](CONTRIBUTING.md).

## References

Docker image  https://dcar.dsop.io/repomap/sonarsource/sonarqube/sonarqube8-community SHA tag - sha256:7356de08b61c240302aa91040a7abea1ebea190afb2d14f35191e272ddbc712a
