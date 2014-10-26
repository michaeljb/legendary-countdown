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
  select('N/A', from: 'villains1')
  select('N/A', from: 'villains2')
  select('N/A', from: 'villains3')
  select('N/A', from: 'villains4')

  villain_groups = villains.split(',')

  villain_groups.each_with_index do |group, index|
    select(group, from: "villains#{index + 1}")
  end
end

Given(/^the Henchmen Group\(s\) is\/are (.*)$/) do |henchmen|
  select('N/A', from: 'henchmen1')
  select('N/A', from: 'henchmen2')
  select('N/A', from: 'henchmen3')

  henchmen_groups = henchmen.split(',')

  henchmen_groups.each_with_index do |group, index|
    select(group, from: "henchmen#{index + 1}")
  end
end

When(/^I press submit$/) do
  click_button('submitButton')
end
