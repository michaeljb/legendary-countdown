Given(/^I am on the page$/) do
  visit('/')
end

Given(/^the number of players is (\d+)$/) do |players|
  select(players, from: 'player-count')
end

Given(/^the Scheme is (.*)$/) do |scheme|
  select(scheme, from: 'schemes')
end

Given(/^the Mastermind is (.*)$/) do |mastermind|
  select(mastermind, from: 'mastermind')
end

Given(/^the Villain Group\(s\) is\/are (.*)$/) do |villains|
  select(villains, from: 'villains')
end

Given(/^the Henchmen Group\(s\) is\/are (.*)$/) do |henchmen|
  select(henchmen, from: 'henchmen')
end

When(/^I press submit$/) do
  click_button('submitButton')
end
