Feature: User can log in

  As a user
  in order having personalised experience
  I would like to be able to log in

  Background:
    Given the following user exist
      | email                  | password |
      | groot@theguardians.com | iamgroot |

  Scenario: User can log in with valid credentials
    Given I visit the site
    When I click "Login"
      And I fill in "Email" with "groot@theguardians.com"
      And I fill in "Password" with "iamgroot"
      And I click "Log in"
    Then I should see "???"

  Scenario: User provides wrong password
    Given I visit the site
    When I click "Login"
      And I fill in "Email" with "groot@theguardians.com"
      And I fill in "Password" with "wearegroot"
      And I click "Log in"
    Then I should see "???"

  Scenario: User fails to provide email
    Given I visit the site
    When I click "Login"
      And I fill in "Email" with " "
      And I fill in "Password" with "iamgroot"
      And I click "Log in"
    Then I should see "???"

  Scenario: User fails to provide valid email
    Given I visit the site
    When I click "Login"
      And I fill in "Email" with "groot"
      And I fill in "Password" with "iamgroot"
      And I click "Log in"
    Then I should see "???"