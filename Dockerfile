# Start with the IronBank Image
FROM registry1.dso.mil/ironbank/sonarsource/sonarqube/sonarqube8-community:8.7.1-community
# Add needed Plugins
ADD https://github.com/dependency-check/dependency-check-sonar-plugin/releases/download/1.2.6/sonar-dependency-check-plugin-1.2.6.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.2/sonar-c-plugin-1.3.2.1853.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.2/sonar-cxx-plugin-1.3.2.1853.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/dmeiners88/sonarqube-prometheus-exporter/releases/download/v1.0.0-SNAPSHOT-2018-07-04/sonar-prometheus-exporter-1.0.0-SNAPSHOT.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/vaulttec/sonar-auth-oidc/releases/download/v2.0.0/sonar-auth-oidc-plugin-2.0.0.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/OtherDevOpsGene/zap-sonar-plugin/releases/download/sonar-zap-plugin-2.0.2/sonar-zap-plugin-2.0.2.jar /opt/sonarqube/extensions/plugins/
USER root
RUN chown -R sonarqube:sonarqube /opt/sonarqube/extensions/plugins
USER sonarqube
