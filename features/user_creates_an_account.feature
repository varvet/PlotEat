Feature: User creates an account

  As a user
  in order to personalise my experience
  I would like to be able to sign up for a personal account

  Scenario: User can sign up
    Given I visit the site
    When I click "Sign Up"
      And I fill in "Email" with "groot@thegardians.com"
      And I fill in "Password" with "iamgroot"
      And I fill in "Password confirmation" with "iamgroot"
      And I fill in "Name" with "Groot TheFloraColossi"
      And I click "Sign up"
    Then I should see "Welcome! You have signed up successfully"
      And the name for "groot@thegardians.com" should be "Groot TheFloraColossi"