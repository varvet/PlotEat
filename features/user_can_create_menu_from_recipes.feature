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

      And there is a menu

  Scenario: User creates menu from recipes
    Given I visit the site
    When I click "Add to menu" for "Granny's meatloaf"
      And I click "Add to menu" for "Summer salad"
      And  I visit menu page
    Then I should see "Granny's meatloaf"
    Then Show me the page
      And I should see "Summer salad"
