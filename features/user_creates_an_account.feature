Feature: User creates an account

  As a user
  in order to personalise my experience
  I would like to be able to sign up for a personal account

  Scenario: User can sign up
    Given I visit the site
    When I click "Sign up"
      And I fill in "Email" with "groot@theguardians.com"
      And I fill in "Password" with "iamgroot"
      And I fill in "Password confirmation" with "iamgroot"
      And I click "Register"
    Then I should see "Welcome! You have signed up successfully"
