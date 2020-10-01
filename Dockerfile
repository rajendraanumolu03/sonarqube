FROM alpine AS fetcher

RUN apk add wget

WORKDIR /plugins

# Fetch oidc plugin
RUN wget --quiet https://github.com/vaulttec/sonar-auth-oidc/releases/download/v2.0.0/sonar-auth-oidc-plugin-2.0.0.jar
RUN wget --quiet https://github.com/dependency-check/dependency-check-sonar-plugin/releases/download/1.2.6/sonar-dependency-check-plugin-1.2.6.jar
RUN wget --quiet https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.2/sonar-c-plugin-1.3.2.1853.jar
RUN wget --quiet https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.2/sonar-cxx-plugin-1.3.2.1853.jar
RUN ls -al

#
FROM registry.dsop.io/platform-one/apps/sonarqube/sonarqube:8.3-community

# Fetch plugins and load into appropriate dir
ENV PLUGIN_DIR=/opt/sonarqube/extensions/plugins

# Fetch oidc plugin
COPY --from=fetcher /plugins/*.jar ${PLUGIN_DIR}/
