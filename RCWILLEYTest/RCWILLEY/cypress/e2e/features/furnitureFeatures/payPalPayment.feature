Feature: PayPal payment version

  Scenario: Checkout with Valid PayPal Account
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
    Then User should be able to see the following labels in the contact info section of the Secure Checkout page
      | First Name |
      | Last Name  |
      | Phone      |
      | Email      |
    And Enter the required contact info:
      | Field        | Value        |
      | firstName    | Ravi         |
      | lastName     | Kak          |
      | contactPhone | 646-543-9448 |
      | contactEmail | rv@gmail.com |
    And User should be able to see the following labels in the billing/ delivery Address section of the Secure Checkout page
      | Street Address              |
      | Street Address 2 (optional) |
      | City                        |
      | State                       |
      | Zip Code                    |
    And Enter the required billing info:
      | Field           | Value                   |
      | billingAddress1 | 1501 Secret Ravine Pkwy |
      | billingAddress2 | Kak                     |
      | billingCity     | Roseville               |
      | billingState    | CA                      |
      | billingZip      | 95661                   |
    And I click on yes button model
    And I click on cancel button model
    And I select payment method as paypal
    Then I should see pay with paypal button
    When I click on pay with paypal button
    Then I should see Log in to your PayPal Account
