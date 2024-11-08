Feature: Furniture Shopping

  Scenario: Add an Upholstered Bed to the cart
    Given I am on the home page
    When I enter the Zip code "84115"
    And I click on the Furniture menu
    And I select Beds from the submenu
    And I choose Upholstered Beds
    Then I should see a list of upholstered beds
    When I select Avery Gray Queen Upholstered Bed
    And I click on the Add to Cart button
    Then the item should be added to my cart
    And I should see a confirmation message
    When I click on checkout button
    Then I shoud see Secure Checkout page
    When I click on continue as guest button
    Then I should see process order button
