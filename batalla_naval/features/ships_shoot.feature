Feature: Shooting

  Background:
	Given a battleship board with dimensions "5" x "5"
	And a large ship in position "3":"4" and "4":"4"

  Scenario: Shoot and hit
	When I shoot to position "3":"4"
	Then I get "Ship hit"

  Scenario: Shoot and miss
	When I shoot to position "3":"2"
	Then I get water

  Scenario: Shoot and sink
	When I shoot to position "3":"4"
	Then I get "Ship hit"
	And I shoot to position "4":"4"
	Then I get "Ship sinking"