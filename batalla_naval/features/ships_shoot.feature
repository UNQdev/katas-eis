Feature: Shooting

  Background:
	Given a battleship board with dimensions "5" x "5"
	And a large ship in position "3":"4" and "4":"4"

  Scenario: Shoot and hit
	Given I shoot to position "3":"4"
	Then I get "Ship hit"

  Scenario: Shoot and miss
	Given I shoot to position "3":"2"
	Then I get water

  Scenario: Shoot and sink
	Given I shoot to position "3":"4"
	Then I get "Ship hit"
	And I shoot again to position "4":"4"
	Then I get "Ship sinking"