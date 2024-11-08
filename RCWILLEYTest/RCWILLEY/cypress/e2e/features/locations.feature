Feature: Location Verification

  Scenario: Verify the Location of the page
    Given I navigate to the rcwille homepage
    When I enter the Zip code "84115"
    And I click to locations link
    Then the locations should be:
      | Utah       |
      | Nevada     |
      | Idaho      |
      | California |
