require_relative '../../app/models/Battleship.rb'

Given(/^a battleship board with dimensions "(.*?)" x "(.*?)"$/) do |dimension, arg2|
  @battleship = Battleship.new dimension
end

Given(/^I create a small ship in position "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^position "(.*?)" is not empty$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
