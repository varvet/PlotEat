Feature: User can  list  ingredients

  As a user
  in order to know what ingredients I need
  my recipes need to list ingredients

  Scenario: User lists ingredients
    Given I visit the site
      And I click "Create recipe"
      And I fill in "Recipe title" with "Granny's meatloaf"
      And I fill in "Ingredient name" with "Minced meat"
      And I fill in "Ingredient quantity" with "2"
      And I fill in "Recipe description" with "With love from Granny!"
      And I click "Create"
    Then I should see "Granny's meatloaf"
      And I should see "2st Minced meat"
      And I should see "With love from Granny!"

