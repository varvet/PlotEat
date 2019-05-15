Feature: User can remove recipe from menu

  As a user
  in order for me to make changes to my menu
  I would like to be able to remove recipe from the menu

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
      And there is a menu
      And I visit the site
      And logged in as "groot@theguardians.com" password "iamgroot"

  Scenario: User removes recipe from menu
    Given I am on the menu page
    When I click "Remove from menu" for "Summer salad "
    Then I should see "Granny's meatloaf"
      And I sould not see "Summer salad"


