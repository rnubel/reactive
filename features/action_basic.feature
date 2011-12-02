Feature: Actions
  In order to model the effect of an entity performing an action
  I want to be able to be able to apply the action to an entity
  
  Scenario: Full-intensity action
    Given I have a personality of:
      | empathy  |   1   |
      | violence |   0   |
    And I know of an entity Bob
    And I know of an entity Bill
    And I have feelings towards Bob currently as:
      | like  |   1   |
      | fear  |   0   |
    And I have feelings towards Bill currently as:
      | like  |   1   |
      | fear  |   0   |
    When Bob performs the action Murder on Bill
    Then the action should have the effect on Bob as:
      | like  |   -1   |
      | fear  |   1   |
    When I react to the action
    Then my feelings toward Bob should be:
      | like  |   0   |
      | fear  |   1   |


