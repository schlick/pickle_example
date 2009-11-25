Feature: Pickle demonstration with Person objects
  In order to understand the value of using Pickle with Cucumber
  As a developer
  I want to see how Pickle works in a live demo

  Scenario: creating and asserting
    Given a person exists
    And another person exists with name: "Digby"
    And another person exists with name: "Ethyl", age: 27, employed: true
    Then a person should exist with name: "Ethyl"
    And 3 people should exist
    And the last person should be an adult
    And the 2nd person should not be employed

  Scenario: labels and associations  
    Given a company exists
    And another company: "rubyflare" exists 
    And a person exists with company: company "rubyflare"
    And another person exists with company: the first company
    Then the first person should be one of company: "rubyflare"'s employees

  Scenario: creating and asserting with multiline tables
    Given a company exists
    And another company: "rubyflare" exists
    And the following people exist:
      | name  | age | employed | company              |
      | Digby | 13  | false    | the first company    |
      | Ethyl | 27  | true     | company: "rubyflare" |
    Then the following people should exist:
      | name  | age |
      | Digby | 13  |
      | Ethyl | 27  |
    And the 2nd person should be one of company: "rubyflare"'s employees
    
  Scenario: email
    Given a person exists with email: "fake@address.com"
    When I activate that person
    Then 1 email should be delivered to fake@address.com
  
  Scenario: paths
    Given a company exists with name: "Ruby Flare"
    When I go to the companies page
    Then I should see "Listing companies"
    When I go to the company's page
    Then I should see "Ruby Flare"
    When I go to the users page
    Then I should see "Listing people"
    When I go to the company's employees page
    Then I should see "Listing employees"
  