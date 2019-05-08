Feature: User can create recipe

  As a user
  in order of choosing meals
  I would like to be able to create recipe

  Background:
    Given we have the following users
      | email                   | password     |
      | groot@theguardians.com  | iamgroot     |
      | rocket@theguardians.com | watsaraccoon |
      And I visit the site

  Scenario: User creates recepie
      And logged in as "groot@theguardians.com" password "iamgroot"
    When I click "Create recipe"
      And I fill in "Recipe title" with "Granny's meatloaf"
      And I fill in "Recipe description" with "With love from Granny!"
      And I click "Create"
    Then I should see "Granny's meatloaf"
      And I should see "With love from Granny!"

  Scenario: User wants to create recipe without logging in
    Given I click "Create recipe"
    Then I should be on the log in page
      And I should see "You have to authenticate to access this page."
