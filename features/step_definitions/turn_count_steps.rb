Then(/^the Villain Deck should empty in (\d+) to (\d+) turns$/) do |min, max|
  expect(find('.result')).to have_content("The Villain Deck will empty in #{min}-#{max} turns")
end

Then(/^the maximum winning turn count should be (\d+)$/) do |count|
  expect(find('.result')).to have_content("Maximum Winning Turn Count: #{count}")
end
