Feature: User can log out

  As a user
  in order of keeping my account safe
  I would like to be able to close my session

  Background:
    Given we have the following users
      | email                  | password |
      | groot@theguardians.com | iamgroot |

  Scenario: User logs out
    Given I visit the site
    When I click "Log in"
      And I fill in "Email" with "groot@theguardians.com"
      And I fill in "Password" with "iamgroot"
      And I click "Submit"
    Then I should see "Welcome back!"
    When I click "Log out"
    Then I should be on the index page
      And I should see "See you!"
