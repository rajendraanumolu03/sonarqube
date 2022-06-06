# Start with the IronBank Image
FROM registry1.dso.mil/ironbank/sonarsource/sonarqube/sonarqube9-community:9.2-community
# Add needed Plugins
ADD https://github.com/dependency-check/dependency-check-sonar-plugin/releases/download/3.0.1/sonar-dependency-check-plugin-3.0.1.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-2.0.7/sonar-cxx-plugin-2.0.7.3119.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/vaulttec/sonar-auth-oidc/releases/download/v2.1.1/sonar-auth-oidc-plugin-2.1.1.jar /opt/sonarqube/extensions/plugins/
ADD https://github.com/OtherDevOpsGene/zap-sonar-plugin/releases/download/sonar-zap-plugin-2.3.0/sonar-zap-plugin-2.3.0.jar /opt/sonarqube/extensions/plugins/
USER root
RUN chown -R sonarqube:sonarqube /opt/sonarqube/extensions/plugins
USER sonarqube
