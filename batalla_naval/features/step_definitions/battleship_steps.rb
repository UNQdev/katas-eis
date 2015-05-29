require_relative '../../app/models/battleship.rb'

Given(/^a battleship board with dimensions "(.*?)" x "(.*?)"$/) do |dimension, col1|
  visit '/'
  fill_in 'dimension', with: dimension
  find('[type=submit]').click
end

When(/^I create a small ship in position "(.*?)":"(.*?)"$/) do |row,col|
  fill_in 'x_pos', with: row
  fill_in 'y_pos', with: col
  find('#place_small').click
end

Then(/^position "(.*?)":"(.*?)" is not empty$/) do |row,col|
  page.should have_content('Ship placed')
end

When(/^I create a small ship in invalid position "(.*?)":"(.*?)"$/) do |row,col|
  fill_in 'x_pos', with: row
  fill_in 'y_pos', with: col
  find('#place_small').click
  page.should have_content('Invalid position to place a ship')
end

When(/^I create a large ship in position "(.*?)":"(.*?)" and "(.*?)":"(.*?)"$/) do |row1, col1, row2, col2|
  pending
end

Then(/^positions "(.*?)":"(.*?)" and "(.*?)":"(.*?)" are not empty$/) do |row1, col1, row2, col2|
  pending
end

When(/^I create a large ship in invalid positions "(.*?)":"(.*?)" and "(.*?)":"(.*?)"$/) do |row1, col1, row2, col2|
  pending
end

And(/^a large ship in position "(.*?)":"(.*?)" and "(.*?)":"(.*?)"$/) do |row1, col1, row2, col2|
  pending
end

When(/^I shoot to position "(.*?)":"(.*?)"$/) do |row,col|
  pending
end

Then(/^I get "(.*?)"$/) do |shoot_msg|
  pending
end

Then(/^I get water$/) do
  pending
end

Then(/^I get "(.*?)" message$/) do |creation_msg|
  page.should have_content creation_msg
end