Feature: login
  @javascript:
  Scenario: Non existing user signs-in
    Given I visit "/sessions" page
    When I enter my email address 
    And I click "Let me in"
    Then I become a user
    And I should see "/todo_items" page

  @javascript:
  Scenario: Existing user signs-in
    Given I'm an existing user
    When I visit "/sessions" page
    And I enter my email address
    And I click "let me in"
    Then I should see "/todo_items"
    And I should see all my todos
