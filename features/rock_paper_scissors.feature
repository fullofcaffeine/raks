Feature: Rock, Paper, Scissors

  In order to have some instant gratification
  As a bored individual
  I want to play Rock, Paper, Scissors!

 Permutations reference:
    | User gesture | CPU gesture | expected result |
    |    paper     |    rock     |     User wins   |
    |    paper     |    paper    |       draw      |
    |    paper     |   scissor   |     CPU wins    |
    |    rock      |    paper    |     CPU wins    |
    |    rock      |    rock     |       draw      |
    |    rock      |   scissor   |     User wins   |
    |   scissor    |    paper    |     User wins   |
    |   scissor    |    rock     |     CPU  wins   |
    |   scissor    |   scissor   |       draw      |
    


  Scenario: User chooses paper, CPU chooses rock
    Given I am on the new game page
    When I select "Paper" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "rock"
    And I press "Play"
    Then I should be on the results page 
    And I should see "You won!"

  @pending  
  Scenario: User chooses paper, CPU chooses paper
    Given I am on the new game page
    When I select "Paper" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "paper"
    And I press "Play"
    Then I should be on the results page
    And I should see "Draw!"

  Scenario: User chooses paper, CPU chooses scissor
    Given I am on the new game page
    When I select "Paper" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "scissor"
    And I press "Play"
    Then I should be on the results page
    And I should see "You lost :("

  Scenario: User chooses rock, CPU chooses paper
    Given I am on the new game page
    When I select "Rock" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "paper"
    And I press "Play"
    Then I should be on the results page
    And I should see "You lost :("

  Scenario: User chooses rock, CPU chooses rock
    Given I am on the new game page
    When I select "Rock" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "rock"
    And I press "Play"
    Then I should be on the results page
    And I should see "Draw!"


  Scenario: User chooses rock, CPU chooses scissor 
    Given I am on the new game page
    When I select "Rock" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "scissor"
    And I press "Play"
    Then I should be on the results page
    And I should see "You won!"

  Scenario: User chooses scissor, CPU chooses paper
    Given I am on the new game page
    When I select "Scissor" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "paper"
    And I press "Play"
    Then I should be on the results page
    And I should see "You won!"

  Scenario: User chooses scissor, CPU chooses rock
    Given I am on the new game page
    When I select "Scissor" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "Rock"
    And I press "Play"
    Then I should be on the results page
    And I should see "You lost :("

  Scenario: User chooses scissor, CPU chooses scissor 
    Given I am on the new game page
    When I select "Scissor" from "game_user_gesture_attributes_gesture_type"
    And the CPU chooses "scissor"
    And I press "Play"
    Then I should be on the results page
    And I should see "Draw!"


