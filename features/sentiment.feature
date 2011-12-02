Feature: Sentiment
  In order to encapsulate the complex Feelings model into a simple, static interface
  I want to be able to be able to compute a Sentiment for each Entity
  
  Scenario: Liked entity
    Given I have a personality of:
      | empathy  |   1   |
      | violence |   0   |
    And I know of an entity Bob
    And I have feelings towards Bob currently as:
      | like  |   1   |
      | fear  |   0   |
    Then my sentiment towards Bob should be 1

