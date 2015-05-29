require_relative '../../app/models/battleship.rb'

Given(/^a battleship board with dimensions "(.*?)" x "(.*?)"$/) do |dimension, col1|
  	@battleship = Battleship.new dimension
end

When(/^I create a small ship in position "(.*?)":"(.*?)"$/) do |row,col|
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

When(/^I create a large ship in position "(.*?)":"(.*?)" and "(.*?)":"(.*?)"$/) do |row1, col1, row2, col2|
	positions = [[row1,col1], [row2,col2]]
	@battleship.place_ship(Ship.new(positions))
end

Then(/^positions "(.*?)":"(.*?)" and "(.*?)":"(.*?)" are not empty$/) do |row1, col1, row2, col2|
  	position_one = [[row1,col1], false]
  	position_two = [[row2,col2], false]
  	expect(@battleship.ship_placed?(position_one)).to eq true
  	expect(@battleship.ship_placed?(position_two)).to eq true
end

When(/^I create a large ship in invalid positions "(.*?)":"(.*?)" and "(.*?)":"(.*?)"$/) do |row1, col1, row2, col2|
  	positions = [[row1,col1],[row2,col2]]
	@ship = Ship.new(positions)
	expect(@battleship.valid_positions?(@ship)).to eq false
end

And(/^a large ship in position "(.*?)":"(.*?)" and "(.*?)":"(.*?)"$/) do |row1, col1, row2, col2|
  	positions = [[row1,col1], [row2,col2]]
	@ship = Ship.new(positions)
	@battleship.place_ship(@ship)
end

When(/^I shoot to position "(.*?)":"(.*?)"$/) do |row,col|
  @position = [row,col]
  @shoot_result = @ship.somebody_shoot(@position)
end

Then(/^I get "(.*?)"$/) do |shoot_msg|
  expect(@shoot_result).to eq shoot_msg
end

Then(/^I get water$/) do
  expect(@ship.somebody_shoot(@position)).to eq nil
end

Then(/^I get "(.*?)" message$/) do |creation_msg|
  expect(@battleship.place_ship(@ship)).to eq creation_msg
end