Feature: User can log in

  As a user
  in order having personalised experience
  I would like to be able to log in

  Background:
    Given we have the following users
      | email                  | password |
      | groot@theguardians.com | iamgroot |

  Scenario: User can log in with valid credentials
    Given I visit the site
    When I click "Log in"
      And I fill in "Email" with "groot@theguardians.com"
      And I fill in "Password" with "iamgroot"
      And I click "Submit"
    Then I should see "Welcome back!"

  Scenario: User provides wrong password
    Given I visit the site
    When I click "Log in"
      And I fill in "Email" with "groot@theguardians.com"
      And I fill in "Password" with "wearegroot"
      And I click "Submit"
    Then I should see "E-mail and/or password is incorrect."

  Scenario: User fails to provide email
    Given I visit the site
    When I click "Log in"
      And I fill in "Email" with " "
      And I fill in "Password" with "iamgroot"
      And I click "Submit"
    Then I should see "E-mail and/or password is incorrect."

  Scenario: User fails to provide valid email
    Given I visit the site
    When I click "Log in"
      And I fill in "Email" with "groot"
      And I fill in "Password" with "iamgroot"
      And I click "Submit"
    Then I should see "E-mail and/or password is incorrect."
