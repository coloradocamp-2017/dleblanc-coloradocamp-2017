Feature: Address
  As a user,
  I can see an address field on listing nodes.

  @api
  Scenario:
    Given I am logged in as a user with the "administrator" role
    And I am at "/node/add/listing"
    And I fill in the following:
      | Title          | Listing 1       |
      | Body           | bodyish         |
      | Street address | 123 Anywhere St |
      | City           | Lansing         |
      | State          | NY              |
      | Zip code       | 14882           |
    And I press "Save and publish"
    Then I should see "123 Anywhere St"