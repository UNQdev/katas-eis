Feature: Ships create

  Background:
    Given a battleship board with dimensions "5" x "5"

  Scenario: Create a small ship in a valid location
    When I create a small ship in position "3":"3"
    Then position "3":"3" is not empty

  Scenario: Create a small ship in a invalid location
    When I create a small ship in position "6":"6"
    Then position "6":"6" should not be valid