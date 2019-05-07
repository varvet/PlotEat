Feature: User can create shopping list from ingredients

  As a user
  in order of organising my shopping
  I would like to get a list of ingredients I need for the menu

  Background:

    Given we have the following users
      | email                   | password     |
      | groot@theguardians.com  | iamgroot     |
      | rocket@theguardians.com | watsaraccoon |

      And these recipes exist
      | title               | description            |
      | Granny's meatloaf   | With love from Granny! |
      | Summer salad        | It will feed your soul |
      | Heart warming cacao | Nice and toasty        |

      And "Granny's meatloaf" has these ingredients
      | name        | quantity |
      | Ground beef | 1        |
      | Bacon       | 2        |
      | Bread       | 4        |


      And "Summer salad" has these ingredients
      | name  | quantity |
      | Salad | 10       |
      | Mango | 1        |
      | Bread | 1        |

      And "groot@theguardians.com" has the following recipes in his menu
      | title             |
      | Granny's meatloaf |
      | Summer salad      |
      And I visit the site
      And logged in as "groot@theguardians.com" password "iamgroot"

  Scenario: User creates a shoppinglist
    Given I am on the menu page
      And I click "Create shoppinglist"
    Then I should see "Shoppinglist has been created"
      And the shoppinglist should contain "quantity: 1 item: Minced meat"
      And the shoppinglist should contain "quantity: 2 item: Bacon"
      And the shoppinglist should contain "quantity: 5 item: Bread"
      And the shoppinglist should contain "quantity: 10 item: Salad"
      And the shoppinglist should contain "quantity: 1 item: Mango"
    When I am on the shoppinglist page
    Then I should see "quantity: 1 item: Minced meat"
    Then I should see "quantity: 2 item: Bacon"
    Then I should see "quantity: 5 item: Bread"
    Then I should see "quantity: 10 item: Salad"
    Then I should see "quantity: 1 item: Mango"







