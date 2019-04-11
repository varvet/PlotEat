Feature: User can create recipe

  As a user
  in order of choosing meals
  I would like to be able to create recipe

  Scenario: User creates recepie
    Given I visit the site
    When I click "Create recipe"
      And I fill in "Recipe title" with "Granny's meatloaf"
      And I fill in "Recipe description" with "With love from Granny!"
      And I click "Create"
    Then I should see "Granny's meatloaf"
      And I should see "With love from Granny!"
