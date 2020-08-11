# Sonarqube 8.3 Community version [Version 8.3.1 (build 34397)] with auth oidc 2.0.0 plugin

This repo contains manifests to deploy Sonarqube static code analysis tool into a Kubernetes cluster.

Additional docs for using Sonarqube and its plugins can be found at <https://docs.sonarqube.org/latest/>

## Usage

### Pre-requisites

* Kubernetes cluster deployed
* kubectl configuration installed

Install kubectl

``
brew install kubectl
``

Install kustomize

``
brew install kustomize
``

### Deployment

Clone repository

``
git clone https://repo1.dsop.io/platform-one/apps/sonarqube.git
``

``
cd sonarqube
``

Please note the settings applied in the file "sonar.properties" since they override any settings applied through the UI. [Documentation can be found here](https://docs.sonarqube.org/latest/setup/operate-cluster/#header-8) with additional properties shown in the Sonarqube instance's settings page.

:warning: Sonarqube's UI may not display the true value for settings applied through "sonar.properties"

`sonar.es.bootstrap.checks.disable=true` – Disables enforcement of [Elasticsearch and system setting checks](https://www.elastic.co/guide/en/elasticsearch/reference/current/bootstrap-checks.html).

`sonar.forceAuthentication=true` – [Restricts anonymous users from browsing the SonarQube instance](https://docs.sonarqube.org/latest/instance-administration/security/), either through the API or the web service

Please also note that appropriate secrets (listed below) should be defined before the sonarqube pod is able to connect to the postgres database and is able to function properly.
Sonarqube needs three environment variables to access the postgres database.

SONARQUBE_JDBC_URL - URL for the postgres database to use

SONARQUBE_JDBC_USERNAME - username to access the postgres database

SONARQUBE_JDBC_PASSWORD - password for the above user

These need to be added in as Kubernetes secrets and mounted into the sonarqube pod <https://kubernetes.io/docs/concepts/configuration/secret/>.

To deploy Sonarqube, add the secrets, volumes, volumeMounts and env to set values for the above variables.
After the above secrets are incorporated into the sonarqube/ manifests, to deploy Sonarqube apply the kustomized manifest:

``
kubectl apply -k sonarqube/
``

### IMPORTANT  Default Admin Credentials

When installing SonarQube, a default user with administrator privileges is created automatically:

Login: admin
Password: admin

For security reasons the administrator password should be changed. This can be done from the SonarQube dashboard by following these steps:

1)Log in to the SonarQube dashboard.

2)Under the “User Name” dropdown menu in the upper right corner, click on “My Account”.

3)Select the “Security” tab.

4)Enter your old password and enter your new password twice to confirm the change.

5)Click the “Change password” button.

## Contributing

To contribute to Big Bang Sonarqube, see the [Contributing Guide](CONTRIBUTING.md).

## References

Docker image  <https://dcar.dsop.io/repomap/sonarsource/sonarqube/sonarqube8-community> SHA tag - sha256:7356de08b61c240302aa91040a7abea1ebea190afb2d14f35191e272ddbc712a
