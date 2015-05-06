require_relative '../../app/models/battleship.rb'
require_relative '../../app/models/ship.rb'

Given(/^a battleship board with dimensions "(.*?)" x "(.*?)"$/) do |dimension, arg2|
  @battleship = Battleship.new dimension
end

When(/^I create a small ship in position "(.*?)":"(.*?)"$/) do |row,col|
	positions = [[row,col]]
	@battleship.place_ship(Ship.new(positions))
end

Then(/^position "(.*?)":"(.*?)" is not empty$/) do |row,col|
	@battleship.ship_placed?([[row,col]])
end

Then(/^position "(.*?)":"(.*?)" should not be valid$/) do |row,col|
	positions = [[row,col]]
	expect(@battleship.valid_positions?(Ship.new(positions))).to eq false
end

