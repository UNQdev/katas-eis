Feature: Ships create

  Background:
    Given a battleship board with dimensions "5" x "5"

  Scenario: Create a small ship in a valid location
    When I create a small ship in position "3":"3"
    Then position "3":"3" is not empty

  Scenario: Create a small ship in a invalid location
<<<<<<< HEAD
    When I create a small ship in invalid position "6":"6"
    Then it should raise a "Invalid position to place a ship" error
=======
    When I create a small ship in position "6":"6"
    Then position "6":"6" should not be valid
>>>>>>> 6182a1b2eb912781e115d649ed03494b7e97959c
