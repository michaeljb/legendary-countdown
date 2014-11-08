Then(/^the Villain Deck should contain (\d+) (.*)$/) do |count, card|
  card.chomp!('s') if count.to_i == 1 && card.end_with?('s')

  if count.to_i != 0
    expect(find('.result')).to have_content("#{count} #{card}")
  end
end

# if the other_count and other_type columns are blank, the step matches this
# regex rather than the one above that captures the count and the card
Then(/^the Villain Deck should contain  $/) do
end
