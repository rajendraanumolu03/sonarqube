FROM alpine AS fetcher

RUN apk add wget

WORKDIR /plugins

# Fetch oidc plugin
RUN wget https://github.com/vaulttec/sonar-auth-oidc/releases/download/v2.0.0/sonar-auth-oidc-plugin-2.0.0.jar

#
FROM sonarqube:8.4-community

# Fetch plugins and load into appropriate dir
ENV PLUGIN_DIR=/opt/sonarqube/extensions/plugins

# Fetch oidc plugin
COPY --from=fetcher /plugins/sonar-auth-oidc-plugin-2.0.0.jar ${PLUGIN_DIR}
