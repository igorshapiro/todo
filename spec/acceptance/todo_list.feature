Feature: Todo list
  @javascript
  Scenario: All todo items are shown
    Given I'm a logged in user with 10 todos
    Then I should see all my todos
