Feature: User can add ingredients to a recipe

  As a user
  in order to know what ingredients I need
  I need to be able to add ingredients to recipes

  Background:
    Given these recipes exist
      | title             | description            |
      | Granny's meatloaf | With love from Granny! |

  Scenario: User adds ingredients
    Given I visit the "Granny's meatloaf" page
      And I click "Edit recipe"
      And I fill in "Ingredient name" with "Minced meat"
      And I fill in "Ingredient quantity" with "2"
    When I click "Add ingredient"
    Then I should see "Granny's meatloaf"
      And I should see "2st Minced meat"
      And I should see "With love from Granny!"

