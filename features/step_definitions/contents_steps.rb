Then(/^the Villain Deck should contain (\d+) (.*)$/) do |count, card|
  card.chomp!('s') if count.to_i == 1 && card.end_with?('s')

  if count.to_i == 0
    expect(find('.result')).not_to have_content("#{card}")
  else
    expect(find('.result')).to have_content("#{count} #{card}")
  end
end
