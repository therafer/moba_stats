Feature: User signs up

  Scenario: User signs up
    Given I am on the home page
    When I fill in "email" with "email@example.com"
    And I fill in "password" with "password"
    And I fill in "password_confirmation" with "password"
    And I click "Submit"
    Then I should be signed in
