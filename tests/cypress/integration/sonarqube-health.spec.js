// needs to be fixed
describe('Basic Sonarqube', function() {
  it('Check Sonarqube is accessible', function() {
  cy.visit(Cypress.env('sonarqube_url'))
  cy.get('input[name="login"]').type(Cypress.env('sonarqube_user'))
  cy.get('input[name="password"]').type(Cypress.env('sonarqube_password'))
  cy.contains("Log in").click()
  cy.contains('Update your password') 
  })
})
