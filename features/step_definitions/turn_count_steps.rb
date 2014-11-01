Then(/^the Villain Deck should empty in (.*) turns$/) do |turns|
  expect(find('.result'))
    .to have_content("The Villain Deck will empty in #{turns} turns")
end

Then(/^the maximum winning turn should be (\d+)$/) do |turn|
  expect(find('.result')).to have_content("Maximum Winning Turn: #{turn}")
end
