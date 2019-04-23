Feature: User can create menu from recipes

  As a user
  in order of planning my week
  I want to be able to create a menu

  Background:
    Given these recipes exist
      | title               | description            |
      | Granny's meatloaf   | With love from Granny! |
      | Summer salad        | It will feed your soul |
      | Heart warming cacao | Nice and toasty        |

  Scenario: User creates menu from recipes
    Given I visit the site
    When I click "Add to menu" for "Granny's meatloaf"
      And I select "Monday"
    Then I should see "Recipe was added to menu"
    When I click "Add to menu" for "Summer salad"
      And I select "Tuesday"
    Then I should see "Recipe was added to menu"
    Then I should see "Monday, Granny's meatloaf"
      And I should see "Tuesday, Summar salad"

