# Keycloak integration for Sonarqube

1. Login to Sonarqube with default admin credentials username: admin password: admin
2. In Adminstration->General  
   set Server base URL to Sonarqube URL  
   (for ex: https:/sonarqube.dsop.io) without a trailing /
3. On a different tab on the browser, login to  keycloak realm
   - From Clients choose the sonarqube client and note the Client id
     - Set Root URL to empty string
     - Set Valid Redirect URI to  
        ```https://<sonarqube url>/*```  
        (for ex: https://sonarqube.dsop.io/*)
     - Set Base URI to Sonarqube URL  
       (for ex: https://sonarqube.dsop.io) without a trailing /
   - On Clients-<Sonarqube Client>->Credentials regenerate the secret and note it down
   - On Clients-<Sonarqube Client>->ClientScopes->Sonarqube->Mappers
     - Click Add Builtin and add "groups" scope
   - On Users, click "Add User" and enter
     - Username - <username of the admin user>
     - email - must have @admin.mil id
     - First name
     - Last name
     - Email Verified - On
     - Save
   - On Users, on the Credentials tab and set password
   - On Users, on the Groups tab and join Impact Level2 Authorized and System Admins IL2
4. In Administration-> Security Set OpenID Connect to enabled
   - Issuer URI to https://keycloak.fences.dsop.io/auth/realms/baby-yoda
   - ClientId noted from keycloak above
   - ClientSecret regeneretaed from keycloak above
   - Scopes - openid Sonarqube
5. Logout of sonarqube and log back in with the username created above by clicking on oidc login
6. Logout of sonarqube and log back in with the username admin and password admin
7. Go to Administration->Security->Users and add username created above to sonar-admin group
8. Go to Administration->Security->Users and delete admin user
9. Logout of Sonarqune and login with username and password created in keycloak

