require_relative '../../app/models/battleship.rb'
<<<<<<< HEAD
=======
require_relative '../../app/models/ship.rb'
>>>>>>> 6182a1b2eb912781e115d649ed03494b7e97959c

Given(/^a battleship board with dimensions "(.*?)" x "(.*?)"$/) do |dimension, arg2|
  @battleship = Battleship.new dimension
end

When(/^I create a small ship in position "(.*?)":"(.*?)"$/) do |row,col|
<<<<<<< HEAD
	position = [[row,col]]
	@battleship.place_ship(Ship.new(position))
end

Then(/^position "(.*?)":"(.*?)" is not empty$/) do |row,col|
	position = [[row,col], false]
	expect(@battleship.ship_placed?(position)).to eq true
end

Then(/^position "(.*?)":"(.*?)" should not be valid$/) do |row,col|
	position = [[row,col]]
	ship = Ship.new(position)
	expect(@battleship.valid_positions?(ship)).to eq false
end

When(/^I create a small ship in invalid position "(.*?)":"(.*?)"$/) do |row,col|
	position = [[row,col]]
	@ship = Ship.new(position)
	expect(@battleship.valid_positions?(@ship)).to eq false
end

Then(/^it should raise a "(.*?)" error$/) do |error_msg|
  expect { @battleship.place_ship(@ship) }.to raise_error(error_msg)
=======
	positions = [[row,col]]
	@battleship.place_ship(Ship.new(positions))
end

Then(/^position "(.*?)":"(.*?)" is not empty$/) do |row,col|
	@battleship.ship_placed?([[row,col]])
>>>>>>> 6182a1b2eb912781e115d649ed03494b7e97959c
end

Then(/^position "(.*?)":"(.*?)" should not be valid$/) do |row,col|
	positions = [[row,col]]
	expect(@battleship.valid_positions?(Ship.new(positions))).to eq false
end

