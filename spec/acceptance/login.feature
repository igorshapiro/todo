Feature: login
  @javascript
  Scenario: Non existing user signs-in
    Given I'm a visitor without an account
    When I enter my email in email field
    And I click "Let me in"
    Then I should see "My TODO List" text
    And I should have an account

  @javascript
  Scenario: Existing user signs-in
    Given I'm a visitor with an account
    When I enter my email in email field
    And I click "Let me in"
    Then I should see "My TODO List" text
    And I should see all my todos
