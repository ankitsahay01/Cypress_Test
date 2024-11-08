Feature: Verify Protection Plans

  Background:
    Given I am on the home page
    When I enter the Zip code "84115"
    And I click on the Electronics menu
    And I select 4K TVs from the submenu
    And I click on the Add to Cart button of a 4K TV
    Then the item should be added to my cart
    And I should see "Protect Your Purchase" message

  Scenario: Ensure customers can select a 3 year protection plan
    When I select 3-Year TV Protection Plan
    Then I should see a "Protection Plan Applied" message
    When I click on checkout button
    Then I shoud see Secure Checkout page
    When I click on continue as guest button
    Then I should see process order button
    And User should be able to see the following labels in the contact info section of the Secure Checkout page
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
    And I select payment method as credit card
    And I enter the required card detail:
      | Field      | Value            |
      | ccnumfield | 5105105105105100 |
      | expDate    | 10/25            |
      | cvv        | 345              |
    And I click on process order button

  Scenario: Ensure customers can select a 5 year protection plan
    When I select 5-Year TV Protection Plan
    Then I should see a "Protection Plan Applied" message
    When I click on checkout button
    Then I shoud see Secure Checkout page
    When I click on continue as guest button
    Then I should see process order button
    And User should be able to see the following labels in the contact info section of the Secure Checkout page
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
    And I select payment method as credit card
    And I enter the required card detail:
      | Field      | Value            |
      | ccnumfield | 5105105105105100 |
      | expDate    | 10/25            |
      | cvv        | 345              |
    And I click on process order button
