Feature: Ships create

  Background:
    Given a battleship board with dimensions "5" x "5"

  Scenario: Create a small ship in a valid location
    When I create a small ship in position "3":"3"
    Then position "3":"3" is not empty

  Scenario: Create a small ship in a invalid location
    When I create a small ship in invalid position "6":"6"
    Then I get "Invalid position to place a ship" message

  Scenario: Create a large ship in a valid location
      When I create a large ship in position "3":"3" and "3":"4"
      Then positions "3":"3" and "3":"4" are not empty

  Scenario: Create a large ship in a invalid location
      When I create a large ship in invalid positions "6":"6" and "6":"5"
      Then I get "Invalid position to place a ship" message