Then(/^the Villain Deck should contain (\d+) (.*)$/) do |count, card|
  card.chomp!('s') if count.to_i == 1 && card.end_with?('s')

  expect(find('.result')).to have_content("#{count} #{card}") if count.to_i > 0
end
