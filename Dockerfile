FROM alpine AS fetcher

RUN apk add wget

WORKDIR /plugins

# Fetch oidc plugin
RUN wget --quiet https://github.com/vaulttec/sonar-auth-oidc/releases/download/v2.0.0/sonar-auth-oidc-plugin-2.0.0.jar
RUN wget --quiet https://github.com/dependency-check/dependency-check-sonar-plugin/releases/download/1.2.6/sonar-dependency-check-plugin-1.2.6.jar
RUN wget --quiet https://github.com/SonarSource/SonarTS/releases/download/v1.9.0/sonar-typescript-plugin-1.9.0.3766.jar
RUN wget --quiet https://github.com/SonarSource/SonarJS/releases/download/5.2.1.7778/sonar-javascript-plugin-5.2.1.7778.jar
RUN wget --quiet https://github.com/SonarSource/sonar-dotnet/releases/download/8.0.0.9566/sonar-csharp-plugin-8.0.0.9566.jar
RUN wget --quiet https://github.com/SonarSource/sonar-go/releases/download/1.1.1.2000/sonar-go-plugin-1.1.1.2000.jar
RUN wget --quiet https://binaries.sonarsource.com/Distribution/sonar-python-plugin/sonar-python-plugin-2.0.0.5043.jar
RUN wget --quiet https://binaries.sonarsource.com/Distribution/sonar-java-plugin/sonar-java-plugin-5.14.0.18788.jar
RUN wget --quiet https://binaries.sonarsource.com/Distribution/sonar-jacoco-plugin/sonar-jacoco-plugin-1.0.2.475.jar
RUN wget --quiet https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.2/sonar-c-plugin-1.3.2.1853.jar
RUN wget --quiet https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.2/sonar-cxx-plugin-1.3.2.1853.jar
RUN ls -al

#
FROM registry.dsop.io/platform-one/apps/sonarqube/sonarqube:8.3-community

# Fetch plugins and load into appropriate dir
ENV PLUGIN_DIR=/opt/sonarqube/extensions/plugins

# Fetch oidc plugin
COPY --from=fetcher /plugins/*.jar ${PLUGIN_DIR}/
