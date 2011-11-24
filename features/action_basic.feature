Feature: Actions
  In order to model the effect of an entity performing an action
  I want to be able to be able to apply the action to an entity
  
  Scenario:
  Given I have a personality of:
    | empathy  |   1   |
    | violence |   0   |
  And I know of one entity
  And I have feelings towards it currently as:
    | like  |   1   |
    | fear  |   0   |
  When the entity performs the action Murder
  Then my feelings toward the entity should be:
    | like  |   0   |
    | fear  |   1   |


