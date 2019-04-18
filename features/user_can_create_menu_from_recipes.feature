Feature: User can create menu from recipes

  As a user
  in order of planning my shopping
  I want to be able to create a menu

  Background:
    Given these recipes exist
      | title               | description            |
      | Granny's meatloaf   | With love from Granny! |
      | Summer salad        | It will feed your soul |
      | Heart warming cacao | Nice and toasty        |

  Scenario: User creates menu from recipes
    Given I am on the "Granny's meatloaf" page
      And I click "Add to menu"
    Then I should see "Recipe was added to menu"
    When I am on the "Summar salad" page
      And I click "Add to menu"
    Then I should see "Recipe was added to menu"
    When I visit Menu page
    Then I sould see "Granny's meatloaf"
      And I should see "Summar salad"
      And I should not see "eart warming cacao"

